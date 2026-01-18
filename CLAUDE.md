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
├── packages/
│   ├── types/            # @jazzapedia/types - shared interfaces
│   ├── db/               # @jazzapedia/db - database abstraction
│   └── utils/            # @jazzapedia/utils - shared utilities
├── config/
│   ├── scraper/          # Runtime config (not in git)
│   └── nginx/            # Nginx configuration
├── data/                 # SQLite database (mounted in Docker)
└── docker-compose.yml
```

## Key Technologies

- **Monorepo**: Turborepo + pnpm workspaces
- **Web Framework**: Astro with SSR
- **Database**: Cloudflare D1 (production) / SQLite via better-sqlite3 (Docker)
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
- `artists` - Artist profiles with Spotify data
- `songs` - Individual track plays
- `artist_songs` - Junction table
- `daily_logs` - WWOZ daily archive metadata

## Scraper Pipeline

1. **Scrape** - Playwright fetches WWOZ playlist page
2. **Match** - Spotify API searches for each track
3. **Archive** - Writes markdown files + updates Spotify playlist
4. **Persist** - Saves state for day-change detection

Key files:
- `apps/scraper/src/index.ts` - Entry point, CLI commands
- `apps/scraper/src/services/WorkflowService.ts` - Main orchestration
- `apps/scraper/src/modules/archivers/ObsidianArchiver.ts` - Markdown archiver

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
- `/api/*` - API endpoints

## Docker Services

```yaml
services:
  scraper:   # Continuous WWOZ monitoring
  web:       # Astro SSR on port 4321
  nginx:     # Reverse proxy on port 8080
```

Volumes:
- `jazzapedia-data` - Shared SQLite database
- `scraper-state` - Persistent scraper state

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

## Deployment Notes

### Cloudflare
- D1 database binding: `DB`
- KV namespace: `ARTIST_PORTRAITS`
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

Secrets required:
- `CLOUDFLARE_API_TOKEN`
- `CLOUDFLARE_ACCOUNT_ID`

## Gotchas

1. **Turbo caching** - Add env vars to `turbo.json` if they affect builds
2. **better-sqlite3** - Requires native build tools in Docker
3. **Astro adapter** - Selected at build time, not runtime
4. **Scraper state** - Use `STATE_PATH` env var for Docker (don't mount config as read-only)
5. **Type errors** - Web app has pre-existing type errors; CI skips type-check to allow builds
