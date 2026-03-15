import { Suspense } from "react";
import { redirect } from "next/navigation";
import { getSession } from "@/lib/auth";
import ResetPasswordForm from "./reset-password-form";

export default async function ResetPasswordPage() {
  const session = await getSession();
  if (session) redirect("/dashboard");

  return (
    <Suspense fallback={null}>
      <ResetPasswordForm />
    </Suspense>
  );
}
