# Technology Stack

**Analysis Date:** 2026-02-02

## Languages

**Primary:**
- TypeScript 5.6.0 - All application code (scraper, web, packages)
- JavaScript (ES Module) - Runtime target for compiled TypeScript

**Secondary:**
- Python 3.x - Artist discovery pipeline (`apps/scraper/artist_discovery_pipeline.py`)

## Runtime

**Environment:**
- Node.js 20+ (specified in `package.json` engines)
- Python 3 with pip (for artist discovery)

**Package Manager:**
- pnpm 9.15.0
- Lockfile: `pnpm-lock.yaml` present

## Frameworks

**Core:**
- Astro 5.16.6 - SSR web framework with conditional adapters
- Turborepo 2.3.0 - Monorepo build orchestration
- Playwright 1.57.0 - Browser automation for WWOZ scraping

**Testing:**
- Not detected - No test framework configured

**Build/Dev:**
- TypeScript Compiler (tsc) - Compiles packages and scraper
- Astro Build - Compiles web app with adapter-specific output
- tsx 4.20.6 - TypeScript execution for scripts
- Wrangler 4.58.0 - Cloudflare deployment and D1 database management

## Key Dependencies

**Critical:**
- `better-sqlite3` 11.0.0 - SQLite database driver for Docker/local environments
- `@astrojs/cloudflare` 12.6.12 - Cloudflare Pages adapter (production)
- `@astrojs/node` 9.0.0 - Node.js standalone adapter (Docker)
- `spotify-web-api-node` 5.0.2 - Spotify API client for track matching
- `bottleneck` 2.19.5 - Rate limiting for Spotify API calls

**Infrastructure:**
- `@cloudflare/workers-types` 4.20260109.0 - TypeScript types for D1/R2/Workers
- `tailwindcss` 3.4.19 - Utility-first CSS framework
- `marked` 17.0.1 - Markdown parser for artist bio rendering
- `gray-matter` 4.0.3 - YAML frontmatter parser for markdown files

**Python Dependencies (artist discovery):**
- `requests` 2.32.0+ - HTTP client for API calls
- `openai` 2.6.0+ - Perplexity AI client (OpenAI SDK compatible)
- `musicbrainzngs` 0.7.1+ - MusicBrainz API client
- `pyyaml` 6.0+ - YAML configuration parsing
- `tqdm` 4.67.0+ - Progress bars for CLI

## Configuration

**Environment:**
- Environment variables via `.env` file
- Docker uses `docker-compose.yml` environment section
- Cloudflare uses `wrangler.toml` vars and secrets
- Scraper uses `config/scraper/config.yaml` for runtime config

**Build:**
- `turbo.json` - Turborepo task pipeline and caching
- `astro.config.mjs` - Astro framework and adapter configuration
- `tsconfig.base.json` - Root TypeScript configuration
- `wrangler.toml` - Cloudflare bindings and deployment config
- `tailwind.config.cjs` - CSS framework configuration (web app)

## Platform Requirements

**Development:**
- Node.js 20+
- pnpm 9.15.0
- Python 3 (for artist discovery)
- Docker and Docker Compose (optional, for local testing)

**Production:**
- Cloudflare Pages (web app with Workers SSR)
- Cloudflare D1 (production database)
- Cloudflare R2 (portrait image storage via `media.jazzapedia.com`)
- Self-hosted Docker (scraper service, Docker SQLite for local/staging)

---

*Stack analysis: 2026-02-02*
