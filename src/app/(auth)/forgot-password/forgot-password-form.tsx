"use client";

import { useState } from "react";
import Image from "next/image";
import Link from "next/link";
import { ArrowLeft, Loader2, Mail } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";

export default function ForgotPasswordForm() {
  const [email, setEmail] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);
  const [sent, setSent] = useState(false);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    setLoading(true);

    try {
      const res = await fetch("/api/auth/forgot-password", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email }),
      });

      const data = await res.json();

      if (!res.ok) {
        setError(data.error);
        return;
      }

      setSent(true);
    } catch {
      setError("Network error. Please try again.");
    } finally {
      setLoading(false);
    }
  };

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

        {sent ? (
          <>
            <div className="text-center mb-6">
              <div className="mx-auto w-14 h-14 bg-[#EEF9FF] rounded-full flex items-center justify-center mb-4">
                <Mail className="h-7 w-7 text-[#209BD6]" />
              </div>
              <h1 className="text-2xl font-bold text-gray-900 mb-1">
                Check Your Email
              </h1>
              <p className="text-sm text-gray-500">
                If an account exists for{" "}
                <span className="font-medium text-gray-700">{email}</span>,
                you&apos;ll receive a password reset link shortly.
              </p>
            </div>

            <p className="text-center text-sm text-gray-500 mb-4">
              Didn&apos;t receive the email? Check your spam folder or{" "}
              <button
                type="button"
                onClick={() => setSent(false)}
                className="font-semibold text-[#209BD6] hover:underline"
              >
                try again
              </button>
            </p>

            <Link
              href="/login"
              className="flex items-center justify-center gap-1 w-full text-sm text-gray-500 hover:text-gray-700 transition-colors"
            >
              <ArrowLeft className="h-3.5 w-3.5" />
              Back to login
            </Link>
          </>
        ) : (
          <>
            <div className="text-center mb-8">
              <h1 className="text-2xl font-bold text-gray-900 mb-1">
                Forgot Password?
              </h1>
              <p className="text-sm text-gray-500">
                Enter your email address and we&apos;ll send you a link to reset
                your password.
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
                  htmlFor="email"
                  className="text-sm font-semibold text-gray-700"
                >
                  Email
                </Label>
                <Input
                  id="email"
                  type="email"
                  placeholder="you@example.com"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  className="h-11 rounded-lg border-gray-200 bg-white px-4 text-sm placeholder:text-gray-400 focus-visible:border-gray-400 focus-visible:ring-gray-200"
                  required
                  disabled={loading}
                />
              </div>

              <Button
                type="submit"
                disabled={loading}
                className="w-full h-11 rounded-lg bg-[#209BD6] hover:bg-[#1a86ba] text-white font-medium text-sm transition-colors"
              >
                {loading ? (
                  <Loader2 className="h-4 w-4 animate-spin" />
                ) : (
                  "Send Reset Link"
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
