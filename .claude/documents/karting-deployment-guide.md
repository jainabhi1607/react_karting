# Karting NSW — Deployment Guide

## Overview

The Karting NSW application is deployed on **Vercel** with automatic deployments triggered by pushes to the `main` branch on GitHub.

## Infrastructure

```
GitHub (main branch)
    │
    ▼ (auto-deploy on push)
Vercel (Serverless)
    │
    ▼ (connection via MONGODB_URI)
MongoDB Atlas (Cloud Database)
```

## Environment Setup

### Required Environment Variables

| Variable | Description | Where to Set |
|----------|-------------|-------------|
| `MONGODB_URI` | MongoDB Atlas connection string | Vercel Dashboard → Settings → Environment Variables |
| `JWT_SECRET` | Secret key for JWT session tokens | Vercel Dashboard → Settings → Environment Variables |
| `RESEND_API_KEY` | Resend email API key (primary) | Vercel Dashboard → Settings → Environment Variables |
| `RESEND_API_KEY1` | Resend email API key (fallback 1) | Vercel Dashboard → Settings → Environment Variables |
| `RESEND_API_KEY2` | Resend email API key (fallback 2) | Vercel Dashboard → Settings → Environment Variables |
| `RESEND_API_KEY3` | Resend email API key (fallback 3) | Vercel Dashboard → Settings → Environment Variables |

### Connection String Format

```
mongodb+srv://<username>:<password>@<cluster>.<region>.mongodb.net/<database>?retryWrites=true&w=majority
```

### Local Development

1. Copy `.env.example` to `.env.local`
2. Add your MongoDB Atlas connection string
3. Run `npm run dev`

```bash
cp .env.example .env.local
# Edit .env.local with your MONGODB_URI
npm run dev
```

## Deployment Pipeline

### Automatic Deployment

1. Push code to `main` branch on GitHub
2. Vercel detects the push and triggers a build
3. Build runs `next build` (production optimized)
4. Deployment goes live automatically

### Manual Deployment

```bash
# Install Vercel CLI (if not installed)
npm i -g vercel

# Deploy to preview
vercel

# Deploy to production
vercel --prod
```

## Build Configuration

### Vercel Settings

| Setting | Value |
|---------|-------|
| Framework Preset | Next.js |
| Build Command | `next build` |
| Output Directory | `.next` |
| Install Command | `npm install` |
| Node.js Version | 18.x or 20.x |

### Build Scripts

```json
{
  "dev": "next dev",
  "build": "next build",
  "start": "next start",
  "lint": "eslint"
}
```

## MongoDB Atlas Configuration

### Recommended Settings

- **Cluster Tier**: M0 (free) for development, M10+ for production
- **Region**: Closest to your Vercel deployment region (e.g., Sydney for AU users)
- **Network Access**: Allow Vercel's IP ranges (or `0.0.0.0/0` for serverless)
- **Database User**: Dedicated user with read/write access to the app database

### Connection Considerations for Serverless

- Mongoose singleton pattern in `src/lib/mongodb.ts` prevents connection exhaustion
- `bufferCommands: false` is set to fail fast rather than queue operations
- Connection is cached globally to survive across serverless invocations in the same container

### Recommended Atlas Network Settings

Since Vercel uses dynamic IPs for serverless functions:
1. Go to Atlas → Network Access
2. Add `0.0.0.0/0` (allow from anywhere) — **secure via strong credentials**
3. Or use Vercel's static IP add-on for stricter whitelisting

## Monitoring

### Vercel Dashboard
- Deployment logs and build output
- Function execution logs
- Analytics (if enabled)
- Error tracking

### MongoDB Atlas Dashboard
- Connection count monitoring
- Query performance metrics
- Storage usage
- Alerts for connection spikes

## Troubleshooting

### Common Issues

#### Build Fails on Vercel
- Check that all dependencies are in `package.json` (not just devDependencies for needed runtime packages)
- Ensure TypeScript has no compilation errors: `npm run build` locally
- Verify environment variables are set in Vercel dashboard

#### MongoDB Connection Timeout
- Verify `MONGODB_URI` is correct in Vercel environment variables
- Check Atlas Network Access allows Vercel IPs
- Ensure database user has correct permissions
- Check Atlas cluster is running (not paused on free tier)

#### Environment Variables Not Loading
- Vercel environment variables must be set in the dashboard, not just `.env.local`
- Restart deployment after adding/changing environment variables
- Verify variable names match exactly (case-sensitive)

#### Cold Start Latency
- First request after idle period may be slow due to serverless cold start
- MongoDB connection establishment adds to cold start time
- The singleton pattern in `mongodb.ts` minimizes reconnection overhead

## Security Checklist

- [x] `MONGODB_URI` is set as an environment variable, never committed to code
- [x] `.env.local` is in `.gitignore`
- [x] MongoDB Atlas user has minimum required permissions
- [x] Strong password on MongoDB Atlas database user
- [x] HTTPS enforced (Vercel does this by default)
- [x] No secrets or API keys in client-side code
- [x] Password hashing with bcryptjs
- [x] JWT session tokens in HTTP-only secure cookies
- [x] OTP-based two-factor login
- [x] OTP auto-expiry (5 min) + TTL auto-delete (1 hour)
- [x] Case-insensitive email lookup via collation (not regex)
- [x] Query projection — only fetching needed fields
- [ ] `JWT_SECRET` set to a strong random value in production
- [ ] Resend domain verified for sending to any email address
- [ ] Rate limiting on login/OTP endpoints (future)
- [ ] CSRF protection on forms (future)

## Scaling Considerations

### Current Setup (Development/MVP)
- Vercel Hobby plan (free)
- MongoDB Atlas M0 (free tier, 512MB storage)
- Suitable for development and initial launch

### Production Recommendations
- Vercel Pro plan for higher limits and analytics
- MongoDB Atlas M10+ for dedicated resources
- Consider MongoDB Atlas connection pooling for high traffic
- Enable Vercel Edge caching for static assets
- Add monitoring and alerting (Vercel + Atlas dashboards)
