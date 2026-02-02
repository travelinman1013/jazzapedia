# Testing Patterns

**Analysis Date:** 2026-02-02

## Test Framework

**Runner:**
- Not detected - No test files found
- No `jest.config.*`, `vitest.config.*`, or `playwright.config.*` found
- No test files matching `*.test.*` or `*.spec.*` patterns
- Playwright is installed as dependency in `apps/scraper` but used for scraping, not testing

**Assertion Library:**
- Not applicable (no tests)

**Run Commands:**
```bash
pnpm turbo test          # Root command (defined in package.json)
# No test scripts defined in individual packages
```

## Test File Organization

**Location:**
- Not applicable - No test files present in codebase

**Naming:**
- Not applicable

**Structure:**
- Not applicable

## Test Structure

**Suite Organization:**
- Not detected - No test files to analyze

**Patterns:**
- Not applicable

## Mocking

**Framework:**
- Not detected

**Patterns:**
- Not applicable

**What to Mock:**
- Not documented

**What NOT to Mock:**
- Not documented

## Fixtures and Factories

**Test Data:**
- Not applicable - No test fixtures found

**Location:**
- Not applicable

## Coverage

**Requirements:**
- No coverage requirements enforced
- No coverage configuration detected

**View Coverage:**
```bash
# No coverage commands configured
```

## Test Types

**Unit Tests:**
- Not present

**Integration Tests:**
- Not present

**E2E Tests:**
- Playwright installed in scraper package but used for production scraping (`apps/scraper/src/modules/scrapers/WWOZScraper.ts`)
- No E2E test files found

## Common Patterns

**Async Testing:**
- Not applicable

**Error Testing:**
- Not applicable

## Testing Philosophy

**Current State:**
This codebase has **no automated tests**. Testing appears to be done manually through:

1. **Docker verification** - Running services in containers
2. **CLI testing** - Manual invocation of scraper commands:
   - `--once` - Single run test
   - `--dry-run` - Preview changes without executing
   - `--snapshot <date>` - Test daily snapshot creation
   - `--backfill <days>` - Test backfill operations

3. **Script dry-run modes** - Many sync scripts have `--dry-run` flags:
   - `apps/web/scripts/sync-incremental.ts --dry-run`
   - `apps/web/scripts/sync-wwoz-db.ts --dry-run`
   - `apps/web/scripts/sync-incremental-sqlite.ts --dry-run`

**Verification approaches:**
- Manual verification via Docker logs: `docker compose logs -f scraper`
- Database inspection after sync operations
- Visual inspection of deployed web application
- GitHub Actions CI workflow (`.github/workflows/ci.yml`) exists but type-check is skipped for web app

**Known Issues:**
- Type errors exist but are not blocking: CI skips type-check for `@jazzapedia/web`
- No regression protection - Changes rely on manual testing
- No automated integration testing between scraper, database, and web app

**Recommended Testing Strategy:**
If tests were to be added, prioritize:

1. **Sync script validation** - Most critical data pipeline
   - Test hash-based change detection in `sync-incremental.ts`
   - Test portrait matching logic in `findPortraitFile()`
   - Test database upsert operations

2. **Data transformation utilities** - Pure functions ideal for testing
   - `packages/utils/src/slug.ts` - `generateSlug()`, `normalizeArtistName()`
   - `packages/utils/src/markdown.ts` - `stripHtml()`, `markdownToPlainText()`
   - `packages/utils/src/hash.ts` - Hash generation consistency

3. **Database adapter layer** - Contract testing
   - `packages/db/src/sqlite.ts` - SQLite wrapper D1 compatibility
   - `packages/db/src/d1.ts` - D1 wrapper behavior
   - `apps/web/src/lib/db.ts` - Environment detection logic

4. **Scraper parsing** - High value for regression prevention
   - WWOZ HTML parsing reliability
   - Date/time parsing in `apps/scraper/src/utils/date.ts`
   - Show guessing logic in `apps/scraper/src/utils/showGuesser.ts`

**Testing would require:**
- Install test framework: `vitest` (recommended for TypeScript/Vite ecosystem)
- Add test scripts to each package's `package.json`
- Mock external APIs: Spotify, Cloudflare D1, file system
- Create test fixtures: Sample markdown files, database snapshots
- Set up CI enforcement: Remove type-check skip, require tests to pass

---

*Testing analysis: 2026-02-02*
