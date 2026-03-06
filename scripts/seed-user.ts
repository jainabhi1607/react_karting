// Run with: npx tsx scripts/seed-user.ts
// Creates a test user for login testing

import mongoose from "mongoose";
import bcrypt from "bcryptjs";

const MONGODB_URI = "mongodb+srv://jainabhi1607_db_user:nvKgudrq5vn87upK@karting.7v5jgip.mongodb.net/?retryWrites=true&w=majority";

async function seed() {
  await mongoose.connect(MONGODB_URI);
  console.log("Connected to MongoDB");

  const db = mongoose.connection.db!;
  const usersCollection = db.collection("users");

  // Check if test user exists
  const existing = await usersCollection.findOne({ email: "test@karting.com" });
  if (existing) {
    console.log("Test user already exists:", existing.email);
    await mongoose.disconnect();
    return;
  }

  const hashedPassword = await bcrypt.hash("Test1234!", 10);

  await usersCollection.insertOne({
    member_id: null,
    club_id: null,
    admin_id: null,
    parent_user_id: null,
    parent_member_id: null,
    username: "test@karting.com",
    password: hashedPassword,
    name: "Test",
    middle_name: null,
    last_name: "User",
    email: "test@karting.com",
    mobile: "0400000000",
    phone: null,
    date_of_birth: null,
    current_endorsement: null,
    gender: 1,
    medical_detail_expiry_date: null,
    user_image: null,
    role: 13,
    user_adult: 1,
    status: 1,
    change_current_endorsement: null,
    medical_certificate_required: null,
  });

  console.log("Test user created:");
  console.log("  Email: test@karting.com");
  console.log("  Password: Test1234!");
  console.log("  OTP: 998877 (hardcoded)");

  await mongoose.disconnect();
}

seed().catch(console.error);
