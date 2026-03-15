import { redirect } from "next/navigation";
import { getSession } from "@/lib/auth";
import ForgotPasswordForm from "./forgot-password-form";

export default async function ForgotPasswordPage() {
  const session = await getSession();
  if (session) redirect("/dashboard");

  return <ForgotPasswordForm />;
}
