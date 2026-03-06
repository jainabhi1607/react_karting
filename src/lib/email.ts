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

export async function sendOTPEmail(email: string, otp: string, name: string) {
  if (API_KEYS.length === 0) {
    console.log(`[DEV] OTP for ${email}: ${otp}`);
    return true;
  }

  const payload = emailPayload(email, otp, name);

  for (let i = 0; i < API_KEYS.length; i++) {
    const resend = new Resend(API_KEYS[i]);
    const { error } = await resend.emails.send(payload);

    if (!error) return true;

    // If rate limited (daily quota), try next key
    const isRateLimit =
      error.message?.toLowerCase().includes("rate") ||
      error.message?.toLowerCase().includes("limit") ||
      error.message?.toLowerCase().includes("quota");

    if (isRateLimit && i < API_KEYS.length - 1) {
      console.log(`[EMAIL] Key ${i + 1} rate limited, trying key ${i + 2}...`);
      continue;
    }

    throw new Error(`Email send failed: ${error.message}`);
  }

  return true;
}
