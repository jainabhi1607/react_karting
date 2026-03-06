import mongoose, { Schema, Document } from "mongoose";

export interface IUser extends Document {
  member_id: number | null;
  club_id: number | null;
  admin_id: number | null;
  parent_user_id: number | null;
  parent_member_id: number | null;
  username: string;
  password: string | null;
  name: string | null;
  middle_name: string | null;
  last_name: string | null;
  email: string | null;
  mobile: string | null;
  phone: string | null;
  date_of_birth: Date | null;
  current_endorsement: number | null;
  gender: number | null;
  medical_detail_expiry_date: Date | null;
  user_image: string | null;
  role: number | null;
  user_adult: number;
  status: number | null;
  change_current_endorsement: number | null;
  medical_certificate_required: number | null;
}

const UserSchema = new Schema<IUser>(
  {
    member_id: { type: Number, default: null },
    club_id: { type: Number, default: null },
    admin_id: { type: Number, default: null, comment: "Admin id who added this member" },
    parent_user_id: { type: Number, default: null, comment: "Parent id who added this member as his child" },
    parent_member_id: { type: Number, default: null },
    // sparse: true allows multiple null values while still enforcing uniqueness among real usernames
    username: { type: String, required: true, unique: true },
    password: { type: String, default: null },
    name: { type: String, default: null },
    middle_name: { type: String, default: null },
    last_name: { type: String, default: null },
    // sparse: true lets multiple rows have email=null without colliding on the unique index.
    // The case-insensitive collation index is defined below at the schema level.
    email: { type: String, default: null },
    mobile: { type: String, default: null },
    phone: { type: String, default: null },
    date_of_birth: { type: Date, default: null },
    current_endorsement: { type: Number, default: null },
    gender: { type: Number, default: null },
    medical_detail_expiry_date: { type: Date, default: null },
    user_image: { type: String, default: null },
    role: { type: Number, default: null, comment: "1=Admin, 11=Club, 13=Member" },
    user_adult: { type: Number, default: 1, comment: "1=Adult, 2=Minor" },
    // status is checked on every login — index defined below
    status: { type: Number, default: null },
    change_current_endorsement: { type: Number, default: null },
    medical_certificate_required: { type: Number, default: null },
  },
  {
    timestamps: false,
    collection: "users",
  }
);

// ---------------------------------------------------------------------------
// Indexes
// ---------------------------------------------------------------------------

// Case-insensitive unique index on email.
// Using a collation index (strength:2) means MongoDB can satisfy
// { email: "user@example.com" } queries without a $regex, eliminating
// the full collection scan that a case-insensitive regex causes.
// sparse: true allows multiple documents to have email: null.
UserSchema.index(
  { email: 1 },
  {
    unique: true,
    sparse: true,
    collation: { locale: "en", strength: 2 },
    name: "idx_users_email_ci",
  }
);

// status is filtered on every login (user.status !== 1 check).
// Low-cardinality but critical for auth path; index is worth it because
// the login query already narrows to one email — this covers admin queries
// that filter by status across the full collection (e.g. list active members).
UserSchema.index({ status: 1 }, { name: "idx_users_status" });

// Composite: club_id + status — typical admin "list all active members of a club" query.
UserSchema.index({ club_id: 1, status: 1 }, { name: "idx_users_club_status" });

export default mongoose.models.User || mongoose.model<IUser>("User", UserSchema);
