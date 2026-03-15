import { NextRequest, NextResponse } from "next/server";
import mongoose from "mongoose";
import bcrypt from "bcryptjs";
import dbConnect from "@/lib/mongodb";
import UserLoginCode from "@/models/UserLoginCode";
import { createSession, decryptToken } from "@/lib/auth";

const MAX_OTP_ATTEMPTS = 5;

export async function POST(req: NextRequest) {
  try {
    const { token, otp } = await req.json();

    if (!token || typeof token !== "string") {
      return NextResponse.json(
        { error: "Invalid request" },
        { status: 400 }
      );
    }

    const userId = decryptToken(token);

    if (!userId || !otp || typeof otp !== "string" || !/^\d{6}$/.test(otp) || !mongoose.Types.ObjectId.isValid(userId)) {
      return NextResponse.json(
        { error: "Invalid request" },
        { status: 400 }
      );
    }

    await dbConnect();

    // Atomically increment attempts and fetch the code in one operation.
    // Prevents race conditions where concurrent requests bypass the brute force limit.
    const activeCode = await UserLoginCode.findOneAndUpdate(
      {
        user_id: userId,
        status: 1,
        expiry_time: { $gt: new Date() },
      },
      { $inc: { attempts: 1 } },
      { new: true }
    ).lean();

    if (!activeCode) {
      return NextResponse.json(
        { error: "Invalid or expired OTP. Please try again." },
        { status: 401 }
      );
    }

    // Check brute force — too many wrong attempts (post-increment check)
    if (activeCode.attempts > MAX_OTP_ATTEMPTS) {
      await UserLoginCode.updateOne({ _id: activeCode._id }, { $set: { status: 3 } });
      return NextResponse.json(
        { error: "Too many attempts. Please request a new code." },
        { status: 429 }
      );
    }

    // Compare OTP using bcrypt (timing-safe)
    const isMatch = await bcrypt.compare(otp, activeCode.otp);
    if (!isMatch) {
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
