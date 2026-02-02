# Codebase Concerns

**Analysis Date:** 2026-02-02

## Tech Debt

**Type safety erosion - widespread use of 'any' type:**
- Issue: Many database operations and type conversions use `any`, bypassing TypeScript's safety
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/connections-index.ts` (lines 209, 319), `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/db.ts` (lines 28-30, 36), `/Users/maxwell/Projects/jazzapedia/apps/scraper/src/modules/archivers/ObsidianArchiver.ts` (lines 484-485, 533-535)
- Impact: Runtime errors may occur that TypeScript can't catch, making refactoring risky
- Fix approach: Introduce proper type definitions for database queries, create typed wrappers for better-sqlite3 operations

**Sync script duplication:**
- Issue: Three similar sync scripts with overlapping logic (`sync-to-d1.ts` ~665 lines, `sync-incremental.ts` ~483 lines, `sync-incremental-sqlite.ts` ~497 lines)
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-to-d1.ts`, `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental.ts`, `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental-sqlite.ts`
- Impact: Bug fixes must be applied to all three scripts, artist parsing logic maintained in multiple places
- Fix approach: Extract shared logic into `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/lib/sync-utils.ts` (already partially exists), consolidate into single script with target flags

**ObsidianArchiver complexity - 761 lines:**
- Issue: Single-file archiver handles scraping, deduplication, day-change detection, EJS templating, state persistence, and artist discovery orchestration
- Files: `/Users/maxwell/Projects/jazzapedia/apps/scraper/src/modules/archivers/ObsidianArchiver.ts`
- Impact: Difficult to test, high risk of regression when modifying archiving behavior
- Fix approach: Split into separate concerns: `DayChangeDetector`, `ArchiveWriter`, `ArchiveTemplater`, `ArtistDiscoveryTrigger`

**connections-index.json file size warning:**
- Issue: Generated connections index is ~1.1MB, noted in CLAUDE.md as causing session freezes when viewed
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/data/connections-index.json`
- Impact: Cannot inspect during debugging, potential memory issues during build, slow initial load
- Fix approach: Switch to database-driven connections (already partially implemented in `getArtistConnectionsFromDb`), remove static file generation

**Shell command injection via execSync:**
- Issue: Multiple scripts execute shell commands with user-controlled or file-based input without proper escaping
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-to-d1.ts` (lines 587, 603, 611, 620, 632), `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental.ts` (lines 428, 449, 462), `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-wwoz-db.ts` (lines 325, 331, 355, 370)
- Impact: Malicious artist markdown files with shell metacharacters could execute arbitrary commands during sync
- Fix approach: Replace `execSync` with proper Wrangler CLI SDK, use parameterized queries, validate/sanitize all input before shell execution

**Environment variable configuration sprawl:**
- Issue: Critical settings loaded from env vars without validation, fallback logic differs across deployments
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/db.ts` (DATABASE_PATH), `/Users/maxwell/Projects/jazzapedia/apps/scraper/src/modules/archivers/ObsidianArchiver.ts` (STATE_PATH), various sync scripts (ARTISTS_DIR, PORTRAITS_DIR)
- Impact: Silent failures when env vars missing, different behavior in Docker vs local vs CI
- Fix approach: Create centralized config validation module that fails fast with clear errors, document all required variables in one place

## Known Bugs

**Reverse connections disabled on D1:**
- Symptoms: `TODO: Implement efficient reverse connections for D1` comment, reverse connections always return empty arrays
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/connections-index.ts` (line 279)
- Trigger: Any artist page request on production (Cloudflare) - users see "Collaborated With", "Influenced By", "Mentored By" sections but no data
- Workaround: Static connections index used in Docker, but not in production

**Type check skipped in CI:**
- Symptoms: Pre-existing type errors prevent builds, CI workflow ignores type-check task
- Files: Multiple files with type mismatches (noted in CLAUDE.md gotcha #5)
- Trigger: Running `pnpm turbo type-check` fails, but CI allows builds to proceed
- Workaround: CI skips type-check to allow deployments

**WWOZ insights not automatically regenerated:**
- Symptoms: `/wwoz/insights` page shows stale data until manual script execution
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/compute-wwoz-insights.ts`, `/Users/maxwell/Projects/jazzapedia/apps/web/src/data/wwoz-insights.json`
- Trigger: New WWOZ data synced to database but insights JSON not updated
- Workaround: Manually run `npm run insights` before builds

## Security Considerations

**Inline edit password stored in plaintext environment variable:**
- Risk: `EDIT_PASSWORD` env var grants write access to entire database, no rate limiting or session management
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/pages/api/auth/verify.ts` (lines 78-79), `/Users/maxwell/Projects/jazzapedia/apps/web/src/pages/api/artists/[slug]/edit.ts` (lines 240-241)
- Current mitigation: Password verification happens server-side, but stored in container env vars
- Recommendations: Implement proper JWT-based auth, add rate limiting to auth endpoint, use secret management service instead of env vars

**No input validation on artist markdown frontmatter:**
- Risk: Sync scripts parse YAML frontmatter without schema validation, malicious markdown could cause crashes or data corruption
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental.ts` (line 149+), all sync scripts using `gray-matter`
- Current mitigation: Artist markdown only generated by trusted Python pipeline
- Recommendations: Add Zod schema validation for frontmatter, sanitize HTML output from markdown rendering

**Secrets in config file not in .env:**
- Risk: `/Users/maxwell/Projects/jazzapedia/config/scraper/config.yaml` contains API keys (Perplexity, Spotify), gitignored but not encrypted
- Files: `/Users/maxwell/Projects/jazzapedia/apps/scraper/src/utils/config.ts`, `/Users/maxwell/Projects/jazzapedia/config/scraper/config.yaml` (gitignored)
- Current mitigation: File is gitignored
- Recommendations: Migrate to `.env` file or secret management service, validate all required secrets at startup

**No authentication on Docker deployment:**
- Risk: Docker container on port 8080 has no auth layer, anyone with network access can view/edit content
- Files: `/Users/maxwell/Projects/jazzapedia/docker-compose.yml` (port mapping), `/Users/maxwell/Projects/jazzapedia/config/nginx/nginx.conf`
- Current mitigation: Assumes deployment on private network or behind reverse proxy
- Recommendations: Add HTTP Basic Auth to nginx config, document security requirements in deployment guide

## Performance Bottlenecks

**D1 batch size reduced due to SQLITE_TOOBIG errors:**
- Problem: Artist sync fails with SQLITE_TOOBIG when batch size > 5, especially for artists with large bios
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental.ts` (line 36, comment notes reduction from 50 to 5)
- Cause: D1 has query size limits, large HTML biographies exceed limits when batched
- Improvement path: Implement streaming upserts, compress bio_html, or split large artists into separate transactions

**Full table scans for reverse connections:**
- Problem: `getReverseConnectionsFromDb` scans entire artists table with LIKE query, limited to 200 results to prevent timeout
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/connections-index.ts` (lines 318-383)
- Cause: No index on JSON musical_connections field, wildcard LIKE pattern prevents index usage
- Improvement path: Create separate `artist_connections` junction table with indexed foreign keys

**Connections index regenerated on every build:**
- Problem: `prebuild` script reads all artist markdown files and builds 1.1MB JSON file
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/package.json` (line 10), `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/build-connections-static.ts`
- Cause: Build-time static generation instead of runtime database queries
- Improvement path: Complete migration to database-driven connections (partially implemented), remove prebuild step

**SQLite database read-only mount causes unnecessary complexity:**
- Problem: Web container needs separate read-only and writable database connections for different operations
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/db.ts` (lines 57-98), `/Users/maxwell/Projects/jazzapedia/docker-compose.yml` (line 64 comment notes writable mount)
- Cause: Volume originally mounted read-only but inline editing requires writes
- Improvement path: Use single writable connection, add proper transaction management

## Fragile Areas

**Day change detection state persistence:**
- Files: `/Users/maxwell/Projects/jazzapedia/apps/scraper/src/modules/archivers/ObsidianArchiver.ts` (lines 35-69)
- Why fragile: Relies on JSON state file in `/scraper-state/archiver_state.json`, if file corrupted or deleted, day changes not detected
- Safe modification: Always use atomic file writes, validate JSON structure on load, implement state recovery from archives directory
- Test coverage: No automated tests for state persistence or recovery

**Unified daily sync script - complex orchestration:**
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/unified-daily-sync.sh`
- Why fragile: Single bash script orchestrates 6 different operations (SQLite sync, WWOZ sync, Obsidian backup, Docker restart, R2 upload, git push), failure in any step may leave system in inconsistent state
- Safe modification: Run with `--dry-run` first, verify each step independently, ensure all operations are idempotent
- Test coverage: No automated tests, only manual verification via launchd cron

**Portrait filename matching heuristics:**
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental.ts` (lines 98-143)
- Why fragile: Complex case-insensitive matching with underscore/hyphen variants, may fail for artists with special characters or non-ASCII names
- Safe modification: Test with diverse artist name samples (unicode, punctuation), verify portrait assignment after sync
- Test coverage: No unit tests for matching logic

**Astro adapter switching at build time:**
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/astro.config.mjs` (lines 8-24)
- Why fragile: Build output differs significantly based on `DEPLOY_TARGET` env var, easy to build wrong adapter for deployment target
- Safe modification: Always verify `DEPLOY_TARGET` matches deployment destination, test build artifacts before deployment
- Test coverage: No CI checks to verify correct adapter selection

## Scaling Limits

**SQLite database volume mount in Docker:**
- Current capacity: Single SQLite file on host filesystem, ~4000+ artists, WWOZ data growing daily
- Limit: SQLite has theoretical size limit of 281TB but performance degrades with concurrent writes, Docker volume mount adds I/O overhead
- Scaling path: Already has migration path to D1 for production, SQLite sufficient for staging/development

**Artist discovery pipeline single-threaded:**
- Current capacity: Python script processes one artist at a time, ~30 seconds per artist including AI generation
- Limit: Daily batch of 50+ new artists takes 25+ minutes to process
- Scaling path: Implement parallel processing with rate limiting, batch Perplexity API requests

**Portraits stored in git repository:**
- Current capacity: `content-deploy/portraits/` directory tracked in git for D1 sync matching
- Limit: Git performance degrades with large binary files, repo size grows unbounded
- Scaling path: Remove portraits from git entirely, modify D1 sync to read portrait list from R2 API instead

## Dependencies at Risk

**better-sqlite3 native module:**
- Risk: Requires native build tools, breaks on Node.js version upgrades, complex Docker build setup
- Impact: Docker builds fail if build-essential/python not installed, version mismatches cause runtime crashes
- Migration plan: Cloudflare D1 eliminates this dependency in production, consider Bun.js SQLite for Docker (native support)

**Playwright browser automation:**
- Risk: Requires Chromium download (~170MB), breaks when WWOZ site structure changes
- Impact: Scraper fails silently if selectors no longer match, requires manual inspection and fix
- Migration plan: Consider WWOZ API if available, implement selector change detection with alerts

**Astro framework version lock:**
- Risk: Rapid Astro development may introduce breaking changes, SSR adapter API unstable
- Impact: Upgrades require testing both Docker and Cloudflare deployments
- Migration plan: None needed, Astro is core to architecture

## Missing Critical Features

**No automated backups:**
- Problem: SQLite database only persisted in Docker volume, no scheduled backup mechanism
- Blocks: Recovery from disk failure, migration to new host, testing data rollback scenarios

**No observability/monitoring:**
- Problem: Scraper and sync failures only visible in logs, no alerting or metrics
- Blocks: Detecting scraper downtime, tracking sync success rates, debugging production issues

**No test coverage:**
- Problem: Zero test files in source code (only in node_modules dependencies)
- Blocks: Safe refactoring, preventing regressions, onboarding new developers

**No migration strategy for D1/SQLite schema divergence:**
- Problem: Migrations only tracked in `/Users/maxwell/Projects/jazzapedia/apps/web/migrations/`, no verification that D1 and SQLite schemas match
- Blocks: Confident deployments, identifying schema drift, applying fixes to both databases

## Test Coverage Gaps

**Sync scripts:**
- What's not tested: Artist markdown parsing, portrait filename matching, hash-based change detection, batch insert logic
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental.ts`, `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-incremental-sqlite.ts`, `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-to-d1.ts`
- Risk: Data corruption from parsing errors, incorrect portrait assignments, sync failures on edge cases
- Priority: High - sync scripts are critical path for all content updates

**Scraper workflow:**
- What's not tested: Day change detection, duplicate handling, Spotify matching confidence scores, archive template rendering
- Files: `/Users/maxwell/Projects/jazzapedia/apps/scraper/src/services/WorkflowService.ts`, `/Users/maxwell/Projects/jazzapedia/apps/scraper/src/modules/archivers/ObsidianArchiver.ts`
- Risk: Missing daily archives, incorrect artist attribution, data loss on edge cases
- Priority: High - scraper runs continuously unsupervised

**Database abstraction layer:**
- What's not tested: D1 vs SQLite compatibility, prepared statement parameter binding, error handling
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/db.ts`, `/Users/maxwell/Projects/jazzapedia/packages/db/src/`
- Risk: Runtime errors on production that don't occur in Docker, query result format mismatches
- Priority: Medium - errors surface immediately on deployment

**Artist connections indexing:**
- What's not tested: Slug resolution, bidirectional connection mapping, name normalization
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/connections-index.ts`, `/Users/maxwell/Projects/jazzapedia/apps/web/src/lib/artist-matcher.ts`
- Risk: Broken artist links, missing connections, incorrect reverse relationships
- Priority: Medium - affects user experience but doesn't break core functionality

**WWOZ archive parsing:**
- What's not tested: Track time parsing, artist linking, genre extraction, stats calculation
- Files: `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/sync-wwoz-db.ts`, `/Users/maxwell/Projects/jazzapedia/apps/web/scripts/compute-wwoz-insights.ts`
- Risk: Incorrect track attribution, broken artist links, missing stats
- Priority: Low - WWOZ data is append-only and can be reprocessed

---

*Concerns audit: 2026-02-02*
