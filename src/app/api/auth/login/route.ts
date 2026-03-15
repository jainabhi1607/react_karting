import { NextRequest, NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import { randomInt } from "crypto";
import dbConnect from "@/lib/mongodb";
import User from "@/models/User";
import UserLoginCode from "@/models/UserLoginCode";
import { sendOTPEmail } from "@/lib/email";
import { encryptToken } from "@/lib/auth";

export async function POST(req: NextRequest) {
  try {
    const { email, password, rememberMe } = await req.json();

    if (!email || !password) {
      return NextResponse.json(
        { error: "Email and password are required" },
        { status: 400 }
      );
    }

    await dbConnect();

    // Find user by email using a collation query instead of $regex.
    // The case-insensitive collation index (strength: 2) on the email field
    // means this resolves via an index seek rather than a full collection scan.
    // $regex with the "i" flag cannot use a standard B-tree index.
    const user = await User.findOne({ email: email.trim().toLowerCase() })
      .collation({ locale: "en", strength: 2 })
      .select("_id status password name email")
      .lean();

    if (!user) {
      return NextResponse.json(
        { error: "Invalid email or password" },
        { status: 401 }
      );
    }

    // Check if account is active
    if (user.status !== 1) {
      return NextResponse.json(
        { error: "Your account is not active. Please contact support." },
        { status: 403 }
      );
    }

    // Verify password (bcrypt hash from PHP)
    const isValidPassword = await bcrypt.compare(password, user.password || "");
    if (!isValidPassword) {
      return NextResponse.json(
        { error: "Invalid email or password" },
        { status: 401 }
      );
    }

    // Generate cryptographically secure 6-digit OTP
    const otp = randomInt(100000, 1000000).toString();
    const otpHash = await bcrypt.hash(otp, 8);

    // Expire any existing OTPs for this user
    await UserLoginCode.updateMany(
      { user_id: user._id, status: 1 },
      { status: 3 }
    );

    // Send email first — only persist OTP after confirmed delivery
    await sendOTPEmail(user.email || "", otp, user.name || "User");

    await UserLoginCode.create({
      user_id: user._id,
      otp: otpHash,
      expiry_time: new Date(Date.now() + 5 * 60 * 1000),
      status: 1,
      remember_me: rememberMe === true,
    });

    return NextResponse.json({
      success: true,
      message: "OTP sent to your email",
      token: encryptToken(user._id.toString()),
    });
  } catch (error) {
    console.error("Login error:", error);
    return NextResponse.json(
      { error: "Something went wrong. Please try again." },
      { status: 500 }
    );
  }
}
