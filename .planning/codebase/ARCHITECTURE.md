# Architecture

**Analysis Date:** 2026-02-02

## Pattern Overview

**Overall:** Multi-adapter monorepo with dual deployment targets

**Key Characteristics:**
- Turborepo-managed monorepo with workspace packages
- Adapter pattern for dual database backends (D1/SQLite)
- Environment-aware build system (Cloudflare vs Docker)
- Pipeline architecture for data ingestion and enrichment
- SSR web application with database-driven content

## Layers

**Scraper Pipeline (apps/scraper):**
- Purpose: Continuously monitor WWOZ playlist, enrich with Spotify, archive to database
- Location: `apps/scraper/src/`
- Contains: Services, modules (scrapers/enrichers/archivers), utilities
- Depends on: @jazzapedia/types, @jazzapedia/db, @jazzapedia/utils
- Used by: Docker container, standalone execution

**Web Application (apps/web):**
- Purpose: SSR website for browsing artists and WWOZ archives
- Location: `apps/web/src/`
- Contains: Astro pages, components, layouts, API routes
- Depends on: @jazzapedia/types, @jazzapedia/db, Astro framework
- Used by: Cloudflare Workers (production), Node.js (Docker)

**Shared Packages:**
- Purpose: Reusable abstractions across applications
- Location: `packages/`
- Contains:
  - `packages/types/` - TypeScript interfaces (Artist, DatabaseAdapter, Scraper types)
  - `packages/db/` - Database adapter layer (D1/SQLite abstraction)
  - `packages/utils/` - Shared utilities
- Depends on: None (types), better-sqlite3 (db)
- Used by: Both apps/scraper and apps/web

**Sync Scripts (apps/web/scripts):**
- Purpose: Sync content from filesystem to databases (SQLite, D1)
- Location: `apps/web/scripts/`
- Contains: sync-incremental-sqlite.ts, sync-to-d1.ts, sync-wwoz-db.ts, upload-portraits-r2.ts
- Depends on: @jazzapedia/db, filesystem content
- Used by: unified-daily-sync.sh, GitHub Actions

**Infrastructure Layer:**
- Purpose: Orchestration and deployment
- Location: Root directory
- Contains: docker-compose.yml, Dockerfiles, nginx config, GitHub Actions workflows
- Depends on: All application layers
- Used by: Docker Engine, Cloudflare Workers, GitHub CI/CD

## Data Flow

**WWOZ Scraping Pipeline:**

1. WWOZScraper scrapes playlist page (Playwright)
2. SpotifyEnricher matches tracks to Spotify API
3. ObsidianArchiver writes markdown to archives/ (Obsidian vault symlink)
4. ArtistDiscoveryService generates artist profile cards via Perplexity AI
5. Artist cards written to content/artists/, portraits to portraits/
6. WorkflowService orchestrates continuous monitoring with day-change detection

**Content Sync Pipeline:**

1. unified-daily-sync.sh runs at 4:30am CT (launchd)
2. sync-incremental-sqlite.ts syncs content/artists/ → data/jazzapedia.db (SQLite)
3. sync-wwoz-db.ts syncs archives/ → wwoz_days, wwoz_tracks tables
4. upload-portraits-r2.ts uploads portraits/ → Cloudflare R2 bucket
5. Docker container restarts to pick up SQLite changes
6. Git push to content-deploy/ triggers GitHub Actions
7. GitHub Actions runs sync-incremental.ts → Cloudflare D1

**Web Request Flow (Cloudflare):**

1. Request hits Cloudflare Workers (Astro SSR)
2. Page component calls getDatabaseFromLocals(Astro.locals)
3. @jazzapedia/db returns D1 binding from runtime.env.DB
4. Page queries D1 using prepare().bind().all() interface
5. Portrait URLs constructed as https://media.jazzapedia.com/portraits/{filename}
6. Response rendered and cached with stale-while-revalidate headers

**Web Request Flow (Docker):**

1. Request hits Nginx reverse proxy on port 8080
2. Nginx proxies to Astro Node.js server on port 4321
3. Page component calls getDatabaseFromLocals(Astro.locals)
4. @jazzapedia/db returns SqliteDatabaseAdapter wrapping better-sqlite3
5. Page queries SQLite at /data/jazzapedia.db (volume mount)
6. Portrait URLs served directly by Nginx from /portraits/ path
7. Response rendered (no R2, local filesystem)

**State Management:**
- Scraper state persisted to scraper-state/ (bind mount for launchd watcher)
- Artist data persisted to SQLite (Docker) and D1 (Cloudflare)
- Content source of truth: content/artists/ (gitignored)
- Git tracking: content-deploy/ (intermediary for D1 sync)
- Portrait storage: portraits/ (local), R2 bucket (production)

## Key Abstractions

**DatabaseAdapter (packages/db):**
- Purpose: Unified interface for D1 and SQLite queries
- Examples: `packages/db/src/adapter.ts`, `packages/db/src/sqlite.ts`, `packages/db/src/d1.ts`
- Pattern: Adapter pattern wrapping better-sqlite3 with D1-compatible async API
- Usage: `db.prepare(sql).bind(...values).all()` works identically across environments

**Module Pattern (scraper):**
- Purpose: Pluggable pipeline components with interfaces
- Examples: `apps/scraper/src/modules/scrapers/WWOZScraper.ts` (IScraper), `apps/scraper/src/modules/enrichers/SpotifyEnricher.ts` (IEnricher), `apps/scraper/src/modules/archivers/ObsidianArchiver.ts` (IArchiver)
- Pattern: Interface-based dependency injection
- Usage: WorkflowService orchestrates IScraper → IEnricher → IArchiver

**Environment Detection:**
- Purpose: Runtime detection for adapter selection
- Examples: `packages/db/src/adapter.ts` detectEnvironment(), `apps/web/astro.config.mjs` isDocker check
- Pattern: Check process.env.DEPLOY_TARGET === 'docker'
- Usage: Determines Node.js vs Cloudflare adapter, SQLite vs D1, local portraits vs R2

**Content Hash Tracking:**
- Purpose: Incremental sync optimization
- Examples: `apps/web/scripts/sync-incremental-sqlite.ts`, artists.content_hash column
- Pattern: MD5 hash of file content compared against database column
- Usage: Only sync artists whose file content has changed

## Entry Points

**Scraper CLI (apps/scraper/src/index.ts):**
- Location: `apps/scraper/src/index.ts`
- Triggers: Docker container CMD, manual execution
- Responsibilities: Parse CLI args, initialize WorkflowService, run continuous monitoring or one-time commands (--once, --snapshot, --backfill-artists)

**Web SSR (apps/web/src/pages):**
- Location: `apps/web/src/pages/*.astro`
- Triggers: HTTP requests to Cloudflare Workers or Node.js server
- Responsibilities: Query database, render HTML, serve API endpoints

**Sync Orchestrator (apps/web/scripts/unified-daily-sync.sh):**
- Location: `apps/web/scripts/unified-daily-sync.sh`
- Triggers: launchd at 4:30am CT daily
- Responsibilities: Run all sync operations (SQLite, WWOZ, R2, git push)

**GitHub Actions (Cloudflare Deploy):**
- Location: `.github/workflows/deploy-web.yml`, `.github/workflows/sync-artists.yml`
- Triggers: Push to main (deploy-web), daily 5am CT or manual (sync-artists)
- Responsibilities: Build Astro app with Cloudflare adapter, deploy to Workers, sync D1 database

**Docker Compose:**
- Location: `docker-compose.yml`
- Triggers: `docker compose up`
- Responsibilities: Orchestrate scraper, web, nginx services with shared SQLite volume

## Error Handling

**Strategy:** Graceful degradation with logging

**Patterns:**
- Database unavailable → return null from getDatabase(), pages redirect or show error
- Scraper failures → logged via Logger.error(), continuous mode retries on next interval
- Sync failures → logged and abort, preserve existing state
- API rate limits → Bottleneck library rate-limiting for Spotify API
- Missing portraits → COALESCE preserves existing image_filename, prevents NULL overwrites

## Cross-Cutting Concerns

**Logging:**
- Scraper: Custom Logger utility (`apps/scraper/src/utils/logger.js`) with chalk colors
- Web: Console logging in API routes and pages
- Scripts: Timestamped console output with ✓/✗ symbols

**Validation:**
- Artist fields: FIELD_VALIDATIONS in @jazzapedia/types, validateFieldValue() in @jazzapedia/db
- Database writes: INSERT...ON CONFLICT DO UPDATE with COALESCE to preserve created_at, image_filename

**Authentication:**
- Web inline editing: Password check via EDIT_PASSWORD env var (Cloudflare secret)
- Scraper: Spotify OAuth client credentials flow
- GitHub Actions: CLOUDFLARE_API_TOKEN secret for D1/R2 access

---

*Architecture analysis: 2026-02-02*
