# Karting NSW — API & Routes Documentation

## Overview

The application uses **Next.js 16 App Router** for routing. Currently the app has client-side pages for authentication. API routes and server actions will be added as backend functionality is built.

## Current Routes

### Pages

| Route | File | Type | Description |
|-------|------|------|-------------|
| `/` | `src/app/page.tsx` | Server Component | Redirects to `/dashboard` (authenticated) or `/login` |
| `/login` | `src/app/(auth)/login/page.tsx` | Server + Client | Login form with OTP verification (redirects to `/dashboard` if already logged in) |
| `/register` | `src/app/(auth)/register/page.tsx` | Client Component | Registration form (6 sections, image cropper) |
| `/dashboard` | `src/app/(auth)/dashboard/page.tsx` | Server Component | Protected dashboard (redirects to `/login` if not authenticated) |

### Route Groups

- `(auth)` — Groups authentication-related pages. Does not affect URL structure.

---

## Implemented API Routes

### Authentication

| Method | Endpoint | Description | Status |
|--------|----------|-------------|--------|
| `POST` | `/api/auth/login` | Validate email/password, generate OTP, send via Resend email | Done |
| `POST` | `/api/auth/verify-otp` | Verify 6-digit OTP, create JWT session cookie | Done |
| `POST` | `/api/auth/resend-otp` | Resend OTP to user's email | Done |
| `POST` | `/api/auth/logout` | Destroy session cookie, redirect to `/login` | Done |

### Planned API Routes

| Method | Endpoint | Description |
|--------|----------|-------------|
| `POST` | `/api/auth/register` | Create new user account (users + user_details) |
| `POST` | `/api/auth/forgot-password` | Send password reset email |
| `POST` | `/api/auth/reset-password` | Reset password with token |
| `POST` | `/api/auth/activate` | Activate account with activation token |

### User Management

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/users` | List users (admin, paginated) |
| `GET` | `/api/users/:id` | Get user profile |
| `PUT` | `/api/users/:id` | Update user profile |
| `DELETE` | `/api/users/:id` | Deactivate user account |
| `PUT` | `/api/users/:id/image` | Upload/update profile image |
| `PUT` | `/api/users/:id/password` | Change password |

### User Details

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/users/:id/details` | Get extended profile details |
| `PUT` | `/api/users/:id/details` | Update address, emergency contact, etc. |
| `PUT` | `/api/users/:id/documents` | Upload identity proof, medical cert, WWCC |

### Future Endpoints (based on migration tables)

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET/POST` | `/api/clubs` | Club management |
| `GET/POST` | `/api/memberships` | Club membership management |
| `GET/POST` | `/api/licences` | Licence management |
| `GET/POST` | `/api/events` | Karting event management |
| `GET/POST` | `/api/events/:id/entries` | Event entry management |

---

## Server Actions (Alternative to API Routes)

Next.js 16 supports server actions as an alternative to API routes. These are recommended for form submissions:

### Registration Action (Planned)

```typescript
// src/app/(auth)/register/actions.ts
'use server'

export async function registerUser(formData: FormData) {
  // 1. Validate input
  // 2. Hash password
  // 3. Create User document
  // 4. Create UserDetail document
  // 5. Send activation email
  // 6. Return success/error
}
```

### Login Action (Planned)

```typescript
// src/app/(auth)/login/actions.ts
'use server'

export async function loginUser(formData: FormData) {
  // 1. Validate credentials
  // 2. Find user by email
  // 3. Compare password hash
  // 4. Create session/JWT
  // 5. Set cookies
  // 6. Redirect to dashboard
}
```

---

## Request/Response Formats

### Registration Request

```json
{
  "title": "Mr",
  "name": "John",
  "middle_name": "",
  "last_name": "Smith",
  "gender": "male",
  "email": "john@example.com",
  "password": "SecurePass123!",
  "date_of_birth": "1990-05-15",
  "address": "123 Main St",
  "address1": "",
  "city": "Sydney",
  "state": "NSW",
  "country": "Australia",
  "zipcode": "2000",
  "mailing_same_as_residential": true,
  "mobile": "0412345678",
  "phone": "",
  "emergency_contact_person": "Jane Smith",
  "emergency_contact_mobile": "0498765432",
  "emergency_contact_phone": "",
  "relationship": "Spouse",
  "profile_image": "<base64 encoded JPEG>"
}
```

### Login Request (Step 1: Credentials)

```json
{
  "email": "john@example.com",
  "password": "SecurePass123!",
  "rememberMe": true
}
```

### Login Response (Step 1)

```json
{
  "success": true,
  "message": "OTP sent to your email",
  "userId": "507f1f77bcf86cd799439011"
}
```

### OTP Verification Request (Step 2)

```json
{
  "userId": "507f1f77bcf86cd799439011",
  "otp": "123456"
}
```

### OTP Verification Response (Step 2)

```json
{
  "success": true,
  "message": "Login successful"
}
```

### User Profile Response

```json
{
  "id": "507f1f77bcf86cd799439011",
  "member_id": 12345,
  "name": "John",
  "last_name": "Smith",
  "email": "john@example.com",
  "mobile": "0412345678",
  "role": 13,
  "status": 1,
  "user_image": "profile_12345.jpg",
  "details": {
    "address": "123 Main St",
    "city": "Sydney",
    "state": "NSW",
    "emergency_contact_person": "Jane Smith",
    "emergency_contact_mobile": "0498765432"
  }
}
```

### Error Response Format

```json
{
  "error": true,
  "message": "Validation failed",
  "fields": {
    "email": "Email already registered",
    "password": "Password must be at least 8 characters"
  }
}
```

---

## Authentication Strategy (Implemented)

### Approach
- JWT session tokens stored in HTTP-only cookies (via `jose` library)
- Password hashing with `bcryptjs`
- OTP-based two-factor login via email (Resend API)
- Server-side session checks on protected pages

### Login Flow
```
1. User submits email + password → POST /api/auth/login
2. Server validates credentials against MongoDB (bcrypt compare)
3. Server generates 6-digit OTP, stores in user_login_codes collection
4. OTP sent to user's email via Resend (with multi-key fallback for rate limits)
5. User enters OTP → POST /api/auth/verify-otp
6. Server validates OTP (not expired, not used, correct code)
7. JWT session cookie created (1 day or 30 days if "remember me")
8. User redirected to /dashboard
```

### Session Management
- **Cookie name**: `karting_session`
- **JWT algorithm**: HS256 (via `jose`)
- **Remember me checked**: 30-day session (Max-Age: 2,592,000s)
- **Remember me unchecked**: 1-day session (Max-Age: 86,400s)
- **Cookie flags**: httpOnly, secure (production), sameSite=lax, path=/
- **Session check**: Server-side in each protected page via `getSession()` in `src/lib/auth.ts`

### OTP System
- **Model**: `UserLoginCode` in `src/models/UserLoginCode.ts`
- **OTP length**: 6 digits (random)
- **Expiry**: 5 minutes
- **Status codes**: 1=Available, 2=Used, 3=Expired
- **Previous OTPs**: Expired when new one is generated
- **Email delivery**: Resend API with 4-key fallback (400 emails/day)

### Email Service
- **Provider**: Resend (free tier: 100 emails/day per key)
- **Keys**: 4 API keys with automatic fallback on rate limit
- **Sender**: `Karting NSW <onboarding@resend.dev>`
- **Config**: `src/lib/email.ts`

### Page-Level Auth Guards
- `/login` — Server component checks session → redirects to `/dashboard` if logged in
- `/dashboard` — Server component checks session → redirects to `/login` if not logged in
- `/` — Server component checks session → redirects accordingly

### Role-Based Access Control

| Role | Value | Can Access |
|------|-------|------------|
| Admin | 1 | All routes, user management, system config |
| Club | 11 | Club management, member management, events |
| Member | 13 | Own profile, event registration, licence viewing |

---

## Validation Rules

### Registration Form

| Field | Rules |
|-------|-------|
| `name` | Required, max 100 chars |
| `last_name` | Required, max 100 chars |
| `email` | Required, valid email format, unique |
| `password` | Required, min 8 chars, must include uppercase, lowercase, number |
| `date_of_birth` | Required, valid date, user must be reasonable age |
| `address` | Required, max 255 chars |
| `city` | Required, max 100 chars |
| `state` | Required, must be valid state code |
| `country` | Required, must be valid country |
| `zipcode` | Required, valid postcode format |
| `mobile` | Required, valid Australian phone format |
| `emergency_contact_person` | Required |
| `emergency_contact_mobile` | Required, valid phone format |
| `relationship` | Required, must be valid option |

### Login Form

| Field | Rules |
|-------|-------|
| `email` | Required, valid email format |
| `password` | Required |
