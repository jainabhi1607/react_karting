import { NextRequest, NextResponse } from "next/server";
import mongoose from "mongoose";
import dbConnect from "@/lib/mongodb";
import User from "@/models/User";
import UserLoginCode from "@/models/UserLoginCode";
import { sendOTPEmail } from "@/lib/email";
import { randomInt } from "crypto";

export async function POST(req: NextRequest) {
  try {
    const { userId } = await req.json();

    if (!userId || !mongoose.Types.ObjectId.isValid(userId)) {
      return NextResponse.json(
        { error: "Invalid request" },
        { status: 400 }
      );
    }

    await dbConnect();

    const user = await User.findById(userId).select("email name status").lean();
    if (!user) {
      return NextResponse.json(
        { error: "User not found" },
        { status: 404 }
      );
    }

    if (user.status !== 1) {
      return NextResponse.json(
        { error: "Your account is not active." },
        { status: 403 }
      );
    }

    // Preserve remember_me from the existing OTP before expiring it
    const existingCode = await UserLoginCode.findOne(
      { user_id: userId, status: 1 },
      { remember_me: 1 }
    ).sort({ _id: -1 }).lean();
    const rememberMe = existingCode?.remember_me ?? false;

    // Expire existing OTPs
    await UserLoginCode.updateMany(
      { user_id: userId, status: 1 },
      { status: 3 }
    );

    // Generate cryptographically secure 6-digit OTP
    const otp = randomInt(100000, 999999).toString();

    // Send email first — only persist OTP after confirmed delivery
    await sendOTPEmail(user.email || "", otp, user.name || "User");

    await UserLoginCode.create({
      user_id: userId,
      otp,
      expiry_time: new Date(Date.now() + 5 * 60 * 1000),
      status: 1,
      remember_me: rememberMe,
    });

    return NextResponse.json({
      success: true,
      message: "OTP resent to your email",
    });
  } catch (error) {
    console.error("Resend OTP error:", error);
    return NextResponse.json(
      { error: "Something went wrong. Please try again." },
      { status: 500 }
    );
  }
}
