#!/usr/bin/env npx tsx
/**
 * One-time fix: Remove double-escaped JSON quotes from stats_json column in D1
 *
 * This script fixes data corruption introduced by export-wwoz-sql.ts between
 * 2026-01-26 and 2026-01-29 where stats_json was double-escaped.
 */

import { execSync } from 'node:child_process';
import fs from 'node:fs';

const SQL_FIX = `
UPDATE wwoz_days
SET stats_json = replace(stats_json, '\\\\"', '"')
WHERE stats_json LIKE '%\\\\"%'
  AND date >= '2026-01-26'
  AND date <= '2026-01-29';
`;

console.log('Fixing corrupted stats_json in D1...');
console.log('Affected dates: 2026-01-26 to 2026-01-29');
console.log('');

const tempFile = `/tmp/fix-d1-stats-${Date.now()}.sql`;
fs.writeFileSync(tempFile, SQL_FIX);

try {
  execSync(
    `npx wrangler d1 execute jazzapedia --remote --file="${tempFile}" --yes`,
    { stdio: 'inherit' }
  );
  console.log('');
  console.log('✅ Fix complete!');
} catch (err) {
  console.error('❌ Fix failed:', err);
  process.exit(1);
} finally {
  fs.unlinkSync(tempFile);
}
