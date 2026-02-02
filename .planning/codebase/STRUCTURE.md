# Codebase Structure

**Analysis Date:** 2026-02-02

## Directory Layout

```
jazzapedia/
├── apps/                      # Application packages
│   ├── scraper/               # WWOZ scraper + artist discovery
│   └── web/                   # Astro SSR website
├── packages/                  # Shared workspace packages
│   ├── types/                 # TypeScript interfaces
│   ├── db/                    # Database adapter layer
│   └── utils/                 # Shared utilities
├── config/                    # Runtime configuration
│   ├── scraper/               # config.yaml (not in git)
│   └── nginx/                 # nginx.conf
├── content/                   # Artist markdown source (gitignored)
│   └── artists/               # Artist profile cards
├── portraits/                 # Portrait images (gitignored)
├── data/                      # SQLite database (gitignored)
├── scraper-state/             # Persistent scraper state (gitignored)
├── archives/                  # Symlink to Obsidian vault WWOZ archives
├── docs/                      # Documentation and incident reports
├── .github/                   # GitHub Actions workflows
├── .planning/                 # GSD codebase analysis documents
│   └── codebase/              # ARCHITECTURE.md, STRUCTURE.md, etc.
├── .claude/                   # Claude investigation artifacts (gitignored)
├── docker-compose.yml         # Docker orchestration
├── turbo.json                 # Turborepo pipeline config
├── pnpm-workspace.yaml        # pnpm workspace definition
├── package.json               # Root package.json
└── tsconfig.base.json         # Shared TypeScript config
```

## Directory Purposes

**apps/scraper:**
- Purpose: Continuous WWOZ playlist monitoring and artist discovery
- Contains:
  - `src/index.ts` - CLI entry point
  - `src/services/` - WorkflowService, ArtistDiscoveryService, PlaylistArchiver
  - `src/modules/` - scrapers/, enrichers/, archivers/ (IScraper/IEnricher/IArchiver implementations)
  - `src/utils/` - logger, config, date helpers, showGuesser
  - `src/types/` - Local type definitions
  - `artist_discovery_pipeline.py` - Python script for artist profile generation
  - `Dockerfile` - Multi-stage build with Playwright
- Key files:
  - `src/index.ts` - CLI entry point with commander
  - `src/services/WorkflowService.ts` - Main orchestration logic
  - `src/modules/archivers/ObsidianArchiver.ts` - Markdown archiver
  - `package.json` - Defines @jazzapedia/scraper package

**apps/web:**
- Purpose: Astro SSR application for browsing artists and WWOZ archives
- Contains:
  - `src/pages/` - Astro routes (index.astro, artists/, wwoz/, api/)
  - `src/components/` - Reusable Astro components (Infobox, TableOfContents, artist/, jazz/, ui/)
  - `src/layouts/` - Layout components (Layout.astro, WikiArticle.astro)
  - `src/lib/` - Database helpers (db.ts, connections-index.ts, artist-matcher.ts, wiki-links.ts, wwoz.ts)
  - `src/content/wwoz/` - WWOZ archive content collection (Astro content collections, archives/ symlink)
  - `src/data/` - Generated static data (connections-index.json)
  - `src/styles/` - Global styles
  - `scripts/` - Sync scripts (sync-incremental-sqlite.ts, sync-to-d1.ts, sync-wwoz-db.ts, upload-portraits-r2.ts, unified-daily-sync.sh)
  - `migrations/` - SQL migration files for D1
  - `content-deploy/` - Git-tracked artist markdown and portraits for D1 sync
  - `Dockerfile` - Node.js build with pnpm
- Key files:
  - `astro.config.mjs` - Environment-aware adapter selection (Cloudflare vs Node)
  - `src/lib/db.ts` - Database abstraction (getDatabase, getWritableDatabase)
  - `src/pages/index.astro` - Home page with recent artists
  - `src/pages/artists/[slug].astro` - Individual artist page
  - `src/pages/wwoz/[date].astro` - WWOZ daily track log
  - `scripts/unified-daily-sync.sh` - Daily sync orchestrator
  - `wrangler.toml` - Cloudflare Workers/D1 configuration

**packages/types:**
- Purpose: Shared TypeScript type definitions
- Contains:
  - `src/artist.ts` - Artist, ArtistRow, SpotifyData, MusicalConnections, etc.
  - `src/scraper.ts` - ScrapedSong, TrackMatch, IScraper, IEnricher, IArchiver
  - `src/database.ts` - DatabaseAdapter, PreparedStatement, WriteResult
  - `src/index.ts` - Re-exports all types
- Key files: `src/index.ts` - Main entry point for type imports

**packages/db:**
- Purpose: Database adapter abstraction layer (D1/SQLite)
- Contains:
  - `src/adapter.ts` - Environment detection, adapter interfaces
  - `src/sqlite.ts` - SqliteDatabaseAdapter wrapping better-sqlite3
  - `src/d1.ts` - D1 binding extraction from Astro.locals
  - `src/queries.ts` - Reusable queries (getArtistBySlug, upsertArtist, etc.)
  - `src/index.ts` - Main entry point (getDatabase, getDatabaseFromLocals)
- Key files: `src/index.ts` - Main exports (getDatabase function)

**packages/utils:**
- Purpose: Shared utility functions
- Contains: Utility functions reusable across scraper and web

**config/scraper:**
- Purpose: Scraper runtime configuration (not in git, mounted in Docker)
- Contains: config.yaml with Spotify credentials, Perplexity API key, paths
- Key files: config.yaml (template in scraper repo)

**config/nginx:**
- Purpose: Nginx reverse proxy configuration
- Contains: nginx.conf for Docker deployment
- Key files: nginx.conf - Proxies /api/* and / to web:4321, serves /portraits/* statically

**content/artists:**
- Purpose: Source of truth for artist markdown files (gitignored)
- Contains: Artist profile cards generated by ArtistDiscoveryService
- Key files: {artist-slug}.md (frontmatter + bio markdown)

**portraits:**
- Purpose: Artist portrait images (gitignored, synced to R2)
- Contains: JPG portrait files matched to artists
- Key files: {artist_name}.jpg

**data:**
- Purpose: SQLite database storage (gitignored, Docker volume)
- Contains: jazzapedia.db (artists, songs, wwoz_days, wwoz_tracks tables)
- Key files: jazzapedia.db

**scraper-state:**
- Purpose: Persistent scraper state for launchd watcher (gitignored)
- Contains: day_changed.flag, last_run.json
- Key files: day_changed.flag - Triggers post-discovery sync

**archives:**
- Purpose: Symlink to Obsidian vault WWOZ archives
- Contains: YYYY/MM/*.md daily archive files
- Key files: Symlinked to external Obsidian vault location

**.github/workflows:**
- Purpose: CI/CD automation
- Contains: ci.yml, deploy-web.yml, sync-artists.yml
- Key files:
  - `deploy-web.yml` - Deploy web app to Cloudflare on push to main
  - `sync-artists.yml` - Sync artists from content-deploy/ to D1 daily at 5am CT

**.planning/codebase:**
- Purpose: GSD codebase analysis documents
- Contains: ARCHITECTURE.md, STRUCTURE.md, STACK.md, INTEGRATIONS.md, etc.
- Key files: Markdown documents for /gsd commands

**docs:**
- Purpose: Project documentation and incident reports
- Contains: incidents/ directory with postmortem reports
- Key files: Incident reports tracking bugs and fixes

## Key File Locations

**Entry Points:**
- `apps/scraper/src/index.ts`: Scraper CLI entry point
- `apps/web/src/pages/index.astro`: Web homepage
- `apps/web/src/pages/api/`: API route handlers
- `apps/web/scripts/unified-daily-sync.sh`: Daily sync orchestrator

**Configuration:**
- `turbo.json`: Turborepo build pipeline
- `pnpm-workspace.yaml`: Workspace package definitions
- `tsconfig.base.json`: Shared TypeScript compiler options
- `docker-compose.yml`: Docker service orchestration
- `apps/web/astro.config.mjs`: Astro framework config
- `apps/web/wrangler.toml`: Cloudflare D1/Workers bindings
- `config/scraper/config.yaml`: Scraper runtime config (not in git)
- `.env`: Environment variables (not in git)

**Core Logic:**
- `packages/db/src/index.ts`: Database adapter factory
- `apps/web/src/lib/db.ts`: Web-specific database helpers
- `apps/scraper/src/services/WorkflowService.ts`: Scraper orchestration
- `apps/web/scripts/sync-incremental-sqlite.ts`: Content → SQLite sync
- `apps/web/scripts/sync-incremental.ts`: Content → D1 sync
- `apps/web/scripts/sync-wwoz-db.ts`: WWOZ archives → database
- `apps/web/scripts/upload-portraits-r2.ts`: Portraits → R2 bucket

**Testing:**
- No test files detected in current codebase

## Naming Conventions

**Files:**
- Astro pages: `kebab-case.astro` (e.g., `index.astro`, `[slug].astro`)
- TypeScript: `PascalCase.ts` for classes (e.g., `WorkflowService.ts`), `kebab-case.ts` for utilities (e.g., `artist-matcher.ts`)
- Scripts: `kebab-case.ts` or `kebab-case.sh` (e.g., `sync-incremental-sqlite.ts`, `unified-daily-sync.sh`)
- Python scripts: `snake_case.py` (e.g., `artist_discovery_pipeline.py`)

**Directories:**
- Package names: `@jazzapedia/{name}` scoped packages (e.g., `@jazzapedia/db`, `@jazzapedia/types`)
- Folders: `kebab-case` (e.g., `apps/scraper`, `src/pages`)

**Variables:**
- TypeScript: `camelCase` for variables and functions, `PascalCase` for types/interfaces/classes
- Constants: `SCREAMING_SNAKE_CASE` (e.g., `CONFIG`, `EDITABLE_FIELDS`)

**Database:**
- Tables: `snake_case` (e.g., `artists`, `wwoz_days`, `artist_songs`)
- Columns: `snake_case` (e.g., `image_filename`, `content_hash`, `created_at`)

## Where to Add New Code

**New Feature:**
- Primary code: Determine if web or scraper-related
  - Web feature: `apps/web/src/pages/` (new route) or `apps/web/src/components/` (new component)
  - Scraper feature: `apps/scraper/src/services/` (new service) or `apps/scraper/src/modules/` (new module)
- Tests: No test infrastructure currently exists

**New Component/Module:**
- Web component: `apps/web/src/components/{category}/` (e.g., `ui/`, `artist/`, `jazz/`)
- Scraper module: `apps/scraper/src/modules/{type}/` (e.g., `scrapers/`, `enrichers/`, `archivers/`)
- Shared package: Create new workspace package in `packages/{name}/` with package.json and tsconfig.json

**Utilities:**
- Web-specific: `apps/web/src/lib/` (e.g., `artist-matcher.ts`, `wiki-links.ts`)
- Scraper-specific: `apps/scraper/src/utils/` (e.g., `logger.js`, `date.js`)
- Shared: `packages/utils/src/`

**Database Schema:**
- Add migration: `apps/web/migrations/{number}_{name}.sql`
- Update queries: `packages/db/src/queries.ts`
- Update types: `packages/types/src/{category}.ts`

**Sync Scripts:**
- Location: `apps/web/scripts/`
- Naming: `sync-{purpose}.ts` or `{action}-{resource}.ts`
- Add to: `unified-daily-sync.sh` if part of daily pipeline

**GitHub Actions:**
- Location: `.github/workflows/`
- Naming: `{action}-{target}.yml`

## Special Directories

**content-deploy:**
- Purpose: Git-tracked intermediary for D1 sync
- Generated: Yes, by sync-content-deploy.sh (copies from content/artists/ and portraits/)
- Committed: Yes (used by GitHub Actions to sync to D1)
- Pattern: Synced from content/artists/ → content-deploy/artists/, portraits/ → content-deploy/portraits/

**archives (symlink):**
- Purpose: WWOZ daily archives (symlink to Obsidian vault)
- Generated: No (written by scraper ObsidianArchiver)
- Committed: No (symlink target is external)
- Pattern: Do not delete or commit as regular directory

**src/data (web):**
- Purpose: Generated static data files
- Generated: Yes, by build-connections-static.ts at build time
- Committed: Yes (connections-index.json tracked in git)
- Pattern: connections-index.json is ~1.1MB, never read/output in full

**dist:**
- Purpose: Compiled TypeScript output
- Generated: Yes, by `turbo run build`
- Committed: No (.gitignore)
- Pattern: Not included in Docker images (multi-stage builds)

**.astro:**
- Purpose: Astro build cache
- Generated: Yes, by Astro build process
- Committed: No (.gitignore)
- Pattern: Safe to delete

**.turbo:**
- Purpose: Turborepo cache
- Generated: Yes, by turbo commands
- Committed: No (.gitignore)
- Pattern: Safe to delete

**.claude/PRPs:**
- Purpose: Claude investigation and planning artifacts
- Generated: Yes, by /gsd commands
- Committed: No (.gitignore per CLAUDE.md)
- Pattern: Temporary investigation documents

---

*Structure analysis: 2026-02-02*
