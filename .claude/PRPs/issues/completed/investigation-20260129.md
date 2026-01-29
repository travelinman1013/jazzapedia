# Investigation: WWOZ Archive Statistics Not Syncing to D1 Correctly

**Issue**: Free-form description
**Type**: BUG
**Investigated**: 2026-01-29T16:30:00Z

### Assessment

| Metric     | Value    | Reasoning                                                                                                                            |
| ---------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| Severity   | MEDIUM   | Statistics display as "NaN" on production site, affecting user experience but not blocking core functionality                       |
| Complexity | LOW      | Single-line fix in one file (export-wwoz-sql.ts), no integration changes needed                                                      |
| Confidence | HIGH     | Root cause identified with clear evidence from database queries, SQL export file inspection, and git history showing recent refactor |

---

## Problem Statement

The WWOZ archive statistics page displays correctly on the local Docker deployment but shows "NaN" values for Total Tracks, Matched, and Match Rate on the Cloudflare production deployment. This regression was introduced on 2026-01-28 when the WWOZ sync pipeline was refactored to use SQL export instead of markdown parsing.

---

## Analysis

### Root Cause / Change Rationale

The bug is a **JSON double-escaping issue** in `apps/web/scripts/export-wwoz-sql.ts`. The script incorrectly treats `stats_json` as a JavaScript object and calls `JSON.stringify()` on it, but it's already a JSON string in the SQLite database. This causes the exported SQL to contain double-escaped JSON strings that cannot be parsed by the Astro page.

### Evidence Chain

WHY: Statistics display as "NaN" on production
↓ BECAUSE: `JSON.parse()` fails on the `stats_json` field in D1
Evidence: `apps/web/src/pages/wwoz/index.astro:40` - `stats: day.stats_json ? JSON.parse(day.stats_json) : null`

↓ BECAUSE: D1 contains double-escaped JSON strings instead of proper JSON
Evidence: D1 query for 2026-01-29 returns:
```
"stats_json": "\"{\\\"totalTracks\\\":6,\\\"successfullyFound\\\":2,...}\""
```
Instead of:
```
"stats_json": "{\"totalTracks\":6,\"successfullyFound\":2,...}"
```

↓ BECAUSE: The SQL export script wraps already-stringified JSON in another `JSON.stringify()` call
Evidence: `apps/web/scripts/export-wwoz-sql.ts:99` - `${escapeJson(day.stats_json)}`

↓ ROOT CAUSE: `escapeJson()` calls `JSON.stringify()` on a value that's already a JSON string
Evidence: `apps/web/scripts/export-wwoz-sql.ts:43-46`:
```typescript
function escapeJson(obj: any): string {
  if (obj === null || obj === undefined) return 'NULL';
  return escapeSql(JSON.stringify(obj));  // ← Double-stringifies!
}
```

### Affected Files

| File                                      | Lines  | Action | Description                             |
| ----------------------------------------- | ------ | ------ | --------------------------------------- |
| `apps/web/scripts/export-wwoz-sql.ts`     | 99     | UPDATE | Use escapeSql instead of escapeJson     |
| `apps/web/scripts/.wwoz-export/*`         | ALL    | DELETE | Remove cached export (will regenerate)  |
| `apps/web/src/pages/wwoz/index.astro`     | N/A    | NONE   | No changes needed (already correct)     |
| `.github/workflows/sync-artists.yml`      | N/A    | NONE   | No changes needed (already correct)     |
| Migration script (one-time D1 fix)        | NEW    | CREATE | Script to fix existing corrupted data   |

### Integration Points

- `apps/web/scripts/unified-daily-sync.sh` calls export-wwoz-sql.ts locally
- GitHub Actions workflow imports the generated SQL file to D1
- `apps/web/src/pages/wwoz/index.astro` reads from D1 and parses the JSON

### Git History

- **Introduced**: commit `e2cc0e9` - 2026-01-28 07:00:48 - "refactor: replace WWOZ markdown sync with SQL export for D1"
- **Last modified**: Same commit (script was newly created)
- **Implication**: Recent regression (< 2 days old), affects only data synced after Jan 28

---

## Implementation Plan

### Step 1: Fix the JSON export bug

**File**: `apps/web/scripts/export-wwoz-sql.ts`
**Lines**: 99
**Action**: UPDATE

**Current code:**
```typescript
// Line 99
  ${escapeJson(day.stats_json)},
```

**Required change:**
```typescript
// Line 99
  ${escapeSql(day.stats_json)},
```

**Why**: The `stats_json` column in SQLite stores a JSON string (TEXT type), not a JavaScript object. Using `escapeSql()` directly will properly quote the string without double-stringifying it.

---

### Step 2: Clean cached export file

**File**: `apps/web/scripts/.wwoz-export/wwoz-sync.sql`
**Action**: DELETE

**Command:**
```bash
rm -f apps/web/scripts/.wwoz-export/wwoz-sync.sql
```

**Why**: The cached SQL file contains the corrupted double-escaped JSON. Deleting it forces regeneration with the fix.

---

### Step 3: Regenerate SQL export

**File**: N/A
**Action**: RUN SCRIPT

**Command:**
```bash
cd apps/web
npx tsx scripts/export-wwoz-sql.ts --full
```

**Why**: This will regenerate the SQL export file with properly formatted JSON, covering all historical data.

---

### Step 4: Fix corrupted data in D1

**File**: NEW - `apps/web/scripts/fix-d1-stats-json.ts`
**Action**: CREATE

**Script to create:**
```typescript
#!/usr/bin/env npx tsx
/**
 * One-time fix: Remove double-escaped JSON quotes from stats_json column in D1
 *
 * This script fixes data corruption introduced by export-wwoz-sql.ts between
 * 2026-01-26 and 2026-01-29 where stats_json was double-escaped.
 */

import { execSync } from 'node:child_process';

const SQL_FIX = `
UPDATE wwoz_days
SET stats_json = json(stats_json)
WHERE stats_json LIKE '"{%'
  AND date >= '2026-01-26'
  AND date <= '2026-01-29';
`;

console.log('Fixing corrupted stats_json in D1...');
console.log('Affected dates: 2026-01-26 to 2026-01-29');
console.log('');

try {
  execSync(
    `npx wrangler d1 execute jazzapedia --remote --command "${SQL_FIX.replace(/\n/g, ' ')}" --yes`,
    { stdio: 'inherit' }
  );
  console.log('');
  console.log('✅ Fix complete!');
} catch (err) {
  console.error('❌ Fix failed:', err);
  process.exit(1);
}
```

**Why**: Directly fix the corrupted data in D1 without waiting for the next daily sync.

---

### Step 5: Run D1 fix script

**File**: N/A
**Action**: RUN SCRIPT

**Command:**
```bash
cd apps/web
npx tsx scripts/fix-d1-stats-json.ts
```

**Why**: Immediately repair the 4 corrupted days (Jan 26-29) in production.

---

### Step 6: Verify the fix

**File**: N/A
**Action**: MANUAL VERIFICATION

**Steps:**
1. Query D1 to verify stats_json is properly formatted:
```bash
npx wrangler d1 execute jazzapedia --remote --command "SELECT date, stats_json FROM wwoz_days WHERE date = '2026-01-29' LIMIT 1;" --json
```

2. Expected output:
```json
{
  "date": "2026-01-29",
  "stats_json": "{\"totalTracks\":6,\"successfullyFound\":2,\"notFound\":4,\"lowConfidence\":0,\"duplicates\":0}"
}
```

3. Verify production site displays statistics correctly at https://jazzapedia.com/wwoz

---

## Patterns to Follow

**From codebase - mirror these exactly:**

```typescript
// SOURCE: apps/web/scripts/export-wwoz-sql.ts:136
// Pattern for escaping plain text/number values (not JSON objects)
${escapeSql(track.genres)},
${escapeSql(track.show_name)},
${escapeSql(track.host)},
```

**Key principle**: Only use `escapeJson()` for JavaScript objects that need serialization. For database values that are already JSON strings, use `escapeSql()` directly.

---

## Edge Cases & Risks

| Risk/Edge Case                        | Mitigation                                                                  |
| ------------------------------------- | --------------------------------------------------------------------------- |
| Historical data before Jan 26         | Not affected - those dates have correct JSON format                         |
| Future syncs before fix               | Minimal risk (2-day window), will be overwritten by corrected full sync     |
| D1 UPDATE might fail on syntax        | Script uses `json()` function which safely parses and re-serializes         |
| Local SQLite has correct data         | Verified - local deployment works correctly, only export/import is broken   |

---

## Validation

### Automated Checks

```bash
# Type check
pnpm --filter @jazzapedia/web exec tsc --noEmit

# Build check
pnpm turbo build --filter=@jazzapedia/web
```

### Manual Verification

1. Run the fix script and verify D1 queries return properly formatted JSON
2. Check production site (jazzapedia.com/wwoz) shows numeric statistics instead of "NaN"
3. Verify local Docker deployment continues to work correctly
4. Check that next daily sync (unified-daily-sync.sh) runs without errors

---

## Scope Boundaries

**IN SCOPE:**
- Fix JSON double-escaping in export-wwoz-sql.ts
- Repair corrupted data in D1 for Jan 26-29
- Verify fix works in production

**OUT OF SCOPE (do not touch):**
- Changes to sync-wwoz-db.ts (correctly stores JSON strings in SQLite)
- Changes to index.astro page (correctly parses JSON)
- Changes to GitHub Actions workflow (correctly imports SQL)
- Refactoring the escapeJson/escapeSql helper functions (works correctly for other use cases)

---

## Metadata

- **Investigated by**: Claude
- **Timestamp**: 2026-01-29T16:30:00Z
- **Artifact**: `.claude/PRPs/issues/investigation-20260129.md`
