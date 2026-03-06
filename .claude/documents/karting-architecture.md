# Karting NSW — Architecture Overview

## Project Summary

Karting NSW is an online account management platform for Karting New South Wales. It enables members to register, manage profiles, and interact with the karting club system. The application is being rebuilt from a legacy PHP/MySQL stack to a modern Next.js/MongoDB architecture.

## Tech Stack

| Layer | Technology | Version |
|-------|-----------|---------|
| Framework | Next.js (App Router) | 16.1.6 |
| UI Library | React | 19.2.3 |
| Language | TypeScript | 5.x |
| Styling | Tailwind CSS | v4 |
| Component Library | ShadCN/UI (New York style) | - |
| Icons | Lucide React | 0.575.0 |
| Database | MongoDB (Atlas) | - |
| ORM | Mongoose | 9.2.2 |
| Auth / JWT | jose | - |
| Password Hashing | bcryptjs | - |
| Email (OTP) | Resend | free tier (4 keys) |
| Image Cropping | react-easy-crop | 5.5.6 |
| Deployment | Vercel | auto-deploy on `main` |

## Application Architecture

```
┌─────────────────────────────────────────────────────┐
│                    Vercel (Hosting)                  │
├─────────────────────────────────────────────────────┤
│                                                     │
│   ┌─────────────────────────────────────────────┐   │
│   │           Next.js 16 App Router             │   │
│   │                                             │   │
│   │   ┌──────────┐  ┌──────────┐  ┌─────────┐  │   │
│   │   │  Pages   │  │  Server  │  │   API   │  │   │
│   │   │ (RSC +   │  │ Actions  │  │ Routes  │  │   │
│   │   │  Client) │  │          │  │         │  │   │
│   │   └────┬─────┘  └────┬─────┘  └────┬────┘  │   │
│   │        │             │             │        │   │
│   │   ┌────┴─────────────┴─────────────┴────┐   │   │
│   │   │         Mongoose ORM Layer          │   │   │
│   │   │   (User Model + UserDetail Model)   │   │   │
│   │   └────────────────┬────────────────────┘   │   │
│   │                    │                        │   │
│   └────────────────────┼────────────────────────┘   │
│                        │                            │
├────────────────────────┼────────────────────────────┤
│                        ▼                            │
│              MongoDB Atlas (Cloud)                  │
│         ┌──────────┐  ┌──────────────┐              │
│         │  users   │  │ user_details │              │
│         │(24 cols) │◄─│  (60 cols)   │              │
│         └──────────┘  └──────────────┘              │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## Folder Structure

```
src/
├── app/                        # Next.js web app (App Router)
│   ├── (auth)/                 # Route group: authentication pages
│   │   ├── login/
│   │   │   ├── page.tsx        # Server component (session check + redirect)
│   │   │   └── login-form.tsx  # Client component (credentials + OTP form)
│   │   ├── dashboard/page.tsx  # Protected dashboard (server component)
│   │   └── register/page.tsx   # Registration page (multi-section form)
│   ├── api/auth/               # Auth API routes
│   │   ├── login/route.ts      # POST: validate credentials, send OTP
│   │   ├── verify-otp/route.ts # POST: verify OTP, create session
│   │   ├── resend-otp/route.ts # POST: resend OTP email
│   │   └── logout/route.ts     # POST: destroy session
│   ├── globals.css             # Global styles, Tailwind v4, ShadCN theme vars
│   ├── layout.tsx              # Root layout (Geist fonts, metadata)
│   └── page.tsx                # Home — redirects to /dashboard or /login
│
├── components/
│   ├── ui/                     # ShadCN/Radix components (9 components)
│   │   ├── button.tsx          # Variants: default, destructive, outline, secondary, ghost, link
│   │   ├── card.tsx            # Card, CardHeader, CardTitle, CardContent, CardFooter
│   │   ├── checkbox.tsx        # Radix checkbox with brand color
│   │   ├── dialog.tsx          # Modal dialog with overlay
│   │   ├── input.tsx           # Styled input with validation states
│   │   ├── label.tsx           # Radix accessible label
│   │   ├── radio-group.tsx     # Radix radio buttons
│   │   ├── select.tsx          # Scrollable select dropdown
│   │   └── slider.tsx          # Range slider (used for zoom)
│   └── profile-picture-cropper.tsx  # Image upload + crop + preview
│
├── models/                     # Mongoose schemas
│   ├── User.ts                 # 24-field user model (auth & identity)
│   ├── UserDetail.ts           # 60-field extended profile model
│   └── UserLoginCode.ts        # OTP login codes (with TTL auto-cleanup)
│
├── lib/                        # Shared utilities
│   ├── auth.ts                 # JWT session management (create/get/destroy)
│   ├── email.ts                # Resend email service (4-key fallback)
│   ├── mongodb.ts              # MongoDB connection singleton
│   └── utils.ts                # clsx + tailwind-merge helper
│
├── hooks/                      # Shared React hooks (future)
├── types/                      # Shared TypeScript types (future)
├── styles/                     # Shared styles (future)
│
└── mobile/                     # React Native mobile app (future)
    ├── screens/
    ├── components/
    ├── navigation/
    └── hooks/

migration/                      # 60+ PHP SQL migration files (reference)
public/                         # Static assets (logo, favicon, images)
```

## Rendering Strategy

| Route | Rendering | Reason |
|-------|-----------|--------|
| `/login` | Server + Client | Server checks session (redirect if logged in), Client renders interactive login + OTP form |
| `/register` | Client Component | Complex interactive form with image cropping, toggleable sections |
| `/dashboard` | Server Component | Protected page, session check, data display |
| `/` | Server Component | Session check, redirects to `/dashboard` or `/login` |
| API routes | Server-side | Database operations, auth validation, OTP generation |

## Data Flow

### Registration Flow
```
User fills form → Client validates → Server Action / API Route
    → Mongoose validates schema → MongoDB inserts documents
    → users collection (core fields)
    → user_details collection (extended fields, linked via user_id)
```

### Authentication Flow (Implemented)
```
1. User submits email + password → POST /api/auth/login
   → Mongoose finds user by email → bcrypt compares password
   → Generates 6-digit OTP → Stores in user_login_codes
   → Sends OTP via Resend email (4-key fallback)

2. User enters OTP → POST /api/auth/verify-otp
   → Validates OTP (not expired, not used, correct code)
   → Creates JWT session cookie (1d or 30d with remember me)
   → Client redirects to /dashboard

3. Protected pages check session server-side via getSession()
   → Valid JWT → render page
   → Invalid/expired → redirect to /login
```

## Design System

### Brand Colors
- **Primary**: `#209BD6` (Karting blue)
- **Dark Base**: `#0C0E3B` (deep navy)
- **Background Gradient**: `linear-gradient(180deg, #0C0E3B 0%, #209BD6 100%)`
- **Profile Section**: `#EEF9FF` (light blue)
- **Form Inputs**: `bg-[#4a6a8a]/50` (dark semi-transparent)
- **Info Cards**: white bg with `#0C0E3B` text

### Typography
- **Primary Font**: Geist Sans (Vercel)
- **Monospace**: Geist Mono
- **Labels**: white, bold, text-sm
- **Section Titles**: white, uppercase, bold, tracking-wide

### Component Patterns
- All buttons/links use `cursor-pointer` (set globally)
- Cards use `rounded-2xl` with subtle shadows
- Inputs use `rounded-lg` with dark backgrounds on gradient pages
- Brand color applied to buttons, checkboxes, and active states

## Environment Variables

| Variable | Description | Location |
|----------|-------------|----------|
| `MONGODB_URI` | MongoDB Atlas connection string | `.env.local` |
| `JWT_SECRET` | JWT signing secret (optional, has default) | `.env.local` |
| `RESEND_API_KEY` | Resend email API key (primary) | `.env.local` |
| `RESEND_API_KEY1` | Resend email API key (fallback 1) | `.env.local` |
| `RESEND_API_KEY2` | Resend email API key (fallback 2) | `.env.local` |
| `RESEND_API_KEY3` | Resend email API key (fallback 3) | `.env.local` |

Template available in `.env.example`.

## Migration from Legacy PHP

The original application was built with PHP and MySQL. The `migration/` folder contains 60+ SQL table definitions used as reference for building the Mongoose schemas. Key mappings:

- `coxy_karting_table_users` → `User` model (24 fields)
- `coxy_karting_table_user_details` → `UserDetail` model (60 fields)
- Remaining 58+ tables will be migrated as features are built

## Future Architecture Plans

1. **Mobile App**: React Native in `src/mobile/` sharing types, hooks, and utilities with web
2. **Registration API**: Server-side user creation with password hashing and validation
3. **Forgot Password**: Password reset flow with email token
4. **Role-Based Guards**: Enforce Admin/Club/Member access per route
5. **Event Management**: Karting events, entries, and results
6. **Licence Management**: Member licences, endorsements, and renewals
7. **Custom Email Domain**: Verify domain on Resend to send to any email address
