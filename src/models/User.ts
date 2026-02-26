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
    username: { type: String, required: true },
    password: { type: String, default: null },
    name: { type: String, default: null },
    middle_name: { type: String, default: null },
    last_name: { type: String, default: null },
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
    status: { type: Number, default: null },
    change_current_endorsement: { type: Number, default: null },
    medical_certificate_required: { type: Number, default: null },
  },
  {
    timestamps: false,
    collection: "users",
  }
);

export default mongoose.models.User || mongoose.model<IUser>("User", UserSchema);
