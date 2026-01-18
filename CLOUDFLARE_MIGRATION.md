# Cloudflare Deployment Migration Guide

> **Status: COMPLETED** - Migration completed January 2026

This document describes how to migrate the jazzapedia.com deployment from the old repository to this new monorepo.

## Current Setup (Old)

- **Repository**: `travelinman1013/jazzapedia-old-version` (renamed from original)
- **Cloudflare Pages Project**: `jazzapedia`
- **D1 Database**: `jazzapedia` (ID: `3125aa66-6145-43d5-a86d-bd557da61aed`)
- **R2 Bucket**: `media.jazzapedia.com` for portraits

## New Setup

- **Repository**: `travelinman1013/jazzapedia`
- **Build Path**: `apps/web` (monorepo subdirectory)
- **Same D1 database and R2 bucket** (no data migration needed)

## Migration Steps

### Step 1: Update Cloudflare Pages Configuration

In the Cloudflare Dashboard:

1. Go to **Workers & Pages** → **jazzapedia**
2. Go to **Settings** → **Builds & deployments**
3. Update **Git repository** to `travelinman1013/jazzapedia`
4. Update **Build configuration**:
   - **Framework preset**: None (or Astro)
   - **Build command**: `cd apps/web && npm run build && npx pagefind --site dist`
   - **Build output directory**: `apps/web/dist`
   - **Root directory**: `/` (leave as root since we cd in build command)

### Step 2: Environment Variables

Ensure these environment variables are set in Cloudflare Pages:

| Variable | Value |
|----------|-------|
| `NODE_VERSION` | `20` |
| `PNPM_VERSION` | `9` |

### Step 3: Update Build Command (Alternative)

If the above doesn't work, use a custom build command:

```bash
npm install -g pnpm && pnpm install && pnpm turbo build --filter=@jazzapedia/web && cd apps/web && npx pagefind --site dist
```

With build output: `apps/web/dist`

### Step 4: Update GitHub Actions

The deploy workflow at `.github/workflows/deploy.yml` should be updated:

```yaml
name: Deploy to Cloudflare Pages

on:
  push:
    branches: [main]
    paths:
      - 'apps/web/**'
      - 'packages/**'
  workflow_dispatch:

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: pnpm/action-setup@v2
        with:
          version: 9

      - uses: actions/setup-node@v4
        with:
          node-version: 20
          cache: 'pnpm'

      - name: Install dependencies
        run: pnpm install --frozen-lockfile

      - name: Build
        run: pnpm turbo build --filter=@jazzapedia/web

      - name: Generate search index
        run: cd apps/web && npx pagefind --site dist

      - name: Deploy to Cloudflare Pages
        uses: cloudflare/wrangler-action@v3
        with:
          apiToken: ${{ secrets.CLOUDFLARE_API_TOKEN }}
          accountId: ${{ secrets.CLOUDFLARE_ACCOUNT_ID }}
          command: pages deploy apps/web/dist --project-name=jazzapedia
```

### Step 5: Update Sync Workflow

The artist sync workflow at `.github/workflows/sync-artists.yml` needs path updates:

```yaml
- name: Sync to D1
  working-directory: apps/web
  run: npx tsx scripts/sync-incremental.ts --remote

- name: Upload portraits to R2
  working-directory: apps/web
  run: npx tsx scripts/upload-portraits-r2.ts
```

### Step 6: Verify D1 Bindings

The `apps/web/wrangler.toml` already has correct D1 bindings:

```toml
[[d1_databases]]
binding = "DB"
database_name = "jazzapedia"
database_id = "3125aa66-6145-43d5-a86d-bd557da61aed"
```

No changes needed.

### Step 7: Test Deployment

1. Trigger a manual deployment from Cloudflare Dashboard
2. Or push a change to trigger GitHub Actions
3. Verify at https://jazzapedia.com

### Step 8: Clean Up Old Repository

After verifying the new deployment works:

1. Remove the Cloudflare Pages connection from the old repo
2. Archive or delete `travelinman1013/jazzapedia-old-version`

## Rollback Plan

If issues occur:

1. In Cloudflare Pages, switch repository back to `jazzapedia-old-version`
2. Reset build configuration to:
   - Build command: `npm run build && npx pagefind --site dist`
   - Output directory: `dist`

## Key Differences

| Aspect | Old Repo | New Monorepo |
|--------|----------|--------------|
| Build tool | npm | pnpm + Turborepo |
| Web app path | `/` | `apps/web/` |
| Shared code | None | `packages/*` |
| Scraper | Separate repo | `apps/scraper/` |
| Docker support | Partial | Full orchestration |

## Secrets Required

Ensure these secrets exist in GitHub repository settings:

- `CLOUDFLARE_API_TOKEN` - Cloudflare API token with Pages edit permissions
- `CLOUDFLARE_ACCOUNT_ID` - Your Cloudflare account ID
- `R2_ACCESS_KEY_ID` - R2 access key (for portrait uploads)
- `R2_SECRET_ACCESS_KEY` - R2 secret key
