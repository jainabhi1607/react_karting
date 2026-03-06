# Karting NSW — Database Schema Documentation

## Overview

The database uses **MongoDB** (hosted on Atlas) with **Mongoose 9.x** as the ORM. The schema is split into two main collections mirroring the original PHP/MySQL structure, linked via a foreign key relationship.

## Connection

- **File**: `src/lib/mongodb.ts`
- **Pattern**: Singleton with global cache (prevents multiple connections in dev/serverless)
- **Options**: `{ bufferCommands: false }`
- **Environment**: `MONGODB_URI` in `.env.local`

## Entity Relationship

```
┌──────────────────────┐         ┌──────────────────────────┐
│        users         │         │      user_details        │
│   (24 fields)        │ 1 ── 1  │     (60 fields)          │
│                      │◄────────│                          │
│  _id (ObjectId)      │         │  user_id → users._id     │
│  member_id           │         │                          │
│  username            │         │  address fields           │
│  password            │         │  emergency contacts       │
│  email               │         │  documents & uploads      │
│  name, last_name     │         │  kart info                │
│  role                │         │  admin & status fields    │
│  status              │         │                          │
└──────────┬───────────┘         └──────────────────────────┘
           │
           │ 1 ── N
           ▼
┌──────────────────────┐
│   user_login_codes   │
│   (OTP for login)    │
│                      │
│  user_id → users._id │
│  otp (6 digits)      │
│  expiry_time (5 min) │
│  status (1/2/3)      │
│  remember_me         │
│  TTL: auto-delete 1h │
└──────────────────────┘
```

---

## `users` Collection

**Model File**: `src/models/User.ts`
**Collection Name**: `users`
**Timestamps**: disabled
**Total Fields**: 24

### Schema Definition

| Field | Type | Required | Default | Description |
|-------|------|----------|---------|-------------|
| `member_id` | Number | No | null | Unique member identifier |
| `club_id` | Number | No | null | Associated club reference |
| `admin_id` | Number | No | null | Admin who created this user |
| `parent_user_id` | Number | No | null | Parent user (for child accounts) |
| `parent_member_id` | Number | No | null | Parent member reference |
| `username` | String | **Yes** | — | Login username (typically email) |
| `password` | String | No | null | Hashed password |
| `name` | String | No | null | First / given name |
| `middle_name` | String | No | null | Middle name |
| `last_name` | String | No | null | Last / family name |
| `email` | String | No | null | Email address |
| `mobile` | String | No | null | Mobile phone number |
| `phone` | String | No | null | Home phone number |
| `date_of_birth` | Date | No | null | Date of birth |
| `current_endorsement` | Number | No | null | Current karting endorsement level |
| `gender` | Number | No | null | Gender code |
| `medical_detail_expiry_date` | Date | No | null | Medical clearance expiry date |
| `user_image` | String | No | null | Profile picture filename |
| `role` | Number | No | null | 1=Admin, 11=Club, 13=Member |
| `user_adult` | Number | No | 1 | 1=Adult, 2=Minor |
| `status` | Number | No | null | Account status |
| `change_current_endorsement` | Number | No | null | Endorsement change flag |
| `medical_certificate_required` | Number | No | null | Medical cert required flag |

### Role Values

| Value | Role | Access Level |
|-------|------|-------------|
| 1 | Admin | Full system access |
| 11 | Club | Club-level management |
| 13 | Member | Standard member access |

### User Adult Values

| Value | Meaning |
|-------|---------|
| 1 | Adult |
| 2 | Minor (child account) |

---

## `user_details` Collection

**Model File**: `src/models/UserDetail.ts`
**Collection Name**: `user_details`
**Timestamps**: disabled
**Total Fields**: 60
**Index**: `user_id` field

### Schema Definition by Section

#### Link Field

| Field | Type | Required | Indexed | Description |
|-------|------|----------|---------|-------------|
| `user_id` | Number | **Yes** | **Yes** | Links to `users._id` |

#### Job / Professional

| Field | Type | Description |
|-------|------|-------------|
| `job_title` | String | User's occupation |

#### Residential Address

| Field | Type | Description |
|-------|------|-------------|
| `address` | String | Address line 1 |
| `address1` | String | Address line 2 |
| `city` | String | Suburb / city |
| `state` | String | State (VIC, NSW, WA, QLD, NT, ACT, TAS, SA, NZ, Intl) |
| `country` | String | Country (Australia, NZ, International) |
| `zipcode` | String | Postcode |

#### Mailing Address

| Field | Type | Description |
|-------|------|-------------|
| `mailing_address` | String | Mailing address line 1 |
| `mailing_address1` | String | Mailing address line 2 |
| `mailing_city` | String | Mailing suburb / city |
| `mailing_state` | String | Mailing state |
| `mailing_country` | String | Mailing country |
| `mailing_zipcode` | String | Mailing postcode |

#### Emergency Contact

| Field | Type | Description |
|-------|------|-------------|
| `emergency_contact_person` | String | Emergency contact name |
| `emergency_contact_mobile` | String | Emergency contact mobile number |
| `emergency_contact_phone` | String | Emergency contact home phone |
| `relationship` | String | Relationship (Parent, Guardian, Spouse, Partner, Sibling, Friend, Other) |
| `relationship_other` | String | Custom relationship if "Other" selected |

#### Preferences

| Field | Type | Description |
|-------|------|-------------|
| `offer_organisations` | Number | Receive offers from organisations |
| `offers_third_party` | Number | Receive third-party offers |

#### Personal Details

| Field | Type | Description |
|-------|------|-------------|
| `country_of_birth` | String | Country of birth |
| `gender` | String | Gender |
| `australian_citizen` | Number | Australian citizen flag |

#### Profile Image

| Field | Type | Description |
|-------|------|-------------|
| `user_image_original` | String | Original uploaded image filename |
| `user_image_old` | String | Previous profile image |
| `user_image_approve` | Number | 1=Approved, 2=Waiting approval |
| `user_image_change_date` | Date | Date image was last changed |

#### Identity Proof

| Field | Type | Description |
|-------|------|-------------|
| `identity_proof` | String | Identity proof document filename |
| `identity_proof_upload_date` | Date | Date identity proof was uploaded |
| `identity_proof_approve` | Number | Approval status |

#### Medical Certificate

| Field | Type | Description |
|-------|------|-------------|
| `medical_certificate` | String | Medical certificate filename |
| `medical_certificate_status` | Number | 0=Not done, 1=Pending, 2=Re-submit, 3=Senior, 5=Approved |
| `medical_certificate_upload_date` | Date | Date medical cert was uploaded |

#### WWCC (Working With Children Check)

| Field | Type | Description |
|-------|------|-------------|
| `wwcc_id_number` | String | WWCC ID number |
| `wwcc_expiry_date` | Date | WWCC expiry date |
| `wwcc_licence_upload` | String | WWCC document filename |

#### Kart Information

| Field | Type | Description |
|-------|------|-------------|
| `kart_number` | String | Kart number |
| `transponder_number` | String | Transponder number |
| `kart_type` | String | Type of kart |
| `sponsers` | String | Sponsors |

#### Administrative

| Field | Type | Description |
|-------|------|-------------|
| `parent_user_id` | Number | Parent user reference |
| `promoter` | Number | 1=Yes (is a promoter) |
| `status_verified` | Number | Verification status |
| `reset_token` | String | Password reset token |
| `activation_token` | String | Account activation token |
| `rnum` | Number | Row/reference number |
| `dismiss_notice` | Number | Notice dismissal flag |
| `password_changed` | Date | Last password change date |
| `authcode` | String | Authentication code |
| `created` | Date | Record creation date |
| `modified` | Date | Record last modified date |

---

## Status Values Reference

### Medical Certificate Status (`medical_certificate_status`)

| Value | Status |
|-------|--------|
| 0 | Not done |
| 1 | Pending review |
| 2 | Re-submit required |
| 3 | Senior (exempt) |
| 5 | Approved |

### Profile Image Approval (`user_image_approve`)

| Value | Status |
|-------|--------|
| 1 | Approved |
| 2 | Waiting for approval |

---

## Indexes

### Existing Indexes

| Collection | Field(s) | Type | Purpose |
|------------|----------|------|---------|
| `user_details` | `user_id` | Standard | Fast lookup by user reference |
| `user_login_codes` | `user_id, status, expiry_time` | Compound | OTP lookup queries (ESR rule) |
| `user_login_codes` | `expiry_time` | TTL (1 hour) | Auto-delete expired OTP records |
| `users` | `email` | Collation (strength: 2) | Case-insensitive email lookup for login |

### Recommended Future Indexes

| Collection | Field(s) | Reason |
|------------|----------|--------|
| `users` | `username` (unique) | Login lookups, prevent duplicates |
| `users` | `member_id` (unique) | Member ID lookups |
| `users` | `role` | Filter by role type |
| `users` | `status` | Filter active/inactive users |
| `user_details` | `reset_token` | Password reset token lookups |
| `user_details` | `activation_token` | Account activation lookups |

---

## Migration Reference

The `migration/` folder contains 60+ SQL files from the original PHP application. Key tables that map to current or future collections:

| SQL Table | Status | MongoDB Collection |
|-----------|--------|-------------------|
| `coxy_karting_table_users` | Migrated | `users` |
| `coxy_karting_table_user_details` | Migrated | `user_details` |
| `coxy_karting_table_user_login_codes` | Migrated | `user_login_codes` |
| `coxy_karting_table_licences` | Future | `licences` |
| `coxy_karting_table_karting_events` | Future | `karting_events` |
| `coxy_karting_table_event_entries` | Future | `event_entries` |
| `coxy_karting_table_user_club_memberships` | Future | `user_club_memberships` |
| `coxy_karting_table_clubs` | Future | `clubs` |
| 52+ other tables | Future | TBD |

---

## Query Patterns

### Common Read Patterns

```typescript
// Find user by email (login)
const user = await User.findOne({ email }).select('+password');

// Get user with details
const user = await User.findById(userId);
const details = await UserDetail.findOne({ user_id: userId });

// List members by role
const members = await User.find({ role: 13 }).select('-password');

// Search users
const users = await User.find({
  $or: [
    { name: { $regex: query, $options: 'i' } },
    { last_name: { $regex: query, $options: 'i' } },
    { email: { $regex: query, $options: 'i' } }
  ]
});
```

### Common Write Patterns

```typescript
// Register new user
const user = await User.create({ username, password: hashedPassword, name, ... });
const details = await UserDetail.create({ user_id: user._id, address, ... });

// Update profile
await UserDetail.findOneAndUpdate(
  { user_id: userId },
  { $set: { address, city, state, ... } }
);
```
