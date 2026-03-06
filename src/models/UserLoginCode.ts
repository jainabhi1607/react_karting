import mongoose, { Schema, Document } from "mongoose";

export interface IUserLoginCode extends Document {
  user_id: mongoose.Types.ObjectId;
  otp: string;
  expiry_time: Date;
  status: number; // 1=Available, 2=Used, 3=Expired
  remember_me: boolean;
  attempts: number;
}

const UserLoginCodeSchema = new Schema<IUserLoginCode>(
  {
    // Remove the bare `index: true` here — the compound index below supersedes
    // the single-field index and covers all query patterns on this collection.
    user_id: { type: Schema.Types.ObjectId, ref: "User", required: true },
    otp: { type: String, required: true },
    expiry_time: { type: Date, required: true },
    status: { type: Number, default: 1 },
    remember_me: { type: Boolean, default: false },
    attempts: { type: Number, default: 0 },
  },
  {
    timestamps: false,
    collection: "user_login_codes",
  }
);

// ---------------------------------------------------------------------------
// Indexes
// ---------------------------------------------------------------------------

// Primary OTP lookup index.
// Every query on this collection filters by (user_id, status, expiry_time).
// verify-otp:   { user_id, otp, status: 1, expiry_time: { $gt: now } }
// login:        { user_id, status: 1 }          (updateMany expire)
// resend-otp:   { user_id, status: 1 }          (updateMany expire)
// Field order: user_id first (highest cardinality / equality), then status
// (equality filter), then expiry_time (range filter last per ESR rule).
UserLoginCodeSchema.index(
  { user_id: 1, status: 1, expiry_time: 1 },
  { name: "idx_ulc_user_status_expiry" }
);

// TTL index — MongoDB will automatically delete documents 1 hour after
// expiry_time. This prevents the collection from growing unbounded with
// used/expired OTP records. Adjust expireAfterSeconds to suit audit needs.
UserLoginCodeSchema.index(
  { expiry_time: 1 },
  { expireAfterSeconds: 3600, name: "idx_ulc_ttl_expiry" }
);

export default mongoose.models.UserLoginCode ||
  mongoose.model<IUserLoginCode>("UserLoginCode", UserLoginCodeSchema);
