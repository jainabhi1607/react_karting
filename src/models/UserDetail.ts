import mongoose, { Schema, Document } from "mongoose";

export interface IUserDetail extends Document {
  user_id: number;
  job_title: string | null;
  // Residential Address
  address: string | null;
  address1: string | null;
  city: string | null;
  state: string | null;
  country: string | null;
  zipcode: string | null;
  // Mailing Address
  mailing_address: string | null;
  mailing_address1: string | null;
  mailing_city: string | null;
  mailing_state: number | null;
  mailing_country: number | null;
  mailing_zipcode: string | null;
  // Emergency Contact
  emergency_contact_person: string | null;
  emergency_contact_mobile: string | null;
  emergency_contact_phone: string | null;
  relationship: number | null;
  relationship_other: string | null;
  // Preferences
  offer_organisations: number | null;
  offers_third_party: number | null;
  // Personal
  country_of_birth: string | null;
  gender: number | null;
  australian_citizen: number | null;
  // Profile Image
  user_image_original: string | null;
  user_image_old: string | null;
  user_image_approve: number | null;
  user_image_change_date: Date | null;
  // Identity Proof
  identity_proof: string | null;
  identity_proof_upload_date: Date | null;
  identity_proof_approve: number | null;
  // Medical Certificate
  medical_certificate: string | null;
  medical_certificate_status: number | null;
  medical_certificate_upload_date: Date | null;
  // WWCC
  wwcc_id_number: string | null;
  wwcc_expiry_date: Date | null;
  wwcc_licence_upload: string | null;
  // Kart Info
  kart_number: string | null;
  transponder_number: string | null;
  kart_type: string | null;
  sponsers: string | null;
  // Administrative
  parent_user_id: number | null;
  promoter: number | null;
  status_verified: number | null;
  reset_token: string | null;
  activation_token: string | null;
  rnum: number | null;
  dismiss_notice: number | null;
  password_changed: number | null;
  authcode: string | null;
  created: Date | null;
  modified: Date | null;
}

const UserDetailSchema = new Schema<IUserDetail>(
  {
    user_id: { type: Number, required: true, index: true },
    job_title: { type: String, default: null },
    // Residential Address
    address: { type: String, default: null },
    address1: { type: String, default: null },
    city: { type: String, default: null },
    state: { type: String, default: null },
    country: { type: String, default: null },
    zipcode: { type: String, default: null },
    // Mailing Address
    mailing_address: { type: String, default: null },
    mailing_address1: { type: String, default: null },
    mailing_city: { type: String, default: null },
    mailing_state: { type: Number, default: null },
    mailing_country: { type: Number, default: null },
    mailing_zipcode: { type: String, default: null },
    // Emergency Contact
    emergency_contact_person: { type: String, default: null },
    emergency_contact_mobile: { type: String, default: null },
    emergency_contact_phone: { type: String, default: null },
    relationship: { type: Number, default: null },
    relationship_other: { type: String, default: null },
    // Preferences
    offer_organisations: { type: Number, default: null },
    offers_third_party: { type: Number, default: null },
    // Personal
    country_of_birth: { type: String, default: null },
    gender: { type: Number, default: null },
    australian_citizen: { type: Number, default: null },
    // Profile Image
    user_image_original: { type: String, default: null },
    user_image_old: { type: String, default: null },
    user_image_approve: {
      type: Number,
      default: null,
      comment: "1=approved, 2=waiting",
    },
    user_image_change_date: { type: Date, default: null },
    // Identity Proof
    identity_proof: { type: String, default: null },
    identity_proof_upload_date: { type: Date, default: null },
    identity_proof_approve: {
      type: Number,
      default: null,
      comment: "1=Approved by admin",
    },
    // Medical Certificate
    medical_certificate: { type: String, default: null },
    medical_certificate_status: {
      type: Number,
      default: null,
      comment: "0=not done, 1=pending, 2=re-submit, 3=senior citizen, 5=approved",
    },
    medical_certificate_upload_date: { type: Date, default: null },
    // WWCC
    wwcc_id_number: { type: String, default: null },
    wwcc_expiry_date: { type: Date, default: null },
    wwcc_licence_upload: { type: String, default: null },
    // Kart Info
    kart_number: { type: String, default: null },
    transponder_number: { type: String, default: null },
    kart_type: { type: String, default: null },
    sponsers: { type: String, default: null },
    // Administrative
    parent_user_id: {
      type: Number,
      default: null,
      comment: "Parent id if user is unlinked, for history",
    },
    promoter: { type: Number, default: null, comment: "1=Yes" },
    status_verified: { type: Number, default: null },
    reset_token: { type: String, default: null },
    activation_token: { type: String, default: null },
    rnum: { type: Number, default: null },
    dismiss_notice: { type: Number, default: null },
    password_changed: { type: Number, default: null },
    authcode: { type: String, default: null },
    created: { type: Date, default: null },
    modified: { type: Date, default: null },
  },
  {
    timestamps: false,
    collection: "user_details",
  }
);

export default mongoose.models.UserDetail || mongoose.model<IUserDetail>("UserDetail", UserDetailSchema);
