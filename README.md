# Jazzapedia

A unified monorepo for tracking and discovering music played on WWOZ New Orleans. Combines a WWOZ playlist scraper with a web application for browsing artists and their music.

## Architecture

```
jazzapedia/
├── apps/
│   ├── scraper/          # WWOZ playlist scraper (Node.js + Playwright)
│   └── web/              # Astro SSR web application
│       ├── content-deploy/     # Git-tracked content for Cloudflare
│       │   ├── artists/        # Artist markdown files
│       │   └── portraits/      # Portrait images (for D1 sync)
│       └── scripts/            # Sync and deployment scripts
├── packages/
│   ├── types/            # Shared TypeScript types
│   ├── db/               # Database abstraction (SQLite + Cloudflare D1)
│   └── utils/            # Shared utilities
├── content/
│   └── artists/          # Source of truth for artist data
├── portraits/            # Source of truth for portraits (gitignored)
├── config/
│   ├── scraper/          # Scraper configuration
│   └── nginx/            # Nginx reverse proxy config
└── docker-compose.yml    # Container orchestration
```

## Features

### Scraper (`@jazzapedia/scraper`)
- Continuously scrapes WWOZ playlist data
- Matches tracks with Spotify API
- Adds discovered tracks to a Spotify playlist
- Archives daily playlists as markdown files
- AI-powered artist discovery with biography generation

### Web (`@jazzapedia/web`)
- Browse 4,500+ artists discovered on WWOZ
- View artist details, genres, portraits, and play history
- WWOZ daily archive browser
- Search and filter functionality
- Supports both Cloudflare Workers (production) and Docker (self-hosted)

## Data Flow

```
┌─────────────────────┐    ┌──────────────────────┐    ┌─────────────────────┐
│   WWOZ Scraper      │───▶│  content/artists/    │───▶│  Local SQLite       │
│   (Docker)          │    │  portraits/          │    │  (Docker staging)   │
└─────────────────────┘    └──────────────────────┘    └─────────────────────┘
                                     │
                    ┌────────────────┼────────────────┐
                    ▼                ▼                ▼
            ┌──────────────┐  ┌──────────────┐  ┌──────────────┐
            │ content-deploy│  │ Cloudflare   │  │ Git Push     │
            │ (for D1 sync) │  │ R2 Bucket    │  │ to GitHub    │
            └──────────────┘  └──────────────┘  └──────────────┘
                    │                │                │
                    └────────────────┼────────────────┘
                                     ▼
                          ┌─────────────────────┐
                          │  GitHub Actions     │
                          │  sync-artists.yml   │
                          └─────────────────────┘
                                     │
                                     ▼
                          ┌─────────────────────┐
                          │  Cloudflare D1      │
                          │  (production)       │
                          └─────────────────────┘
```

**Key points:**
- Artist markdown and portraits are stored locally (`content/artists/`, `portraits/`)
- Local sync updates SQLite (Docker) and uploads portraits to R2
- Git push triggers GitHub Actions which syncs to Cloudflare D1
- Portraits served from R2 via `media.jazzapedia.com`

## Quick Start

### Prerequisites
- Node.js 20+
- pnpm 9+
- Docker & Docker Compose (for containerized deployment)

### Development

```bash
# Install dependencies
pnpm install

# Run all apps in development mode
pnpm dev

# Run specific app
pnpm --filter @jazzapedia/web dev
pnpm --filter @jazzapedia/scraper dev
```

### Docker Deployment

```bash
# Build and start all services
docker compose up -d --build

# View logs
docker compose logs -f scraper
docker compose logs -f web

# Access the web app
open http://localhost:8080
```

### Services

| Service | Port | Description |
|---------|------|-------------|
| nginx | 8080 | Reverse proxy + static files |
| web | 4321 (internal) | Astro SSR application |
| scraper | - | Continuous WWOZ scraper |

## Daily Sync

The `unified-daily-sync.sh` script runs daily (4:30am CT via launchd) and:

1. Syncs artist content to local SQLite
2. Generates artist slugs index
3. Syncs WWOZ archives
4. Updates Docker (rebuild or restart as needed)
5. Uploads new portraits to Cloudflare R2
6. Syncs content to `content-deploy/` and pushes to git
7. Triggers GitHub Actions to sync to Cloudflare D1

```bash
# Manual sync
cd apps/web
./scripts/unified-daily-sync.sh              # Full sync
./scripts/unified-daily-sync.sh --dry-run    # Preview only
./scripts/unified-daily-sync.sh --skip-git   # Local only
```

## Configuration

### Scraper Configuration

Create `config/scraper/config.yaml`:

```yaml
dryRun: false
wwoz:
  playlistUrl: 'https://wwoz.org/programs/playlists'
  scrapeIntervalSeconds: 3600
spotify:
  clientId: 'YOUR_CLIENT_ID'
  clientSecret: 'YOUR_CLIENT_SECRET'
  refreshToken: 'YOUR_REFRESH_TOKEN'
  userId: 'YOUR_USER_ID'
  staticPlaylistId: 'YOUR_PLAYLIST_ID'
archive:
  enabled: true
  basePath: '/app/archives'
  deduplicationWindowMinutes: 60
artistDiscovery:
  enabled: true
  perplexityApiKey: '<key>'
  dayChangeDelayHours: 6
```

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DATABASE_PATH` | SQLite database path | `/data/jazzapedia.db` |
| `CONFIG_PATH` | Scraper config path | `config/config.yaml` |
| `STATE_PATH` | Scraper state directory | `config/state` |
| `DEPLOY_TARGET` | Build target (`docker` or `cloudflare`) | `cloudflare` |
| `CLOUDFLARE_API_TOKEN` | For R2 upload and D1 sync | - |
| `CLOUDFLARE_ACCOUNT_ID` | Cloudflare account ID | - |

## Deployment

### Cloudflare (Production)

The web app deploys to Cloudflare Workers with D1 database and R2 storage:

```bash
# Deploy to Cloudflare
cd apps/web
pnpm run deploy
```

- **D1**: Artist database
- **R2**: Portrait images (`media.jazzapedia.com`)

### Docker (Self-Hosted/Staging)

```bash
# Start all services
docker compose up -d

# With scraper profile (if using profiles)
docker compose --profile scraper up -d
```

## Database

The project uses a dual-database approach:
- **Cloudflare D1** for production web deployment
- **SQLite** for Docker deployment and scraper

Sync data between them:

```bash
# Sync from D1 to local SQLite
pnpm --filter @jazzapedia/web sync:sqlite

# Run migrations on D1
pnpm --filter @jazzapedia/web migrate
```

## Monorepo Commands

```bash
# Build all packages
pnpm build

# Type check all packages
pnpm type-check

# Clean all build artifacts
pnpm clean

# Run specific turbo task
pnpm turbo build --filter=@jazzapedia/web
```

## GitHub Actions Workflows

| Workflow | Trigger | Purpose |
|----------|---------|---------|
| **CI** | Pull requests | Build verification |
| **Deploy Web** | Push to main | Deploy to Cloudflare Pages |
| **Sync Artists** | Daily 5am CT / Manual | Sync artists to D1 |

**Note:** Portrait upload is handled locally by `unified-daily-sync.sh`, not by GitHub Actions.

## Documentation

For detailed technical documentation, see [CLAUDE.md](./CLAUDE.md).

## License

MIT
