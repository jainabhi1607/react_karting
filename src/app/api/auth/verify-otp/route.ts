import { NextRequest, NextResponse } from "next/server";
import mongoose from "mongoose";
import dbConnect from "@/lib/mongodb";
import UserLoginCode from "@/models/UserLoginCode";
import { createSession } from "@/lib/auth";

const MAX_OTP_ATTEMPTS = 5;

export async function POST(req: NextRequest) {
  try {
    const { userId, otp } = await req.json();

    if (!userId || !otp || !mongoose.Types.ObjectId.isValid(userId)) {
      return NextResponse.json(
        { error: "Invalid request" },
        { status: 400 }
      );
    }

    await dbConnect();

    // Check if there's an active OTP for this user
    const activeCode = await UserLoginCode.findOne({
      user_id: userId,
      status: 1,
      expiry_time: { $gt: new Date() },
    }).lean();

    if (!activeCode) {
      return NextResponse.json(
        { error: "Invalid or expired OTP. Please try again." },
        { status: 401 }
      );
    }

    // Check brute force — too many wrong attempts
    if ((activeCode.attempts || 0) >= MAX_OTP_ATTEMPTS) {
      await UserLoginCode.updateOne({ _id: activeCode._id }, { $set: { status: 3 } });
      return NextResponse.json(
        { error: "Too many attempts. Please request a new code." },
        { status: 429 }
      );
    }

    // Wrong OTP — increment attempts
    if (activeCode.otp !== otp) {
      await UserLoginCode.updateOne({ _id: activeCode._id }, { $inc: { attempts: 1 } });
      return NextResponse.json(
        { error: "Invalid or expired OTP. Please try again." },
        { status: 401 }
      );
    }

    // Correct OTP — atomically mark as used
    await UserLoginCode.updateOne({ _id: activeCode._id }, { $set: { status: 2 } });

    // Create session
    await createSession(userId, activeCode.remember_me);

    return NextResponse.json({
      success: true,
      message: "Login successful",
    });
  } catch (error) {
    console.error("OTP verification error:", error);
    return NextResponse.json(
      { error: "Something went wrong. Please try again." },
      { status: 500 }
    );
  }
}
