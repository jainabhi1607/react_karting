import { NextRequest, NextResponse } from "next/server";
import dbConnect from "@/lib/mongodb";
import User from "@/models/User";
import { encryptToken } from "@/lib/auth";
import { sendPasswordResetEmail } from "@/lib/email";

const SUCCESS_RESPONSE = {
  success: true,
  message: "If an account exists with that email, you will receive a password reset link.",
};

export async function POST(req: NextRequest) {
  try {
    const { email } = await req.json();

    if (!email || typeof email !== "string") {
      return NextResponse.json(
        { error: "Email is required" },
        { status: 400 }
      );
    }

    await dbConnect();

    const user = await User.findOne({ email: email.trim().toLowerCase() })
      .collation({ locale: "en", strength: 2 })
      .select("_id name email status")
      .lean();

    // Always return success to prevent email enumeration
    if (!user || user.status !== 1) {
      return NextResponse.json(SUCCESS_RESPONSE);
    }

    // Mark user as having a pending reset (consumed by reset-password to prevent replay)
    await User.updateOne(
      { _id: user._id },
      { $set: { password_reset_at: new Date() } }
    );

    const token = encryptToken(user._id.toString(), "reset-password");

    // Build reset URL from APP_URL env (reliable across dev/production)
    const baseUrl =
      process.env.APP_URL ||
      req.headers.get("origin") ||
      `http://${req.headers.get("host") || "localhost:3002"}`;
    const resetUrl = `${baseUrl}/reset-password?token=${encodeURIComponent(token)}`;

    await sendPasswordResetEmail(user.email || "", resetUrl, user.name || "User");

    return NextResponse.json(SUCCESS_RESPONSE);
  } catch (error) {
    console.error("Forgot password error:", error);
    return NextResponse.json(
      { error: "Something went wrong. Please try again." },
      { status: 500 }
    );
  }
}
