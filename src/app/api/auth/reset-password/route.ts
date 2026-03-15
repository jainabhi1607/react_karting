import { NextRequest, NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import dbConnect from "@/lib/mongodb";
import User from "@/models/User";
import { decryptToken } from "@/lib/auth";
import { validatePassword } from "@/lib/password-validation";

export async function POST(req: NextRequest) {
  try {
    const { token, password } = await req.json();

    if (!token || typeof token !== "string" || !password || typeof password !== "string") {
      return NextResponse.json(
        { error: "Invalid request" },
        { status: 400 }
      );
    }

    const validationError = validatePassword(password);
    if (validationError) {
      return NextResponse.json(
        { error: validationError },
        { status: 400 }
      );
    }

    const userId = decryptToken(token, "reset-password");
    if (!userId) {
      return NextResponse.json(
        { error: "Invalid or expired reset link. Please request a new one." },
        { status: 400 }
      );
    }

    await dbConnect();

    // Atomically check user is active + has a pending reset, then consume the reset token
    // and update the password in a single operation. This prevents token replay attacks.
    const hashedPassword = await bcrypt.hash(password, 12);

    const result = await User.updateOne(
      { _id: userId, status: 1, password_reset_at: { $exists: true } },
      { $set: { password: hashedPassword }, $unset: { password_reset_at: "" } }
    );

    if (result.matchedCount === 0) {
      return NextResponse.json(
        { error: "Invalid or expired reset link. Please request a new one." },
        { status: 400 }
      );
    }

    return NextResponse.json({
      success: true,
      message: "Password reset successfully. You can now log in.",
    });
  } catch (error) {
    console.error("Reset password error:", error);
    return NextResponse.json(
      { error: "Something went wrong. Please try again." },
      { status: 500 }
    );
  }
}
