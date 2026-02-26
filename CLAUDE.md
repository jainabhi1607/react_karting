# Karting - Project Guide

## Tech Stack
Next.js 16 | React 19 | TypeScript | Tailwind CSS v4 | ShadCN/UI | MongoDB (Mongoose) | Lucide React

## Structure
- `src/app/` — Web app (Next.js App Router)
- `src/mobile/` — Mobile app (React Native - future)
- `src/components/ui/` — Shared ShadCN components (button, input, label, checkbox, card, select, radio-group, dialog, slider)
- `src/components/` — Custom components (profile-picture-cropper)
- `src/models/` — MongoDB models (User, UserDetail)
- `src/lib/` — Shared utilities (mongodb.ts, utils.ts)
- `src/hooks/` — Shared hooks
- `src/types/` — Shared TypeScript types
- `migration/` — PHP SQL migration files (reference for DB structure)

## Design Tokens
- Primary: `#209BD6` | Gradient BG: `linear-gradient(#0C0E3B, #209BD6)`
- Info cards: white bg with `#0C0E3B` text | Profile section: `#EEF9FF` bg
- Form inputs: `bg-[#4a6a8a]/50` with white text
- All links/buttons use `cursor-pointer` globally

## Database
- MongoDB (Mongoose) — split into 2 tables matching PHP structure
- `users` (24 fields) — core auth & identity
- `user_details` (60 fields) — extended profile, address, emergency, documents
- Linked via `user_details.user_id` → `users._id`

## Deployment
Vercel via GitHub (auto-deploy on push to `main`)

## Completed Tasks
- [x] Next.js 16 project initialized with TypeScript, Tailwind v4, App Router
- [x] ShadCN/UI configured (button, input, label, checkbox, card, select, radio-group, dialog, slider)
- [x] Folder structure: `src/app/` (web) + `src/mobile/` (mobile)
- [x] MongoDB connection setup (`src/lib/mongodb.ts`)
- [x] Login page — gradient bg, email/password fields, remember me, show/hide password
- [x] Brand colors applied (`#209BD6` button, checkbox, gradient background)
- [x] Global cursor-pointer for all links/buttons
- [x] Custom logo (`public/logo.png`, 250px width)
- [x] Custom favicon (`public/favicon.ico`)
- [x] Register text: "Click here to create your account with Karting NSW"
- [x] Contact us button removed
- [x] Vercel deployment connected
- [x] Register page — 900px width, white header card, all form sections
- [x] Personal details: title, name, gender, email, password (with hint cards), DOB
- [x] Residential address: address lines, suburb, postcode, state, country
- [x] Mailing address: toggleable via checkbox (shown when unchecked)
- [x] Contact details: mobile phone, home phone
- [x] Emergency contact: person, mobile, home phone, relationship
- [x] Profile picture cropper: react-easy-crop with zoom slider, crop + save modals
- [x] Profile images: user-image.jpg, correct-licence-image.jpg, wrong-licence-image.jpg
- [x] Profile section bg `#EEF9FF` with dark text
- [x] MongoDB models: User (24 fields) + UserDetail (60 fields) matching PHP SQL structure
- [x] SQL migration files added for reference
