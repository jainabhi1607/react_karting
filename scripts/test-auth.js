const mongoose = require("mongoose");

async function test() {
  // Login
  const res = await fetch("http://localhost:3000/api/auth/login", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ email: "abhidevphp2@gmail.com", password: "Test1234!", rememberMe: true }),
  });
  const data = await res.json();
  console.log("1. Login:", data.success ? "OK" : data.error);
  if (!data.success) return;

  // Get OTP from DB
  await mongoose.connect("mongodb+srv://jainabhi1607_db_user:nvKgudrq5vn87upK@karting.7v5jgip.mongodb.net/?retryWrites=true&w=majority");
  const code = await mongoose.connection.db.collection("user_login_codes").findOne({ status: 1 }, { sort: { _id: -1 } });
  console.log("2. OTP from DB:", code.otp, "| remember_me:", code.remember_me, "| attempts:", code.attempts);

  // Wrong OTP
  let res2 = await fetch("http://localhost:3000/api/auth/verify-otp", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ userId: data.userId, otp: "000000" }),
  });
  let d2 = await res2.json();
  console.log("3. Wrong OTP:", d2.error ? "Rejected - OK" : "ERROR");

  // Check attempts incremented
  const code2 = await mongoose.connection.db.collection("user_login_codes").findOne({ _id: code._id });
  console.log("4. Attempts after wrong OTP:", code2.attempts);

  // Correct OTP
  res2 = await fetch("http://localhost:3000/api/auth/verify-otp", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ userId: data.userId, otp: code.otp }),
  });
  d2 = await res2.json();
  const cookie = res2.headers.get("set-cookie");
  const maxAge = cookie ? cookie.match(/Max-Age=(\d+)/i) : null;
  console.log("5. Correct OTP:", d2.success ? "OK" : d2.error);
  console.log("6. Remember me (30d):", maxAge && maxAge[1] === "2592000" ? "OK" : "FAIL - got " + (maxAge ? maxAge[1] : "no cookie"));

  // Invalid ObjectId
  res2 = await fetch("http://localhost:3000/api/auth/verify-otp", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ userId: "invalid", otp: "123456" }),
  });
  console.log("7. Invalid ObjectId:", res2.status === 400 ? "Rejected 400 - OK" : "ERROR " + res2.status);

  // Test resend preserves remember_me
  const res3 = await fetch("http://localhost:3000/api/auth/login", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ email: "abhidevphp2@gmail.com", password: "Test1234!", rememberMe: true }),
  });
  const data3 = await res3.json();
  const res4 = await fetch("http://localhost:3000/api/auth/resend-otp", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ userId: data3.userId }),
  });
  const d4 = await res4.json();
  const code3 = await mongoose.connection.db.collection("user_login_codes").findOne({ status: 1 }, { sort: { _id: -1 } });
  console.log("8. Resend preserves remember_me:", code3.remember_me === true ? "OK" : "FAIL - got " + code3.remember_me);

  await mongoose.disconnect();
  console.log("\nAll tests complete.");
}
test().catch(console.error);
