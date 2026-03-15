"use client";

import { useState, useEffect } from "react";
import Image from "next/image";
import Link from "next/link";
import { useSearchParams, useRouter } from "next/navigation";
import { Eye, EyeOff, Loader2, CheckCircle2, ArrowLeft } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { PASSWORD_RULES, getPasswordChecks } from "@/lib/password-validation";

export default function ResetPasswordForm() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const token = searchParams.get("token");

  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);

  const passwordChecks = getPasswordChecks(password);
  const allChecksPassed = Object.values(passwordChecks).every(Boolean);
  const passwordsMatch = password === confirmPassword;

  // Auto-redirect to login after successful reset
  useEffect(() => {
    if (success) {
      const timer = setTimeout(() => router.push("/login"), 3000);
      return () => clearTimeout(timer);
    }
  }, [success, router]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");

    if (!allChecksPassed) {
      setError("Please meet all password requirements");
      return;
    }

    if (!passwordsMatch) {
      setError("Passwords do not match");
      return;
    }

    setLoading(true);

    try {
      const res = await fetch("/api/auth/reset-password", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ token, password }),
      });

      const data = await res.json();

      if (!res.ok) {
        setError(data.error);
        return;
      }

      setSuccess(true);
    } catch {
      setError("Network error. Please try again.");
    } finally {
      setLoading(false);
    }
  };

  if (!token) {
    return (
      <div
        className="flex min-h-screen items-center justify-center px-4"
        style={{ background: "linear-gradient(#0C0E3B, #209BD6)" }}
      >
        <div className="w-full max-w-[440px] rounded-2xl bg-white p-8 shadow-sm border border-gray-100 text-center">
          <div className="flex justify-center mb-6">
            <Image
              src="/logo.png"
              alt="Karting"
              width={250}
              height={80}
              priority
              className="object-contain h-auto w-[250px]"
            />
          </div>
          <h1 className="text-2xl font-bold text-gray-900 mb-2">
            Invalid Reset Link
          </h1>
          <p className="text-sm text-gray-500 mb-6">
            This password reset link is invalid or has expired. Please request a
            new one.
          </p>
          <Link
            href="/forgot-password"
            className="inline-block px-6 py-2 bg-[#209BD6] hover:bg-[#1a86ba] text-white rounded-lg text-sm font-medium transition-colors"
          >
            Request New Link
          </Link>
        </div>
      </div>
    );
  }

  // Display rules (exclude maxLength from the visual checklist)
  const displayRules = (
    Object.entries(PASSWORD_RULES) as [string, { test: (p: string) => boolean; label: string }][]
  ).filter(([key]) => key !== "maxLength");

  return (
    <div
      className="flex min-h-screen items-center justify-center px-4"
      style={{ background: "linear-gradient(#0C0E3B, #209BD6)" }}
    >
      <div className="w-full max-w-[440px] rounded-2xl bg-white p-8 shadow-sm border border-gray-100">
        {/* Logo */}
        <div className="flex justify-center mb-6">
          <Image
            src="/logo.png"
            alt="Karting"
            width={250}
            height={80}
            priority
            className="object-contain h-auto w-[250px]"
          />
        </div>

        {success ? (
          <>
            <div className="text-center mb-6">
              <div className="mx-auto w-14 h-14 bg-green-50 rounded-full flex items-center justify-center mb-4">
                <CheckCircle2 className="h-7 w-7 text-green-500" />
              </div>
              <h1 className="text-2xl font-bold text-gray-900 mb-1">
                Password Reset!
              </h1>
              <p className="text-sm text-gray-500">
                Your password has been reset successfully. Redirecting to login...
              </p>
            </div>

            <Link
              href="/login"
              className="flex items-center justify-center w-full h-11 rounded-lg bg-[#209BD6] hover:bg-[#1a86ba] text-white font-medium text-sm transition-colors"
            >
              Go to Login
            </Link>
          </>
        ) : (
          <>
            <div className="text-center mb-8">
              <h1 className="text-2xl font-bold text-gray-900 mb-1">
                Reset Your Password
              </h1>
              <p className="text-sm text-gray-500">
                Enter your new password below.
              </p>
            </div>

            <form onSubmit={handleSubmit} className="space-y-5">
              {error && (
                <div className="bg-red-50 border border-red-200 text-red-700 text-sm rounded-lg px-4 py-3">
                  {error}
                </div>
              )}

              <div className="space-y-2">
                <Label
                  htmlFor="password"
                  className="text-sm font-semibold text-gray-700"
                >
                  New Password
                </Label>
                <div className="relative">
                  <Input
                    id="password"
                    type={showPassword ? "text" : "password"}
                    autoComplete="new-password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    className="h-11 rounded-lg border-gray-200 bg-white px-4 pr-11 text-sm focus-visible:border-gray-400 focus-visible:ring-gray-200"
                    required
                    disabled={loading}
                  />
                  <button
                    type="button"
                    onClick={() => setShowPassword(!showPassword)}
                    className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-gray-600 transition-colors"
                    tabIndex={-1}
                  >
                    {showPassword ? (
                      <EyeOff className="h-4.5 w-4.5" />
                    ) : (
                      <Eye className="h-4.5 w-4.5" />
                    )}
                  </button>
                </div>
              </div>

              {password && (
                <div className="space-y-1.5 text-xs">
                  {displayRules.map(([key, rule]) => (
                    <div
                      key={key}
                      className={`flex items-center gap-1.5 ${
                        passwordChecks[key as keyof typeof passwordChecks]
                          ? "text-green-600"
                          : "text-gray-400"
                      }`}
                    >
                      <CheckCircle2 className="h-3.5 w-3.5" />
                      {rule.label}
                    </div>
                  ))}
                </div>
              )}

              <div className="space-y-2">
                <Label
                  htmlFor="confirm-password"
                  className="text-sm font-semibold text-gray-700"
                >
                  Confirm New Password
                </Label>
                <div className="relative">
                  <Input
                    id="confirm-password"
                    type={showConfirmPassword ? "text" : "password"}
                    autoComplete="new-password"
                    value={confirmPassword}
                    onChange={(e) => setConfirmPassword(e.target.value)}
                    className="h-11 rounded-lg border-gray-200 bg-white px-4 pr-11 text-sm focus-visible:border-gray-400 focus-visible:ring-gray-200"
                    required
                    disabled={loading}
                  />
                  <button
                    type="button"
                    onClick={() =>
                      setShowConfirmPassword(!showConfirmPassword)
                    }
                    className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-gray-600 transition-colors"
                    tabIndex={-1}
                  >
                    {showConfirmPassword ? (
                      <EyeOff className="h-4.5 w-4.5" />
                    ) : (
                      <Eye className="h-4.5 w-4.5" />
                    )}
                  </button>
                </div>
                {confirmPassword && !passwordsMatch && (
                  <p className="text-xs text-red-500">
                    Passwords do not match
                  </p>
                )}
              </div>

              <Button
                type="submit"
                disabled={loading || !allChecksPassed || (confirmPassword.length > 0 && !passwordsMatch)}
                className="w-full h-11 rounded-lg bg-[#209BD6] hover:bg-[#1a86ba] text-white font-medium text-sm transition-colors disabled:opacity-50"
              >
                {loading ? (
                  <Loader2 className="h-4 w-4 animate-spin" />
                ) : (
                  "Reset Password"
                )}
              </Button>
            </form>

            <Link
              href="/login"
              className="flex items-center justify-center gap-1 w-full text-sm text-gray-500 hover:text-gray-700 transition-colors mt-5"
            >
              <ArrowLeft className="h-3.5 w-3.5" />
              Back to login
            </Link>
          </>
        )}
      </div>
    </div>
  );
}
