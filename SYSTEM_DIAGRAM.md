# Jazzapedia System Architecture

## High-Level Overview

```
                    ┌──────────────────┐
                    │   WWOZ 90.7 FM   │
                    │   Playlist Page  │
                    └────────┬─────────┘
                             │ Playwright Scrape
                             ▼
┌────────────────────────────────────────────────────────────────────────────────────┐
│                              SCRAPER SERVICE (Docker)                               │
│  ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌──────────────────────┐ │
│  │ WWOZScraper │───▶│SpotifyEnrich│───▶│ObsidianArch │───▶│ArtistDiscoveryService│ │
│  │             │    │             │    │             │    │   (Python Pipeline)   │ │
│  └─────────────┘    └──────┬──────┘    └──────┬──────┘    └───────────┬──────────┘ │
│                            │                  │                       │            │
└────────────────────────────┼──────────────────┼───────────────────────┼────────────┘
                             │                  │                       │
               ┌─────────────┴───┐              │                       │
               ▼                 ▼              ▼                       ▼
        ┌────────────┐    ┌───────────┐   ┌──────────┐    ┌─────────────────────────┐
        │  Spotify   │    │  SQLite   │   │ Obsidian │    │     External APIs       │
        │   API      │    │ Database  │   │  Vault   │    │ (Perplexity, MusicBrz)  │
        └────────────┘    └─────┬─────┘   └──────────┘    └─────────────────────────┘
                                │
                                │ Read-only
                                ▼
┌────────────────────────────────────────────────────────────────────────────────────┐
│                                WEB SERVICE (Docker/Cloudflare)                      │
│  ┌─────────────────────────────────────────────────────────────────────────────┐   │
│  │                         Astro SSR Application                                │   │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────────┐   │   │
│  │  │  /       │  │ /artists │  │ /genres  │  │  /wwoz   │  │   /search    │   │   │
│  │  │  Home    │  │  Index   │  │  Filter  │  │(DB-driven)│  │              │   │   │
│  │  └──────────┘  └──────────┘  └──────────┘  └──────────┘  └──────────────┘   │   │
│  └─────────────────────────────────────────────────────────────────────────────┘   │
└────────────────────────────────────────────────────────────────────────────────────┘
                                        │
                                        ▼
                              ┌──────────────────┐
                              │  Nginx / CF Edge │
                              └────────┬─────────┘
                                       ▼
                              ┌──────────────────┐
                              │      Users       │
                              └──────────────────┘
```

## Deployment Modes

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│  DOCKER (Staging)                      CLOUDFLARE (Production)                  │
│                                                                                 │
│  ┌─────────────────────────┐          ┌─────────────────────────┐              │
│  │  nginx:alpine           │          │  Cloudflare Pages       │              │
│  │  Port 8080 → 80         │          │  Edge workers           │              │
│  │  /portraits/* static    │          │                         │              │
│  └───────────┬─────────────┘          └───────────┬─────────────┘              │
│              │                                    │                            │
│              ▼                                    ▼                            │
│  ┌─────────────────────────┐          ┌─────────────────────────┐              │
│  │  Astro + @astrojs/node  │          │  Astro + @astrojs/cf    │              │
│  │  Port 4321              │          │  Workers runtime        │              │
│  └───────────┬─────────────┘          └───────────┬─────────────┘              │
│              │                                    │                            │
│              ▼                                    ▼                            │
│  ┌─────────────────────────┐          ┌─────────────────────────┐              │
│  │  SQLite (better-sqlite3)│          │  Cloudflare D1          │              │
│  │  /data/jazzapedia.db    │          │  (SQLite compatible)    │              │
│  └─────────────────────────┘          └─────────────────────────┘              │
│                                                                                 │
│  Portraits: /portraits/               Portraits: media.jazzapedia.com (R2)     │
└─────────────────────────────────────────────────────────────────────────────────┘
```

## Data Pipeline Summary

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│                           DAILY DATA FLOW                                        │
│                                                                                  │
│  1. SCRAPE         2. ENRICH           3. ARCHIVE         4. DISCOVER           │
│  ┌─────────┐      ┌─────────┐         ┌─────────┐        ┌─────────┐            │
│  │  WWOZ   │  ──▶ │ Spotify │  ──▶    │Obsidian │  ──▶   │ Artist  │            │
│  │Playlist │      │ Match   │         │   .md   │        │ Cards   │            │
│  └─────────┘      └─────────┘         └─────────┘        └─────────┘            │
│                                                                                  │
│  5. SYNC (4:30am CT)                                                            │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │  unified-daily-sync.sh                                                  │    │
│  │  • Artists: Vault → SQLite (incremental)                                │    │
│  │  • WWOZ: archives/ → SQLite (wwoz_days, wwoz_tracks tables)             │    │
│  │  • Portraits: Upload to R2                                              │    │
│  │  • Git commit + push (artists only, WWOZ is DB-driven)                  │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
│                          │                                                      │
│                          ▼                                                      │
│  6. DEPLOY (5:00am CT via GitHub Actions)                                       │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │  • Artists: Incremental D1 sync                                         │    │
│  │  • WWOZ: sync-wwoz-db.ts → D1 (wwoz_days, wwoz_tracks)                  │    │
│  │  • No rebuild needed - WWOZ pages are SSR from database                 │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
└──────────────────────────────────────────────────────────────────────────────────┘
```

## Database Schema (Simplified)

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│  artists                                                                        │
│  ├── id, slug (unique), title                                                   │
│  ├── artist_type (person/band), birth_date, death_date                         │
│  ├── bio_html, bio_markdown, image_filename                                     │
│  ├── genres, instruments, roles (JSON arrays)                                   │
│  ├── spotify_data, audio_profile, musical_connections (JSON)                    │
│  └── content_hash (for incremental sync)                                        │
│                                                                                 │
│  wwoz_days (WWOZ daily archive metadata)                                        │
│  ├── id, date (unique), playlist_url                                            │
│  ├── stats_json (total_tracks, found, not_found, etc.)                         │
│  └── source_url, created_at                                                     │
│                                                                                 │
│  wwoz_tracks (individual track plays)                                           │
│  ├── id, date, time, artist, title, album                                       │
│  ├── genres, show_name, host                                                    │
│  ├── status (found/not_found), confidence                                       │
│  └── spotify_url, created_at                                                    │
│                                                                                 │
│  genres / instruments / roles                                                   │
│  ├── id, name, slug, artist_count                                              │
└─────────────────────────────────────────────────────────────────────────────────┘
```

## Key File Locations

| Component | Path |
|-----------|------|
| Scraper service | `apps/scraper/` |
| Web application | `apps/web/` |
| Shared types | `packages/types/` |
| Database utilities | `packages/db/` |
| Docker config | `docker-compose.yml` |
| Daily sync script | `apps/web/scripts/unified-daily-sync.sh` |
| Scraper config | `config/scraper/config.yaml` |

---

*For detailed documentation, see [CLAUDE.md](./CLAUDE.md)*
