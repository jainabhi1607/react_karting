import { NextRequest, NextResponse } from "next/server";
import mongoose from "mongoose";
import bcrypt from "bcryptjs";
import dbConnect from "@/lib/mongodb";
import User from "@/models/User";
import UserLoginCode from "@/models/UserLoginCode";
import { sendOTPEmail } from "@/lib/email";
import { randomInt } from "crypto";
import { decryptToken } from "@/lib/auth";

export async function POST(req: NextRequest) {
  try {
    const { token } = await req.json();

    if (!token || typeof token !== "string") {
      return NextResponse.json(
        { error: "Invalid request" },
        { status: 400 }
      );
    }

    const userId = decryptToken(token);

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

    // Find active, non-expired OTP and check resend limit
    const existingCode = await UserLoginCode.findOne(
      { user_id: userId, status: 1, expiry_time: { $gt: new Date() } },
      { remember_me: 1, resend_count: 1 }
    ).sort({ _id: -1 }).lean();

    if (!existingCode) {
      return NextResponse.json(
        { error: "No active login session. Please start over." },
        { status: 400 }
      );
    }

    const MAX_RESENDS = 3;
    if ((existingCode.resend_count || 0) >= MAX_RESENDS) {
      return NextResponse.json(
        { error: "Too many resend attempts. Please start over." },
        { status: 429 }
      );
    }

    const rememberMe = existingCode.remember_me ?? false;
    const resendCount = (existingCode.resend_count || 0) + 1;

    // Expire existing OTPs
    await UserLoginCode.updateMany(
      { user_id: userId, status: 1 },
      { status: 3 }
    );

    // Generate cryptographically secure 6-digit OTP
    const otp = randomInt(100000, 1000000).toString();
    const otpHash = await bcrypt.hash(otp, 8);

    // Send email first — only persist OTP after confirmed delivery
    await sendOTPEmail(user.email || "", otp, user.name || "User");

    await UserLoginCode.create({
      user_id: userId,
      otp: otpHash,
      expiry_time: new Date(Date.now() + 5 * 60 * 1000),
      status: 1,
      remember_me: rememberMe,
      resend_count: resendCount,
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
