# Jazzapedia

A unified monorepo for tracking and discovering music played on WWOZ New Orleans. Combines a WWOZ playlist scraper with a web application for browsing artists and their music.

## Architecture

```
jazzapedia/
├── apps/
│   ├── scraper/          # WWOZ playlist scraper (Node.js + Playwright)
│   └── web/              # Astro SSR web application
├── packages/
│   ├── types/            # Shared TypeScript types
│   ├── db/               # Database abstraction (SQLite + Cloudflare D1)
│   └── utils/            # Shared utilities
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
- Optional artist discovery pipeline with AI enrichment

### Web (`@jazzapedia/web`)
- Browse artists discovered on WWOZ
- View artist details, genres, and play history
- Search and filter functionality
- Supports both Cloudflare Workers (production) and Docker (self-hosted)

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
  enabled: false  # Enable for AI-powered artist enrichment
playlistArchiving:
  enabled: true
  mainPlaylistId: 'YOUR_PLAYLIST_ID'
  durationThresholdHours: 65
  checkIntervalRuns: 5
```

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DATABASE_PATH` | SQLite database path | `/data/jazzapedia.db` |
| `CONFIG_PATH` | Scraper config path | `config/config.yaml` |
| `STATE_PATH` | Scraper state directory | `config/state` |
| `DEPLOY_TARGET` | Build target (`docker` or `cloudflare`) | `cloudflare` |

## Deployment

### Cloudflare (Production)

The web app deploys to Cloudflare Workers with D1 database:

```bash
# Deploy to Cloudflare
cd apps/web
pnpm run deploy
```

### Docker (Self-Hosted)

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
| **Sync Artists** | Daily 5am CT / Manual | Sync artists to D1, upload portraits to R2 |

## License

MIT
