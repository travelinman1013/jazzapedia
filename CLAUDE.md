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
│           └── data/           # Generated data files (artist-slugs.json, playlists.json)
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
- `artist_similarity` - Pre-computed audio similarity scores (artist_slug, similar_slug, score)
- `artist_relationships` - Normalized artist connections (source_slug, target_slug, relationship_type). Replaces JSON-based `musical_connections` for queries. Types: collaborator, influenced, mentor, member, associated, former_member
- `artist_graph_stats` - Pre-computed graph centrality metrics (slug, degree, in_degree, out_degree, betweenness, clustering)
- `artist_locations` - Geocoded artist locations (slug PK, raw_location, city, region, country, lat, lng, geocode_source). Indexes on city, country, coordinates.
- `wwoz_genre_weekly` - Weekly genre play counts for heatmap (week_start, genre, play_count, unique_artists)
- `wwoz_host_profiles` - Host statistics (host, total_shows, total_tracks, date range, top genres/artists JSON)
- `wwoz_artist_cooccurrence` - Artist co-occurrence in same show (artist1, artist2, cooccurrence_count)
- `wwoz_artist_first_seen` - Artist discovery velocity (artist_name, first_date, first_show, first_host, play_count)

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
| Playlist data | `apps/web/src/data/playlists.json` | ✅ YES | Static JSON (read at build time) |

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

## Spotify Playlists Page

The `/playlists` page displays Spotify playlists in three sections:

1. **Live Playlist** — The main WWOZTracker rolling playlist (ID: `3hMHYtjltORPaT2RPvPZZO`) with a Spotify embed
2. **Archives** — Multi-day archived playlists (named `WWOZTracker M/D/YY - M/D/YY`), created automatically when the live playlist exceeds 65 hours
3. **Max Trax** — Legacy personal playlists (older playlists no longer visible on Spotify profile due to the 200 public playlist limit)

**Data source:** `apps/web/src/data/playlists.json` — a static JSON file with categorized playlist entries (live, archives, legacy). This file is read at build time by the Astro page.

**Auto-update:** When `PlaylistArchiver` creates a new archive, it automatically appends the new entry to `playlists.json` (newest first in the archives array).

**Export script:** `apps/scraper/src/scripts/export-playlists.ts` fetches all playlists from the Spotify API and generates:
- `apps/web/src/data/playlists.json` — categorized data for the website
- `exports/playlists.csv` — flat CSV of all playlists for sharing

```bash
# Regenerate playlists data from Spotify
cd apps/scraper && npx tsx src/scripts/export-playlists.ts
```

**Key files:**
- `apps/web/src/pages/playlists.astro` - Playlists page
- `apps/web/src/data/playlists.json` - Playlist data (git-tracked)
- `apps/scraper/src/scripts/export-playlists.ts` - Export/regeneration script
- `apps/scraper/src/services/PlaylistArchiver.ts` - Auto-appends new archives

## Web Application

Astro SSR with conditional adapters:

```javascript
// apps/web/astro.config.mjs
const isDocker = process.env.DEPLOY_TARGET === 'docker';
adapter: isDocker ? node({ mode: 'standalone' }) : cloudflare({...})
```

Key routes:
- `/` - Home page with recent artists (portrait thumbnails, carousel sections for WWOZ Recent Days and Random Artists)
- `/artists` - Artist listing with search + decade filter pills above A-Z nav (`?decade=1940s&letter=D`)
- `/artists/[slug]` - Individual artist page (includes Audio DNA radar chart + Sounds Like)
- `/compare` - Side-by-side artist comparison (`/compare?a=slug1&b=slug2`)
- `/connect` - Degrees of separation path finder (`/connect?a=slug1&b=slug2`)
- `/map` - Interactive world map of artist origins (Leaflet + MarkerCluster, genre/decade filters, 4,000+ artists)
- `/timeline` - Canvas-based horizontal timeline of artists by birth decade with era bands
- `/wwoz` - WWOZ daily archive index
- `/wwoz/[date]` - Individual day's track log
- `/wwoz/insights` - WWOZ Intelligence Dashboard (three tabs: Overview, Trends, Hosts — genre heatmap, host profiles, discovery velocity)
- `/playlists` - Spotify playlists (live, archives, Max Trax)
- `/api/*` - API endpoints (includes `/api/search/suggest` for unified search across artists, tracks, hosts, locations)

## Favicon & Open Graph (Link Previews)

### Favicon & Icons

The site uses a custom Jazzapedia logo (gold saxophone-treble clef on dark navy circle). Icon files live in `apps/web/public/`:

| File | Size | Purpose |
|------|------|---------|
| `favicon.png` | 32x32 | Primary browser tab icon |
| `favicon.ico` | 16/32/48 | ICO fallback (multi-size) |
| `apple-touch-icon.png` | 180x180 | iOS home screen, iMessage link previews |
| `icon-192.png` | 192x192 | Android/PWA |
| `icon-512.png` | 512x512 | PWA splash screen |
| `og-default.png` | 1200x630 | Default Open Graph image for non-artist pages |

**Source logo:** `Gemini_Generated_Image_galpvqgalpvqgalp.png` (1024x1024, root of repo, not committed to git). Corners are masked to transparent so the circular logo displays cleanly.

**Regenerating icons from a new logo:**
```python
# Requires Pillow: pip3 install Pillow
# 1. Make corners transparent (circular mask)
# 2. Resize to each target size with LANCZOS resampling
# 3. Build favicon.ico manually (PNG-in-ICO format, sizes 16/32/48)
# 4. Create og-default.png (1200x630, navy background #1A2035, logo centered at 500x500)
```

**Icon links in `Layout.astro` `<head>`:**
```html
<link rel="icon" type="image/png" sizes="32x32" href="/favicon.png" />
<link rel="icon" type="image/x-icon" href="/favicon.ico" />
<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
```

### Open Graph Meta Tags

OG tags enable rich link previews in iMessage, Slack, Twitter, Facebook, etc.

**Architecture:**
- `Layout.astro` accepts optional `ogImage`, `ogType`, `canonicalUrl` props
- `WikiArticle.astro` passes these through to `Layout.astro`
- Artist pages (`[...slug].astro`) provide the artist's portrait as `ogImage`

**Artist pages OG image:**
- Uses absolute R2 URL: `https://media.jazzapedia.com/portraits/{image_filename}`
- Falls back to `https://jazzapedia.com/og-default.png` if no portrait exists
- `og:type` is set to `profile` for artist pages, `website` for others
- Twitter card is `summary_large_image` when a portrait exists

**Key files:**
- `apps/web/src/layouts/Layout.astro` - OG/Twitter meta tag rendering
- `apps/web/src/layouts/WikiArticle.astro` - Passes OG props through to Layout
- `apps/web/src/pages/artists/[...slug].astro` - Constructs portrait URL + canonical URL

**Important:** OG image URLs must always be absolute production URLs (not relative paths), because social media crawlers fetch them from the public internet. Always use `https://media.jazzapedia.com/portraits/...` even in Docker/development.

## Docker Services

### Verifying Frontend Changes

For most frontend work (HTML, CSS, components, pages that read from SQLite), use the local Astro dev server:

```bash
pnpm web          # Start dev server on port 4321
pnpm web:stop     # Stop server on port 4321 (even if you lost the terminal)
```

These scripts (defined in root `package.json`) set the required env vars automatically (`DEPLOY_TARGET=docker`, `DATABASE_PATH`). Without these, Astro uses the Cloudflare adapter which connects to D1's local emulation (an empty database), not your real SQLite.

Portraits are served locally via a symlink: `apps/web/public/portraits` → `../../../portraits`. This symlink is gitignored. If missing, recreate with:

```bash
ln -s ../../../portraits apps/web/public/portraits
```

**Use Docker only when testing:**
- Full nginx reverse proxy behavior
- Scraper ↔ web app interactions
- Exact `DEPLOY_TARGET=docker` production-like builds

### Docker as Staging

Docker is the full staging environment.

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
| `export-playlists.ts` | Export Spotify playlists to JSON + CSV | Manual (scraper scripts dir) |
| `compute-audio-similarity.ts` | Pre-compute audio similarity scores | Prebuild + Manual |
| `populate-artist-relationships.ts` | Normalize connections JSON into relational table | Prebuild + Manual |
| `compute-graph-analytics.ts` | Compute graph centrality (degree, betweenness) | Prebuild + Manual |
| `build-connections-static.ts` | Generate connections-index.json from `artist_relationships` table | Prebuild |
| `build-graph-layout.ts` | Compute graph layout positions | Prebuild |
| `geocode-artists.ts` | Geocode artist locations via Nominatim (cache + overrides) | Prebuild + Manual (`--fetch`) |
| `build-timeline-data.ts` | Generate timeline-data.json from birth dates | Prebuild |
| `compute-wwoz-intelligence.ts` | Aggregate WWOZ stats (genre weekly, host profiles, discovery) | Prebuild + Manual |

## Audio DNA & Artist Comparison

Artists with Spotify `audio_profile` data display an **Audio DNA** radar chart in the infobox, visualizing 6 features: danceability, energy, valence, acousticness, instrumentalness, and liveness. A **Sounds Like** section shows the top 5 most similar-sounding artists.

**Key files:**
- `apps/web/src/components/artist/AudioDNA.astro` — SVG radar chart (pure server-rendered, zero JS)
- `apps/web/src/components/artist/SoundsLike.astro` — Similar artists list in infobox
- `apps/web/src/pages/compare.astro` — Side-by-side artist comparison page
- `apps/web/scripts/compute-audio-similarity.ts` — Euclidean distance similarity computation
- `apps/web/src/data/audio-similarity.json` — Pre-computed top-5 similar artists (gitignored, regenerated at build)

**How similarity works:**
1. `compute-audio-similarity.ts` runs during `prebuild` (or manually via `pnpm build:similarity`)
2. Loads all artists with `audio_profile` from SQLite (~3,400 artists)
3. Computes Euclidean distance across 6 normalized features (0–1 range)
4. Stores top 10 per artist in `artist_similarity` table, top 5 in `audio-similarity.json`
5. Artist pages import the static JSON and query DB for similar artist details

**Compare page (`/compare?a=slug1&b=slug2`):**
- Overlaid radar charts (amber = artist A, cyan = artist B)
- Feature comparison bars, shared genres, shared connections, career timeline
- Artist picker with autocomplete via `/api/search/suggest`
- "Find connection path" link to `/connect` page

**Regenerate similarity data:**
```bash
cd apps/web && pnpm build:similarity
```

## Normalized Relationship Graph & Path Finding

Artist relationships are stored in the normalized `artist_relationships` table (13K+ edges) alongside the legacy `musical_connections` JSON column on `artists`. The normalized table enables indexed reverse lookups, BFS path finding, and graph analytics — the JSON column is still the scraper's output format and source of truth for the population script.

**Data flow:**
1. Scraper writes `musical_connections` JSON to artist markdown → synced to `artists` table
2. `populate-artist-relationships.ts` reads JSON from all artists, resolves names→slugs, inserts into `artist_relationships` (idempotent via `INSERT OR IGNORE`)
3. `build-connections-static.ts` reads from `artist_relationships` table (not JSON) to generate `connections-index.json`
4. `compute-graph-analytics.ts` computes degree, betweenness centrality (Brandes'), and clustering coefficient → `artist_graph_stats` table

**Key files:**
- `apps/web/migrations/0012_artist_relationships.sql` — Normalized edge table (composite PK: source_slug, target_slug, relationship_type)
- `apps/web/migrations/0013_artist_graph_stats.sql` — Graph centrality metrics table
- `apps/web/scripts/populate-artist-relationships.ts` — Populates from `musical_connections` JSON. Runs in prebuild. Supports `--remote` for D1.
- `apps/web/scripts/compute-graph-analytics.ts` — Brandes' algorithm (~15s for 4,130 nodes). Runs in prebuild.
- `apps/web/src/pages/api/graph/path.ts` — BFS path-finding API (TypeScript, not SQL CTE). Loads adjacency list into memory for O(V+E) traversal.
- `apps/web/src/pages/connect.astro` — "Degrees of separation" page with artist pickers and SVG path chain
- `apps/web/src/lib/connections-index.ts` — `getArtistConnectionsFromDb()` queries `artist_relationships` for both forward AND reverse connections on D1
- `packages/db/src/queries.ts` — `getArtistRelationships()`, `getReverseRelationships()`, `getArtistConnectionsFull()`, `getAllRelationshipEdges()`

**Connect page (`/connect?a=slug1&b=slug2`):**
- BFS shortest path with max depth 6, visualized as vertical node chain with relationship labels
- Edge labels are direction-aware: "influenced" vs "influenced by" depending on display order
- Links to Compare page; Compare page links back to Connect
- Located in nav "More" dropdown alongside Compare

**Relationship types in `artist_relationships`:**
`collaborator`, `influenced`, `mentor`, `member`, `associated`, `former_member`

**Prebuild chain order** (`apps/web/package.json`):
```
populate-artist-relationships → build-connections-static → build-graph-layout → geocode-artists → build-timeline-data → compute-audio-similarity → compute-graph-analytics → compute-wwoz-intelligence
```

**Regenerate graph data:**
```bash
cd apps/web
npx tsx scripts/populate-artist-relationships.ts    # Re-populate edges from JSON
pnpm build:graph-stats                               # Recompute centrality metrics
```

**Architecture notes:**
- `musical_connections` JSON column is NOT deprecated — it's the scraper's output format. The `artist_relationships` table is a derived/denormalized view for fast queries.
- `connections-index.json` (~1.2MB) is still generated at build time and consumed by artist pages for wiki-link resolution and connection display. Future work: replace with DB queries + lightweight `artist-slugs.json`.
- Path-finding uses TypeScript BFS (not SQL recursive CTEs) to avoid D1 row limits and get deterministic performance.
- The `artist_graph_stats` table must be recomputed when relationships change significantly. It runs in prebuild automatically.

## Geographic Map & Timeline

### Map Page (`/map`)

Interactive Leaflet world map showing artist birth/origin locations. Uses CDN-loaded Leaflet + MarkerCluster with CartoDB DarkMatter tiles. Data is pre-computed at build time (not SSR queries).

**Data pipeline:**
1. `geocode-artists.ts` reads `birth_place`/`origin` from artists table
2. Normalizes location strings (state abbreviations, city aliases, country synonyms, parenthetical stripping)
3. Geocodes via Nominatim API (rate-limited 1/sec) with persistent cache (`geocode-cache.json`, 1,600+ entries)
4. Manual overrides in `geocode-overrides.json` bypass normalization for edge cases
5. Writes to `artist_locations` table (4,000+ rows) and generates `map-data.json` (~815KB)
6. Map page imports `map-data.json` statically and embeds as JSON in client-side script

**Key files:**
- `apps/web/scripts/geocode-artists.ts` — Full pipeline (normalization, Nominatim fetch, SQL export)
- `apps/web/src/pages/map.astro` — Leaflet map with genre/decade filters, marker popups with portraits
- `apps/web/src/data/geocode-cache.json` — Nominatim response cache (committed so CI doesn't need API)
- `apps/web/src/data/geocode-overrides.json` — Manual location corrections
- `apps/web/migrations/0014_artist_locations.sql` — Location table + indexes

**Geocode script flags:**
- No flags: Cache-only mode (prebuild), generates map-data.json from existing cache + DB
- `--fetch`: Calls Nominatim for uncached locations (manual use, rate-limited)
- `--export-sql`: Exports INSERT statements for D1 sync

**Portrait URLs:** Map popups use `getPortraitBaseUrl()` via `define:vars` for Docker/Cloudflare portability.

### Timeline Page (`/timeline`)

Canvas-based horizontal timeline showing artists by birth decade. Client-side rendering with decade filter pills and jazz era background bands (Ragtime, Swing, Bebop, etc.).

**Data pipeline:**
1. `build-timeline-data.ts` reads artists with `birth_date` from SQLite (~36% of all artists)
2. Generates `timeline-data.json` (~370KB) with slug, title, birthYear, deathYear, genres, decadeId
3. Timeline page imports JSON statically and renders on HTML Canvas

**Key files:**
- `apps/web/scripts/build-timeline-data.ts` — Data generation
- `apps/web/src/pages/timeline.astro` — Canvas timeline with decade pills, hover tooltips, click navigation
- `apps/web/src/data/decade-definitions.ts` — Shared decade/era definitions (used by map, timeline, and /artists)

### Decade Filter on `/artists`

Decade filter pills appear above the A-Z letter nav. Queries use `SUBSTR(birth_date,1,4)` with `CAST` — standard SQL compatible with both SQLite and D1. Supports combined filtering: `?decade=1940s&letter=D`.

## WWOZ Intelligence Dashboard

The `/wwoz/insights` page provides three-tab analytics: Overview (summary stats), Trends (genre heatmap by week), and Hosts (profile cards with top genres/artists and expandable details). Also tracks discovery velocity (new artists appearing on WWOZ over time).

**Data pipeline:**
1. `compute-wwoz-intelligence.ts` aggregates from `wwoz_tracks` table
2. Populates four tables: `wwoz_genre_weekly`, `wwoz_host_profiles`, `wwoz_artist_cooccurrence`, `wwoz_artist_first_seen`
3. Runs in prebuild automatically

**Key files:**
- `apps/web/scripts/compute-wwoz-intelligence.ts` — Aggregation script
- `apps/web/src/pages/wwoz/insights.astro` — Dashboard page
- `apps/web/migrations/0010_wwoz_intelligence.sql` — Four analytics tables

## Unified Search

Search suggestions (`/api/search/suggest`) surface results across artists, tracks, hosts, and locations — not just artist names. Enhanced with additional indexes via migration `0011_unified_search_indexes.sql`.

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

### Update favicon / site icon
1. Place new source logo image in repo root (square PNG, ideally 1024x1024+)
2. Use Python/Pillow to make corners transparent (circular mask) and resize to all target sizes:
   - `apps/web/public/favicon.png` (32x32)
   - `apps/web/public/favicon.ico` (16/32/48 multi-size ICO)
   - `apps/web/public/apple-touch-icon.png` (180x180)
   - `apps/web/public/icon-192.png` (192x192)
   - `apps/web/public/icon-512.png` (512x512)
   - `apps/web/public/og-default.png` (1200x630, logo centered on navy `#1A2035` background)
3. Deploy: `docker compose up -d --build web` (Docker) + `npx wrangler pages deploy` (Cloudflare)
4. Note: iMessage and social platforms cache link previews — new icons may take time to appear

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
16. **connections-index.json is too large** - NEVER read, cat, head, tail, diff, or output `apps/web/src/data/connections-index.json` (~1.2MB). This file causes session freezes. Only interact via metadata commands like `ls -la` or `wc -l`. The file is generated by `build-connections-static.ts` from the `artist_relationships` table at build time. For querying connections at runtime, use `getArtistConnectionsFull()` from `packages/db/src/queries.ts` which reads the normalized table directly.
