import { SignJWT, jwtVerify } from "jose";
import { cookies } from "next/headers";
import { createCipheriv, createDecipheriv, randomBytes } from "crypto";

const COOKIE_NAME = "karting_session";

function getJwtSecret() {
  const secret = process.env.JWT_SECRET;
  if (!secret) {
    throw new Error("JWT_SECRET environment variable is not set");
  }
  return new TextEncoder().encode(secret);
}

function getEncryptionKey(): Buffer {
  const key = process.env.TOKEN_ENCRYPTION_KEY;
  if (!key) {
    throw new Error("TOKEN_ENCRYPTION_KEY environment variable is not set");
  }
  const buf = Buffer.from(key, "hex");
  if (buf.length !== 32) {
    throw new Error(
      `TOKEN_ENCRYPTION_KEY must be 64 hex characters (32 bytes). Got ${buf.length} bytes.`
    );
  }
  return buf;
}

const TOKEN_TTL_MS = 15 * 60 * 1000; // 15 minutes

export type TokenPurpose = "otp" | "reset-password";

/**
 * Encrypts a userId into an opaque, time-limited token using AES-256-GCM.
 * Includes a purpose field to prevent cross-use of tokens.
 * Output format: hex(iv):hex(authTag):hex(ciphertext)
 */
export function encryptToken(userId: string, purpose: TokenPurpose = "otp"): string {
  const payload = JSON.stringify({ userId, purpose, exp: Date.now() + TOKEN_TTL_MS });
  const key = getEncryptionKey();
  const iv = randomBytes(12);
  const cipher = createCipheriv("aes-256-gcm", key, iv);
  const encrypted = Buffer.concat([cipher.update(payload, "utf8"), cipher.final()]);
  const authTag = cipher.getAuthTag();
  return `${iv.toString("hex")}:${authTag.toString("hex")}:${encrypted.toString("hex")}`;
}

/**
 * Decrypts an opaque token back to the original userId.
 * Validates purpose to prevent cross-use of tokens.
 * Returns null if decryption fails, token is tampered, expired, or wrong purpose.
 */
export function decryptToken(token: string, expectedPurpose: TokenPurpose = "otp"): string | null {
  try {
    const parts = token.split(":");
    if (parts.length !== 3) return null;
    const [ivHex, authTagHex, ciphertextHex] = parts;
    const key = getEncryptionKey();
    const decipher = createDecipheriv("aes-256-gcm", key, Buffer.from(ivHex, "hex"));
    decipher.setAuthTag(Buffer.from(authTagHex, "hex"));
    const decrypted = Buffer.concat([decipher.update(Buffer.from(ciphertextHex, "hex")), decipher.final()]);
    const { userId, purpose, exp } = JSON.parse(decrypted.toString("utf8"));
    if (!userId || !exp || Date.now() > exp) return null;
    if (purpose !== expectedPurpose) return null;
    return userId;
  } catch {
    return null;
  }
}

export async function createSession(userId: string, rememberMe: boolean) {
  const expiresIn = rememberMe ? "30d" : "1d";
  const maxAge = rememberMe ? 30 * 24 * 60 * 60 : 24 * 60 * 60;

  const token = await new SignJWT({ userId })
    .setProtectedHeader({ alg: "HS256" })
    .setExpirationTime(expiresIn)
    .setIssuedAt()
    .sign(getJwtSecret());

  const cookieStore = await cookies();
  cookieStore.set(COOKIE_NAME, token, {
    httpOnly: true,
    secure: process.env.NODE_ENV === "production",
    sameSite: "lax",
    maxAge,
    path: "/",
  });

  return token;
}

export async function getSession() {
  const cookieStore = await cookies();
  const token = cookieStore.get(COOKIE_NAME)?.value;
  if (!token) return null;

  try {
    const { payload } = await jwtVerify(token, getJwtSecret());
    return payload as { userId: string };
  } catch {
    return null;
  }
}

export async function destroySession() {
  const cookieStore = await cookies();
  cookieStore.delete(COOKIE_NAME);
}
