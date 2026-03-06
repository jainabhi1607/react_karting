import { redirect } from "next/navigation";
import { getSession } from "@/lib/auth";

export default async function DashboardPage() {
  const session = await getSession();
  if (!session) redirect("/login");

  return (
    <div className="flex min-h-screen items-center justify-center px-4" style={{ background: "linear-gradient(#0C0E3B, #209BD6)" }}>
      <div className="w-full max-w-[600px] rounded-2xl bg-white p-8 shadow-sm border border-gray-100 text-center">
        <h1 className="text-2xl font-bold text-gray-900 mb-2">Dashboard</h1>
        <p className="text-gray-500 mb-6">You are logged in successfully!</p>
        <form action="/api/auth/logout" method="POST">
          <button
            type="submit"
            className="px-6 py-2 bg-[#209BD6] hover:bg-[#1a86ba] text-white rounded-lg text-sm font-medium transition-colors"
          >
            Sign Out
          </button>
        </form>
      </div>
    </div>
  );
}
