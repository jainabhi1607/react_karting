import { Resend } from "resend";

const API_KEYS = [
  process.env.RESEND_API_KEY,
  process.env.RESEND_API_KEY1,
  process.env.RESEND_API_KEY2,
  process.env.RESEND_API_KEY3,
].filter(Boolean) as string[];

function escapeHtml(str: string): string {
  return str.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;");
}

const emailPayload = (email: string, otp: string, name: string) => ({
  from: "Karting NSW <onboarding@resend.dev>",
  to: email,
  subject: "Your Karting NSW Login Code",
  html: `
    <div style="font-family: Arial, sans-serif; max-width: 480px; margin: 0 auto; padding: 24px;">
      <h2 style="color: #0C0E3B;">Karting NSW Login Code</h2>
      <p>Hi ${escapeHtml(name)},</p>
      <p>Your one-time login code is:</p>
      <div style="background: #EEF9FF; padding: 20px; text-align: center; border-radius: 8px; margin: 20px 0;">
        <span style="font-size: 32px; font-weight: bold; letter-spacing: 8px; color: #0C0E3B;">${otp}</span>
      </div>
      <p style="color: #666; font-size: 14px;">This code expires in 5 minutes. Do not share it with anyone.</p>
    </div>
  `,
});

const resetEmailPayload = (email: string, resetUrl: string, name: string) => ({
  from: "Karting NSW <onboarding@resend.dev>",
  to: email,
  subject: "Reset Your Karting NSW Password",
  html: `
    <div style="font-family: Arial, sans-serif; max-width: 480px; margin: 0 auto; padding: 24px;">
      <h2 style="color: #0C0E3B;">Reset Your Password</h2>
      <p>Hi ${escapeHtml(name)},</p>
      <p>We received a request to reset your password. Click the button below to set a new password:</p>
      <div style="text-align: center; margin: 24px 0;">
        <a href="${escapeHtml(resetUrl)}" style="background: #209BD6; color: #fff; padding: 12px 32px; border-radius: 8px; text-decoration: none; font-weight: bold; font-size: 16px; display: inline-block;">Reset Password</a>
      </div>
      <p style="color: #666; font-size: 14px;">This link expires in 15 minutes. If you didn't request a password reset, you can safely ignore this email.</p>
      <p style="color: #999; font-size: 12px; margin-top: 24px;">If the button doesn't work, copy and paste this URL into your browser:<br/>${escapeHtml(resetUrl)}</p>
    </div>
  `,
});

async function sendWithFallback(payload: ReturnType<typeof emailPayload>) {
  let lastError: string = "No API keys configured";

  for (let i = 0; i < API_KEYS.length; i++) {
    const resend = new Resend(API_KEYS[i]);
    const { error } = await resend.emails.send(payload);

    if (!error) return true;

    lastError = error.message || "Unknown error";

    // Try next key on any error (rate limit, config issue, transient failure)
    if (i < API_KEYS.length - 1) {
      console.log(`[EMAIL] Key ${i + 1} failed (${lastError}), trying key ${i + 2}...`);
      continue;
    }
  }

  throw new Error(`All email keys failed. Last error: ${lastError}`);
}

export async function sendPasswordResetEmail(email: string, resetUrl: string, name: string) {
  if (API_KEYS.length === 0) {
    console.log(`[DEV] Password reset link for ${email}: ${resetUrl}`);
    return true;
  }

  return sendWithFallback(resetEmailPayload(email, resetUrl, name));
}

export async function sendOTPEmail(email: string, otp: string, name: string) {
  if (API_KEYS.length === 0) {
    console.log(`[DEV] OTP for ${email}: ${otp}`);
    return true;
  }

  return sendWithFallback(emailPayload(email, otp, name));
}
