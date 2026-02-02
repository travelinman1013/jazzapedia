# External Integrations

**Analysis Date:** 2026-02-02

## APIs & External Services

**Music Metadata:**
- Spotify Web API - Track matching, artist metadata enrichment
  - SDK/Client: `spotify-web-api-node` 5.0.2
  - Auth: `SPOTIFY_CLIENT_ID`, `SPOTIFY_CLIENT_SECRET` (OAuth client credentials flow)
  - Rate limit: 0.6s between requests (managed by `bottleneck`)
  - Files: `apps/scraper/src/modules/enrichers/SpotifyEnricher.ts`

- MusicBrainz API - Artist metadata enrichment
  - SDK/Client: `musicbrainzngs` (Python)
  - Auth: None (public API)
  - Files: `apps/scraper/artist_discovery_pipeline.py`

**AI Services:**
- Perplexity AI (via OpenAI SDK) - Artist biography generation and research
  - SDK/Client: `openai` 2.6.0+ (Python)
  - Auth: `PERPLEXITY_API_KEY`
  - Model: `sonar-pro` with temperature 0.3, max tokens 4096
  - Base URL: `https://api.perplexity.ai`
  - Files: `apps/scraper/artist_discovery_pipeline.py`

**Web Scraping:**
- WWOZ 90.7 FM Playlist Page - Source of truth for daily playlist data
  - Method: Playwright headless browser automation
  - Target: WWOZ official website playlist page
  - Files: `apps/scraper/src/modules/scrapers/WWOZScraper.ts`

## Data Storage

**Databases:**
- Cloudflare D1 (Production)
  - Connection: Wrangler bindings via `wrangler.toml`
  - Client: `@cloudflare/workers-types` D1Database interface
  - Binding: `DB`
  - Database ID: `3125aa66-6145-43d5-a86d-bd557da61aed`
  - Files: `apps/web/src/lib/db.ts`, `apps/web/wrangler.toml`

- SQLite (Docker/Local)
  - Connection: `DATABASE_PATH` env var (`/data/jazzapedia.db`)
  - Client: `better-sqlite3` 11.0.0
  - Files: `apps/web/src/lib/db.ts`, `packages/db/src/index.ts`

**File Storage:**
- Cloudflare R2 (Production portraits)
  - Bucket: `jazzapedia-portraits`
  - Public URL: `https://media.jazzapedia.com`
  - Upload script: `apps/web/scripts/upload-portraits-r2.ts`
  - Manifest: `portraits/.r2-uploaded-manifest.json` (local tracking file)
  - Files: `apps/web/src/env.d.ts` (R2Bucket binding), `apps/web/src/lib/db.ts` (URL construction)

- Local filesystem (Docker portraits)
  - Docker volume: `jazzapedia-portraits` mapped to `./portraits`
  - Served by: nginx reverse proxy

**Caching:**
- None detected

## Authentication & Identity

**Auth Provider:**
- Custom password-based auth for inline editing
  - Implementation: Simple password check via `EDIT_PASSWORD` env var
  - Files: `apps/web/src/pages/api/auth/verify.ts`, `apps/web/src/pages/api/artists/[slug]/edit.ts`

## Monitoring & Observability

**Error Tracking:**
- None detected

**Logs:**
- Console logging via `chalk` (scraper)
- Docker logs via `docker compose logs`
- Cloudflare Workers logs via Wrangler dashboard

## CI/CD & Deployment

**Hosting:**
- Cloudflare Pages - Web app (SSR with Workers)
- Self-hosted Docker - Scraper service + SQLite staging environment

**CI Pipeline:**
- GitHub Actions
  - `.github/workflows/deploy-web.yml` - Deploy web to Cloudflare Pages on push to main
  - `.github/workflows/sync-artists.yml` - Sync artist data to D1 (daily 5am CT + on content-deploy changes)
  - `.github/workflows/deploy-scraper.yml` - Deploy scraper (manual or on scraper changes)
  - `.github/workflows/ci.yml` - Build validation on PRs

**Local Automation:**
- Launchd (macOS) - Runs `unified-daily-sync.sh` at 4:30am CT
  - Syncs content to SQLite
  - Uploads portraits to R2
  - Commits and pushes to git
  - Triggers GitHub Actions sync workflow

## Environment Configuration

**Required env vars:**

**Scraper:**
- `SPOTIFY_CLIENT_ID` - Spotify API client ID
- `SPOTIFY_CLIENT_SECRET` - Spotify API client secret
- `PERPLEXITY_API_KEY` - Perplexity AI API key
- `CONFIG_PATH` - Path to `config.yaml` (Docker: `/app/apps/scraper/config/config.yaml`)
- `DATABASE_PATH` - SQLite database path (Docker: `/data/jazzapedia.db`)
- `STATE_PATH` - Scraper state directory (Docker: `/app/state`)
- `TZ` - Timezone (Docker: `America/Chicago`)

**Web (Docker):**
- `DEPLOY_TARGET` - Set to `docker` for Node.js adapter
- `DATABASE_PATH` - SQLite database path (Docker: `/data/jazzapedia.db`)
- `EDIT_PASSWORD` - Password for inline editing feature

**Web (Cloudflare):**
- `DEPLOY_TARGET` - Set to `cloudflare` or unset for Cloudflare adapter
- `CLOUDFLARE_API_TOKEN` - Wrangler CLI authentication
- `CLOUDFLARE_ACCOUNT_ID` - Cloudflare account identifier
- `EDIT_PASSWORD` - Password for inline editing (set via `wrangler secret put`)

**Sync Scripts:**
- `CLOUDFLARE_API_TOKEN` - For R2 uploads and D1 migrations
- `CLOUDFLARE_ACCOUNT_ID` - Cloudflare account identifier
- `PORTRAITS_DIR` - Portrait source directory (default: `./portraits`)
- `ARTISTS_DIR` - Artist markdown directory (default: `./content/artists`)

**Secrets location:**
- Local: `.env` files (gitignored)
- Docker: Environment section in `docker-compose.yml`
- Cloudflare: Set via `wrangler secret put <SECRET_NAME>`
- GitHub Actions: Repository secrets

## Webhooks & Callbacks

**Incoming:**
- None detected

**Outgoing:**
- None detected

---

*Integration audit: 2026-02-02*
