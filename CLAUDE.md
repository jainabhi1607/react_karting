# Karting - Project Guide

## Tech Stack
Next.js 16 | React 19 | TypeScript | Tailwind CSS v4 | ShadCN/UI | MongoDB (Mongoose) | Lucide React

## Structure
- `src/app/` — Web app (Next.js App Router)
- `src/mobile/` — Mobile app (React Native - future)
- `src/components/ui/` — Shared ShadCN components
- `src/lib/` — Shared utilities (MongoDB, helpers)
- `src/hooks/` — Shared hooks
- `src/types/` — Shared TypeScript types

## Design Tokens
- Primary: `#209BD6` | Gradient BG: `linear-gradient(#0C0E3B, #209BD6)`
- All links/buttons use `cursor-pointer` globally

## Deployment
Vercel via GitHub (auto-deploy on push to `main`)

## Completed Tasks
- [x] Next.js 16 project initialized with TypeScript, Tailwind v4, App Router
- [x] ShadCN/UI configured (button, input, label, checkbox, card)
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
