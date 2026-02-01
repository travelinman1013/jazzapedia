# CLAUDE.md - Project Context for AI Assistants

## Project Overview

Jazzapedia is a monorepo that tracks and catalogs music played on WWOZ 90.7 FM New Orleans. It consists of:

1. **Scraper** - Continuously monitors WWOZ playlists, matches songs with Spotify, and archives discoveries
2. **Web App** - Astro SSR application for browsing discovered artists and music

## Repository Structure

```
jazzapedia/
├── apps/
│   ├── scraper/          # Node.js + TypeScript + Playwright
│   └── web/              # Astro + TypeScript + Tailwind
│       ├── content-deploy/     # Git-tracked content for Cloudflare deployment
│       │   ├── artists/        # Artist markdown files
│       │   └── portraits/      # Portrait images (for D1 sync matching)
│       ├── scripts/            # Sync and deployment scripts
│       └── src/
│           ├── content/wwoz/   # WWOZ archive files
│           └── data/           # Generated data files (artist-slugs.json)
├── packages/
│   ├── types/            # @jazzapedia/types - shared interfaces
│   ├── db/               # @jazzapedia/db - database abstraction
│   └── utils/            # @jazzapedia/utils - shared utilities
├── config/
│   ├── scraper/          # Runtime config (not in git)
│   └── nginx/            # Nginx configuration
├── content/
│   └── artists/          # Source of truth for artist markdown files
├── portraits/            # Source of truth for portrait images (gitignored)
├── data/                 # SQLite database (mounted in Docker)
└── docker-compose.yml
```

## Key Technologies

- **Monorepo**: Turborepo + pnpm workspaces
- **Web Framework**: Astro with SSR
- **Database**: Cloudflare D1 (production) / SQLite via better-sqlite3 (Docker)
- **Portrait Storage**: Cloudflare R2 (production) / Local filesystem (Docker)
- **Scraping**: Playwright for browser automation
- **APIs**: Spotify Web API for track matching
- **Deployment**: Cloudflare Workers (web) / Docker (self-hosted)

## Build System

```bash
# Turborepo manages the build pipeline
pnpm turbo build              # Build all
pnpm turbo build --filter=@jazzapedia/web  # Build specific package

# Environment-aware builds
DEPLOY_TARGET=docker pnpm turbo build    # Node adapter
DEPLOY_TARGET=cloudflare pnpm turbo build # Cloudflare adapter
```

## Database Architecture

The `@jazzapedia/db` package provides a unified interface:

```typescript
// Adapter pattern for D1 vs SQLite
interface DatabaseAdapter {
  query<T>(sql: string, params?: unknown[]): Promise<T[]>;
  execute(sql: string, params?: unknown[]): Promise<void>;
}
```

Tables:
- `artists` - Artist profiles with Spotify data, `image_filename` references R2 portraits
- `songs` - Individual track plays
- `artist_songs` - Junction table
- `daily_logs` - WWOZ daily archive metadata
- `wwoz_days` - WWOZ daily metadata (date, playlist_url, stats_json)
- `wwoz_tracks` - Individual track plays per day (time, artist, title, status, etc.)
- `search_index` - FTS5 search index for artists

## Data Flow Architecture

### Content Storage Locations

| Data Type | Source of Truth | Git Tracked? | Served From |
|-----------|-----------------|--------------|-------------|
| Artist markdown | `content/artists/` | ❌ NO (gitignored) | Database (D1/SQLite) |
| Artist metadata | `content/artists/artist_connections.json` | ❌ NO (gitignored) | Database |
| Artist markdown (deploy) | `content-deploy/artists/` | ✅ YES (for D1 sync only) | Not served directly |
| Portraits | `portraits/` | ❌ NO (gitignored) | R2 / Local filesystem |
| Portraits (deploy) | `content-deploy/portraits/` | ✅ YES (for D1 sync matching) | Not served directly |
| WWOZ archives | `archives/` symlink | ❌ NO (gitignored) | Database (wwoz_days, wwoz_tracks) |

**Key Principle**: Artist and WWOZ content are **database-driven**, not file-driven. The website reads from D1 (production) or SQLite (Docker), NOT from markdown files. Git only tracks `content-deploy/` as an intermediary for the D1 sync process.

### Git Tracking Strategy

**What's tracked in git:**
- ✅ `content-deploy/artists/*.md` - Artist markdown (intermediary for D1 sync)
- ✅ `content-deploy/portraits/*.jpg` - Portrait copies (for D1 sync matching)
- ✅ Source code (`apps/`, `packages/`, etc.)
- ✅ Configuration files (except secrets)
- ✅ Documentation

**What's NOT tracked (gitignored):**
- ❌ `content/artists/*.md` - Artist source files (synced to database)
- ❌ `content/artists/artist_connections.json` - Artist metadata (synced to database)
- ❌ `/portraits/` - Portrait source directory (synced to R2)
- ❌ `/archives/` - WWOZ archives (symlink, synced to database)
- ❌ `/data/` - SQLite database files
- ❌ `.claude/PRPs/` - Claude investigation/planning artifacts

**Why this architecture?**
1. **Database is the source of truth** for production - Website always reads from D1/SQLite
2. **Smaller git history** - No large binary files or frequently-changing content
3. **Separation of concerns** - Content generation (scraper) is separate from git workflow
4. **content-deploy/ is an intermediary** - Only exists to pass data from local SQLite → GitHub Actions → D1

### Daily Sync Pipeline

The `unified-daily-sync.sh` script orchestrates all sync operations (runs at 4:30am CT via launchd):

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         unified-daily-sync.sh                               │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  Step 1: Local Content → SQLite                                             │
│  ├── sync-incremental-sqlite.ts                                             │
│  ├── Reads: content/artists/, portraits/                                    │
│  └── Writes: data/jazzapedia.db                                             │
│                                                                             │
│  Step 1.5: WWOZ Archives → Database                                         │
│  ├── sync-wwoz-db.ts                                                        │
│  ├── Reads: archives/YYYY/MM/*.md (via src/content/wwoz/)                   │
│  └── Writes: SQLite (wwoz_days, wwoz_tracks tables)                         │
│                                                                             │
│  Step 2: Local → Obsidian Vault (backup)                                    │
│  ├── rsync artists and portraits                                            │
│  └── Destination: Obsidian vault directories                                │
│                                                                             │
│  Step 3: Docker Update                                                      │
│  └── Restart if runtime data changed (SQLite is a volume mount)             │
│                                                                             │
│  Step 3.5: Upload Portraits to R2                                           │
│  ├── upload-portraits-r2.ts                                                 │
│  ├── Uses local manifest: portraits/.r2-uploaded-manifest.json              │
│  └── Only uploads NEW portraits (incremental)                               │
│                                                                             │
│  Step 4: Local Content → Git Push                                           │
│  ├── rsync content/artists/ → content-deploy/artists/                       │
│  ├── rsync portraits/ → content-deploy/portraits/ (for D1 sync matching)    │
│  ├── Commit changes to: content-deploy/ only (WWOZ is database-driven)      │
│  └── Push to origin/main                                                    │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                    GitHub Actions (sync-artists.yml)                        │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  Triggered by: push to main, daily schedule (5am CT), or manual             │
│                                                                             │
│  Job: sync-to-d1                                                            │
│  ├── sync-incremental.ts --remote                                           │
│  ├── Reads: content-deploy/artists/, content-deploy/portraits/              │
│  ├── Writes: Cloudflare D1 database                                         │
│  └── Uses COALESCE to preserve existing image_filename if portrait not found│
│                                                                             │
│  Note: Portrait upload is handled locally, NOT in GitHub Actions            │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### Portrait Handling

Portraits are stored in Cloudflare R2 and served via `media.jazzapedia.com`:

1. **Local storage**: `portraits/` directory (gitignored)
2. **R2 upload**: Direct from local machine via `upload-portraits-r2.ts`
3. **Tracking**: Local manifest file `portraits/.r2-uploaded-manifest.json`
4. **Database reference**: `artists.image_filename` column stores filename (e.g., `dr_john.jpg`)
5. **Web display**: Constructed URL `https://media.jazzapedia.com/portraits/{image_filename}`

**Why portraits are also in content-deploy/portraits/:**
- GitHub Actions runs the D1 sync script which needs to find portrait files to set `image_filename`
- The `findPortraitFile()` function looks in `PORTRAITS_DIR` to match artists to portraits
- Without portraits in content-deploy, new artists would have `image_filename = NULL` in D1

**COALESCE protection:**
- The D1 sync uses `COALESCE(excluded.image_filename, image_filename)` in the UPDATE clause
- This preserves existing `image_filename` if no portrait is found locally
- Prevents accidental NULL overwrites when GitHub Actions can't find a portrait

## Scraper Pipeline

1. **Scrape** - Playwright fetches WWOZ playlist page
2. **Match** - Spotify API searches for each track
3. **Archive** - Writes markdown files + updates Spotify playlist
4. **Persist** - Saves state for day-change detection

Key files:
- `apps/scraper/src/index.ts` - Entry point, CLI commands
- `apps/scraper/src/services/WorkflowService.ts` - Main orchestration
- `apps/scraper/src/modules/archivers/ObsidianArchiver.ts` - Markdown archiver

## Artist Discovery Pipeline

A Python pipeline that creates artist profile cards using Spotify, MusicBrainz, and Perplexity AI.

**How it works:**
1. Triggered after day-change detection (with configurable delay)
2. Parses daily archive markdown for unique artists
3. Enriches with Spotify/MusicBrainz metadata
4. Generates artist cards via Perplexity AI
5. Downloads artist portraits to `portraits/` directory

**Key files:**
- `apps/scraper/artist_discovery_pipeline.py` - Main Python script
- `apps/scraper/src/services/ArtistDiscoveryService.ts` - TypeScript wrapper
- `config/scraper/config.yaml` - Configuration (artistDiscovery section)

**Configuration (config.yaml):**
```yaml
artistDiscovery:
  enabled: true
  scriptPath: '/app/apps/scraper/artist_discovery_pipeline.py'
  pythonPath: 'python3'
  perplexityApiKey: '<key>'
  forceReprocess: false
  timeoutMinutes: 30
  dayChangeDelayHours: 6
  cardsDir: '/vault/Artists'
  imagesDir: '/vault/ArtistPortraits'
```

**Backfill missing artist cards:**
```bash
docker compose exec scraper node dist/index.js --backfill-artists 7
```

## Obsidian Vault Integration

The scraper writes to an Obsidian vault for daily archives and artist cards.

**Setup:**
1. **Archives**: Symlink `./archives` to Obsidian vault location
   ```bash
   ln -s /path/to/obsidian/vault/wwoztracker archives
   ```
2. **Artist cards**: Mounted via docker-compose.yml volumes
   - `/vault/Artists` → Obsidian artist cards directory
   - `/vault/ArtistPortraits` → Obsidian portraits directory

**Docker volume mounts (scraper service):**
```yaml
volumes:
  - ${OBSIDIAN_ARCHIVES:-./archives}:/app/archives
  - /path/to/vault/Artists:/vault/Artists
  - /path/to/vault/ArtistPortraits:/vault/ArtistPortraits
```

## WWOZ Archive Sync

The web app displays WWOZ daily track logs at `/wwoz`. WWOZ pages are database-driven (SSR), eliminating the need to rebuild/redeploy for new content.

**Pipeline:**
1. Scraper writes archives to `/archives/` (symlink to Obsidian vault)
2. `sync-wwoz-db.ts` syncs to SQLite (`wwoz_days`, `wwoz_tracks` tables)
3. `unified-daily-sync.sh` restarts Docker to pick up changes
4. GitHub Actions syncs to D1 on schedule (5am CT daily)

**Database tables:**
- `wwoz_days` - Day metadata: date, playlist_url, stats_json, source_url
- `wwoz_tracks` - Track data: date, time, artist, title, album, genres, show, host, spotify_url, status, confidence

**Manual sync:**
```bash
cd apps/web
npm run sync:wwoz:db              # Sync to local SQLite
npm run sync:wwoz:db:remote       # Sync to D1 (production)
npm run sync:wwoz:db:dry-run      # Preview changes
```

**Key files:**
- `apps/web/scripts/sync-wwoz-db.ts` - Database sync script
- `apps/web/src/pages/wwoz/index.astro` - Archive index (database-driven)
- `apps/web/src/pages/wwoz/[date].astro` - Day detail page (database-driven)

## Web Application

Astro SSR with conditional adapters:

```javascript
// apps/web/astro.config.mjs
const isDocker = process.env.DEPLOY_TARGET === 'docker';
adapter: isDocker ? node({ mode: 'standalone' }) : cloudflare({...})
```

Key routes:
- `/` - Home page with recent artists
- `/artists` - Artist listing with search
- `/artists/[slug]` - Individual artist page
- `/wwoz` - WWOZ daily archive index
- `/wwoz/[date]` - Individual day's track log
- `/wwoz/insights` - Archive statistics dashboard
- `/api/*` - API endpoints

## Docker Services

**Docker is the testing/staging environment.** Always verify changes work in Docker before deploying to Cloudflare production.

```yaml
services:
  scraper:   # Continuous WWOZ monitoring
  web:       # Astro SSR on port 4321
  nginx:     # Reverse proxy on port 8080
```

Volumes:
- `jazzapedia-data` - Shared SQLite database
- `scraper-state` - Persistent scraper state
- `./archives` - Symlink to Obsidian vault (for daily archives)
- `/vault/Artists` - Obsidian artist cards directory
- `/vault/ArtistPortraits` - Obsidian portraits directory

## Sync Scripts Reference

| Script | Purpose | Runs Where |
|--------|---------|------------|
| `sync-incremental-sqlite.ts` | Sync artists to local SQLite | Local (unified-daily-sync.sh) |
| `sync-incremental.ts --remote` | Sync artists to D1 | GitHub Actions |
| `sync-to-d1.ts --remote` | Full sync to D1 (all artists) | Manual only |
| `sync-wwoz-db.ts` | Sync WWOZ archives to database | Local + GitHub Actions |
| `upload-portraits-r2.ts` | Upload portraits to R2 | Local (unified-daily-sync.sh) |
| `unified-daily-sync.sh` | Orchestrates all sync operations | Local (launchd at 4:30am CT) |

## Common Tasks

### Add a new shared type
1. Add to `packages/types/src/index.ts`
2. Run `pnpm turbo build --filter=@jazzapedia/types`
3. Import from `@jazzapedia/types` in consuming packages

### Modify database schema
1. Create migration in `apps/web/migrations/`
2. Run `pnpm --filter @jazzapedia/web migrate` for D1
3. Sync to SQLite: `pnpm --filter @jazzapedia/web sync:sqlite`

### Update Docker configuration
1. Edit `docker-compose.yml` or app Dockerfile
2. Rebuild: `docker compose up -d --build <service>`

### Debug scraper issues
```bash
docker compose logs -f scraper
docker compose exec scraper node dist/index.js --once
```

### Run full daily sync manually
```bash
cd apps/web
./scripts/unified-daily-sync.sh              # Full sync
./scripts/unified-daily-sync.sh --dry-run    # Preview only
./scripts/unified-daily-sync.sh --skip-git   # Local only, no git push
```

### Upload portraits to R2 manually
```bash
cd apps/web
PORTRAITS_DIR=../../portraits npx tsx scripts/upload-portraits-r2.ts
```

### Fix missing portrait in D1
```bash
# Check current state
npx wrangler d1 execute jazzapedia --remote --command "SELECT image_filename FROM artists WHERE slug = 'artist-slug'"

# Update manually
npx wrangler d1 execute jazzapedia --remote --command "UPDATE artists SET image_filename = 'artist_name.jpg' WHERE slug = 'artist-slug'"
```

## Environment Variables

### Scraper
- `CONFIG_PATH` - Path to config.yaml
- `DATABASE_PATH` - SQLite database location
- `STATE_PATH` - Persistent state directory
- `TZ` - Timezone (America/Chicago)

### Web
- `DEPLOY_TARGET` - `docker` or `cloudflare`
- `DATABASE_PATH` - SQLite path (Docker only)
- `HOST` / `PORT` - Server binding

### Sync Scripts
- `CLOUDFLARE_API_TOKEN` - For R2 upload and D1 sync
- `CLOUDFLARE_ACCOUNT_ID` - Cloudflare account ID
- `PORTRAITS_DIR` - Override portrait source directory
- `ARTISTS_DIR` - Override artist markdown directory

## Deployment Notes

### Cloudflare
- D1 database binding: `DB`
- R2 bucket: `jazzapedia-portraits` (served via `media.jazzapedia.com`)
- Wrangler config: `apps/web/wrangler.toml`

### Docker
- Build from monorepo root context
- Use `pnpm` not `npm` in Dockerfiles
- Pass `DEPLOY_TARGET=docker` at build time

## GitHub Actions

| Workflow | File | Trigger |
|----------|------|---------|
| CI | `ci.yml` | Pull requests only |
| Deploy Web | `deploy-web.yml` | Push to main (paths: apps/web, packages) |
| Sync Artists | `sync-artists.yml` | Daily 5am CT or manual |

**Sync Artists Workflow:**
- Syncs artist data from `content-deploy/` to Cloudflare D1
- Does NOT upload portraits (handled locally via unified-daily-sync.sh)
- Uses `content-deploy/portraits/` only for matching `image_filename` during sync

**Daily Sync Pipeline (4:30am CT via launchd):**
1. `unified-daily-sync.sh` runs locally
2. Syncs to SQLite, uploads portraits to R2
3. Syncs content to `content-deploy/`
4. Commits and pushes to `origin/main`
5. Triggers `sync-artists.yml` workflow
6. GitHub Actions syncs to D1

Secrets required:
- `CLOUDFLARE_API_TOKEN`
- `CLOUDFLARE_ACCOUNT_ID`

## Gotchas

1. **Turbo caching** - Add env vars to `turbo.json` if they affect builds
2. **better-sqlite3** - Requires native build tools in Docker
3. **Astro adapter** - Selected at build time, not runtime
4. **Scraper state** - Use `STATE_PATH` env var for Docker (don't mount config as read-only)
5. **Type errors** - Web app has pre-existing type errors; CI skips type-check to allow builds
6. **Archives symlink** - The `./archives` directory is a symlink to the Obsidian vault; don't delete it or commit it as a regular directory
7. **Artist discovery paths** - The `/vault/Artists` and `/vault/ArtistPortraits` mounts in docker-compose.yml use absolute host paths specific to the deployment environment
8. **WWOZ database-driven** - WWOZ pages (`/wwoz`, `/wwoz/[date]`) are served from database (wwoz_days, wwoz_tracks tables), not static content. Artist linking uses database lookup (`SELECT slug FROM artists`). No rebuild needed for new WWOZ content - just database sync.
9. **Dual deployment updates** - Database changes and data fixes must be applied to BOTH Cloudflare D1 (production) AND Docker SQLite (staging). They use separate databases:
   - **Cloudflare D1**: Use `npx wrangler d1 execute jazzapedia --file=<sql> --remote`
   - **Docker SQLite**: Use `sqlite3 ./data/jazzapedia.db < <sql>` then `docker compose restart web`
   - Always verify both deployments work after making data changes
10. **Portrait sync to content-deploy** - Portraits must be synced to `content-deploy/portraits/` AND uploaded to R2. The content-deploy copy is needed for GitHub Actions D1 sync to match `image_filename`. The R2 copy is what's actually served to users.
11. **R2 manifest file** - The `portraits/.r2-uploaded-manifest.json` tracks which portraits have been uploaded to R2. This file is local-only and not committed to git. If lost, portraits will be re-uploaded (idempotent).
12. **image_filename preservation** - The D1 sync scripts use `COALESCE(excluded.image_filename, image_filename)` to preserve existing values if a portrait isn't found. This prevents accidental NULL overwrites.
13. **created_at preservation** - The sync scripts use `INSERT...ON CONFLICT DO UPDATE` to preserve the original `created_at` timestamp, preventing artists from appearing repeatedly in "Recently Added".
14. **.gitignore patterns** - Content source directories are gitignored, only deploy directories are tracked:
   - `content/artists/*.md` - gitignored (source)
   - `content/artists/artist_connections.json` - gitignored (metadata)
   - `content-deploy/artists/` - tracked (for D1 sync)
   - `/portraits/` - gitignored (source)
   - `content-deploy/portraits/` - tracked (for D1 sync matching)
   - `.claude/PRPs/` - gitignored (investigation artifacts)
15. **Artist data is database-driven** - The website serves artist content from the database (D1/SQLite), NOT from markdown files. Artist markdown files in `content/artists/` are the source of truth for the sync pipeline, but they're never committed to git. Only `content-deploy/artists/` (a copy for D1 sync) is tracked.
16. **connections-index.json is too large** - NEVER read, cat, head, tail, diff, or output `apps/web/src/data/connections-index.json` (~1.1MB). This file causes session freezes. Only interact via metadata commands like `ls -la` or `wc -l`. The file is generated by `build-connections-static.ts` from SQLite at build time.
