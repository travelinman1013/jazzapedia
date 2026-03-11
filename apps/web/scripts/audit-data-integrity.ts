#!/usr/bin/env tsx
/**
 * Data Integrity Audit
 *
 * Scans the artists table and related tables for known data quality issues.
 * Outputs a JSON report and can optionally apply deterministic fixes.
 *
 * Usage:
 *   npx tsx scripts/audit-data-integrity.ts                # Full audit, write report
 *   npx tsx scripts/audit-data-integrity.ts --summary      # Console summary only
 *   npx tsx scripts/audit-data-integrity.ts --check title  # Run one check
 *   npx tsx scripts/audit-data-integrity.ts --fix          # Apply auto-fixes
 *   npx tsx scripts/audit-data-integrity.ts --fix --dry-run
 *   npx tsx scripts/audit-data-integrity.ts --fix --fix-markdown
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';
import matter from 'gray-matter';
import { toTitleCase, stripCitations, normalizeDate } from './lib/normalize.js';

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface AuditIssue {
  slug: string;
  field: string;
  issue_type: string;
  current_value: string | null;
  suggested_value: string | null;
  confidence: number;
  auto_fixable: boolean;
}

interface AuditReport {
  generated_at: string;
  total_artists: number;
  issues_by_type: Record<string, number>;
  issues: AuditIssue[];
  genre_clusters: Array<{ canonical: string; variants: string[] }>;
}

// ---------------------------------------------------------------------------
// CLI argument parsing
// ---------------------------------------------------------------------------

const args = process.argv.slice(2);

function hasFlag(name: string): boolean {
  return args.includes(`--${name}`);
}

function getFlagValue(name: string): string | undefined {
  const idx = args.indexOf(`--${name}`);
  if (idx === -1 || idx + 1 >= args.length) return undefined;
  return args[idx + 1];
}

const checkName = getFlagValue('check');
const summaryOnly = hasFlag('summary');
const doFix = hasFlag('fix');
const dryRun = hasFlag('dry-run');
const fixMarkdown = hasFlag('fix-markdown');

// ---------------------------------------------------------------------------
// Diacritical stripping for duplicate detection
// ---------------------------------------------------------------------------

const DIACRITICAL_MAP: Record<string, string> = {
  'é': 'e', 'è': 'e', 'ê': 'e', 'ë': 'e',
  'á': 'a', 'à': 'a', 'â': 'a', 'ä': 'a', 'ã': 'a', 'å': 'a',
  'í': 'i', 'ì': 'i', 'î': 'i', 'ï': 'i',
  'ó': 'o', 'ò': 'o', 'ô': 'o', 'ö': 'o', 'õ': 'o',
  'ú': 'u', 'ù': 'u', 'û': 'u', 'ü': 'u',
  'ñ': 'n',
  'ç': 'c',
  'ý': 'y', 'ÿ': 'y',
  'ð': 'd', 'þ': 'th', 'ß': 'ss',
  'ø': 'o', 'æ': 'ae',
};

function stripDiacriticals(str: string): string {
  let out = '';
  for (const ch of str) {
    out += DIACRITICAL_MAP[ch] ?? ch;
  }
  return out;
}

// ---------------------------------------------------------------------------
// Exception set for title casing
// ---------------------------------------------------------------------------

const TITLE_EXCEPTIONS = new Set([
  'abba', 'ub40', 'ac/dc', 'devo', 'mgmt', 'mf doom',
  'rza', 'gza', 'odb', 'k.d. lang', 'deadmau5', 'blink-182', '311',
]);

// ---------------------------------------------------------------------------
// Band keywords for artist_type inference
// ---------------------------------------------------------------------------

const BAND_KEYWORDS = [
  'trio', 'quartet', 'quintet', 'sextet', 'orchestra', 'band',
  'ensemble', 'collective', 'society', 'allstars', 'all-stars', 'all stars',
];

const BAND_KEYWORD_RE = new RegExp(
  `\\b(?:${BAND_KEYWORDS.map(k => k.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')).join('|')})\\b`,
  'i',
);

// ---------------------------------------------------------------------------
// Artist type mapping
// ---------------------------------------------------------------------------

const ARTIST_TYPE_MAP: Record<string, string> = {
  'Person': 'person',
  'Group': 'band',
  'group': 'band',
  'group_or_band': 'band',
  'Orchestra': 'band',
  'orchestra': 'band',
  'choir': 'band',
  'character': 'person',
  'unknown': 'person',
};

// ---------------------------------------------------------------------------
// Audit checks
// ---------------------------------------------------------------------------

function auditTitleCasing(db: Database.Database): AuditIssue[] {
  const issues: AuditIssue[] = [];

  // ALL CAPS titles
  const allCaps = db.prepare(
    `SELECT slug, title FROM artists WHERE title = UPPER(title) AND LENGTH(title) > 3`
  ).all() as { slug: string; title: string }[];

  for (const row of allCaps) {
    if (TITLE_EXCEPTIONS.has(row.title.toLowerCase())) continue;
    const suggested = toTitleCase(row.title);
    if (suggested !== row.title) {
      issues.push({
        slug: row.slug,
        field: 'title',
        issue_type: 'title_all_caps',
        current_value: row.title,
        suggested_value: suggested,
        confidence: 0.95,
        auto_fixable: true,
      });
    }
  }

  // all lowercase titles
  const allLower = db.prepare(
    `SELECT slug, title FROM artists WHERE title = LOWER(title) AND LENGTH(title) > 1`
  ).all() as { slug: string; title: string }[];

  for (const row of allLower) {
    if (TITLE_EXCEPTIONS.has(row.title.toLowerCase())) continue;
    const suggested = toTitleCase(row.title);
    if (suggested !== row.title) {
      issues.push({
        slug: row.slug,
        field: 'title',
        issue_type: 'title_all_lowercase',
        current_value: row.title,
        suggested_value: suggested,
        confidence: 0.95,
        auto_fixable: true,
      });
    }
  }

  return issues;
}

function auditCareerStatus(db: Database.Database): AuditIssue[] {
  const rows = db.prepare(
    `SELECT slug, death_date, is_active FROM artists WHERE death_date IS NOT NULL AND death_date != '' AND is_active = 1`
  ).all() as { slug: string; death_date: string; is_active: number }[];

  return rows.map(row => ({
    slug: row.slug,
    field: 'is_active',
    issue_type: 'dead_but_active',
    current_value: '1',
    suggested_value: '0',
    confidence: 1.0,
    auto_fixable: true,
  }));
}

function auditCitationMarkers(db: Database.Database): AuditIssue[] {
  const issues: AuditIssue[] = [];
  const citationRe = /\[\d+\]/;

  const fields = ['title', 'birth_place', 'origin', 'birth_date', 'death_date'] as const;
  const rows = db.prepare(
    `SELECT slug, title, birth_place, origin, birth_date, death_date FROM artists`
  ).all() as { slug: string; title: string | null; birth_place: string | null; origin: string | null; birth_date: string | null; death_date: string | null }[];

  for (const row of rows) {
    for (const field of fields) {
      const value = row[field];
      if (value && citationRe.test(value)) {
        issues.push({
          slug: row.slug,
          field,
          issue_type: 'citation_in_metadata',
          current_value: value,
          suggested_value: stripCitations(value),
          confidence: 1.0,
          auto_fixable: true,
        });
      }
    }
  }

  return issues;
}

function auditBioCitations(db: Database.Database): { count: number; issues: AuditIssue[] } {
  const rows = db.prepare(
    `SELECT slug, bio_markdown FROM artists WHERE bio_markdown LIKE '%[1]%' OR bio_markdown LIKE '%[2]%' OR bio_markdown LIKE '%[3]%'`
  ).all() as { slug: string; bio_markdown: string }[];

  const issues: AuditIssue[] = [];
  for (const row of rows) {
    if (/\[\d+\]/.test(row.bio_markdown)) {
      issues.push({
        slug: row.slug,
        field: 'bio_markdown',
        issue_type: 'citation_in_bio',
        current_value: `(${(row.bio_markdown.match(/\[\d+\]/g) || []).length} citations)`,
        suggested_value: '(stripped)',
        confidence: 1.0,
        auto_fixable: true,
      });
    }
  }

  return { count: issues.length, issues };
}

function auditDateFormats(db: Database.Database): AuditIssue[] {
  const issues: AuditIssue[] = [];
  const isoRe = /^\d{4}(-\d{2}(-\d{2})?)?$/;

  const rows = db.prepare(
    `SELECT slug, birth_date, death_date FROM artists WHERE (birth_date IS NOT NULL AND birth_date != '') OR (death_date IS NOT NULL AND death_date != '')`
  ).all() as { slug: string; birth_date: string | null; death_date: string | null }[];

  for (const row of rows) {
    for (const field of ['birth_date', 'death_date'] as const) {
      const value = row[field];
      if (!value) continue;
      if (isoRe.test(value)) continue;

      const normalized = normalizeDate(value);
      if (normalized) {
        const isCirca = /^(?:circa|c\.|ca\.)/i.test(value.trim());
        const isFullDate = /^\d{4}-\d{2}-\d{2}$/.test(normalized);
        issues.push({
          slug: row.slug,
          field,
          issue_type: 'date_format',
          current_value: value,
          suggested_value: normalized,
          confidence: isCirca ? 0.7 : isFullDate ? 0.9 : 0.9,
          auto_fixable: true,
        });
      } else {
        issues.push({
          slug: row.slug,
          field,
          issue_type: 'date_format_unparseable',
          current_value: value,
          suggested_value: null,
          confidence: 0,
          auto_fixable: false,
        });
      }
    }
  }

  return issues;
}

function auditBareLocations(db: Database.Database): AuditIssue[] {
  const issues: AuditIssue[] = [];

  const rows = db.prepare(
    `SELECT slug, birth_place, origin FROM artists WHERE (birth_place IS NOT NULL AND birth_place != '' AND birth_place NOT LIKE '%,%') OR (origin IS NOT NULL AND origin != '' AND origin NOT LIKE '%,%')`
  ).all() as { slug: string; birth_place: string | null; origin: string | null }[];

  for (const row of rows) {
    if (row.birth_place && !row.birth_place.includes(',')) {
      issues.push({
        slug: row.slug,
        field: 'birth_place',
        issue_type: 'bare_location',
        current_value: row.birth_place,
        suggested_value: null,
        confidence: 0,
        auto_fixable: false,
      });
    }
    if (row.origin && !row.origin.includes(',')) {
      issues.push({
        slug: row.slug,
        field: 'origin',
        issue_type: 'bare_location',
        current_value: row.origin,
        suggested_value: null,
        confidence: 0,
        auto_fixable: false,
      });
    }
  }

  return issues;
}

function auditArtistType(db: Database.Database): AuditIssue[] {
  const issues: AuditIssue[] = [];

  // Part A: case normalization
  const wrongCase = db.prepare(
    `SELECT slug, artist_type FROM artists WHERE artist_type IS NOT NULL AND artist_type NOT IN ('person', 'band')`
  ).all() as { slug: string; artist_type: string }[];

  for (const row of wrongCase) {
    const mapped = ARTIST_TYPE_MAP[row.artist_type];
    issues.push({
      slug: row.slug,
      field: 'artist_type',
      issue_type: 'artist_type_wrong_case',
      current_value: row.artist_type,
      suggested_value: mapped ?? null,
      confidence: mapped ? 1.0 : 0.5,
      auto_fixable: !!mapped,
    });
  }

  // Part B: NULL inference from title
  const nullType = db.prepare(
    `SELECT slug, title FROM artists WHERE artist_type IS NULL`
  ).all() as { slug: string; title: string }[];

  for (const row of nullType) {
    if (BAND_KEYWORD_RE.test(row.title)) {
      issues.push({
        slug: row.slug,
        field: 'artist_type',
        issue_type: 'artist_type_null_inferred',
        current_value: null,
        suggested_value: 'band',
        confidence: 0.85,
        auto_fixable: true,
      });
    }
  }

  return issues;
}

function auditGenreFrequency(db: Database.Database): Array<{ canonical: string; variants: string[] }> {
  const rows = db.prepare(
    `SELECT value, COUNT(*) as cnt FROM artists, json_each(artists.genres) GROUP BY value ORDER BY cnt DESC`
  ).all() as { value: string; cnt: number }[];

  // Group by lowercase key
  const groups = new Map<string, { variant: string; count: number }[]>();
  for (const row of rows) {
    const key = row.value.toLowerCase().trim();
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key)!.push({ variant: row.value, count: row.cnt });
  }

  // Only keep groups with more than one variant
  const clusters: Array<{ canonical: string; variants: string[] }> = [];
  for (const [, variants] of groups) {
    if (variants.length <= 1) continue;
    // Pick the most common as canonical
    variants.sort((a, b) => b.count - a.count);
    clusters.push({
      canonical: variants[0].variant,
      variants: variants.map(v => v.variant),
    });
  }

  return clusters;
}

function auditOrphanedRelationships(db: Database.Database): AuditIssue[] {
  const rows = db.prepare(`
    SELECT ar.source_slug, ar.target_slug, ar.relationship_type
    FROM artist_relationships ar
    LEFT JOIN artists a1 ON ar.source_slug = a1.slug
    LEFT JOIN artists a2 ON ar.target_slug = a2.slug
    WHERE a1.slug IS NULL OR a2.slug IS NULL
  `).all() as { source_slug: string; target_slug: string; relationship_type: string }[];

  return rows.map(row => ({
    slug: row.source_slug,
    field: 'relationship',
    issue_type: 'orphaned_relationship',
    current_value: `${row.source_slug} -[${row.relationship_type}]-> ${row.target_slug}`,
    suggested_value: null,
    confidence: 1.0,
    auto_fixable: false,
  }));
}

function auditDuplicateSlugs(db: Database.Database): AuditIssue[] {
  const rows = db.prepare(
    `SELECT slug, title FROM artists ORDER BY slug`
  ).all() as { slug: string; title: string }[];

  // Group by normalized slug
  const groups = new Map<string, { slug: string; title: string }[]>();
  for (const row of rows) {
    const normalized = stripDiacriticals(row.slug);
    if (!groups.has(normalized)) groups.set(normalized, []);
    groups.get(normalized)!.push(row);
  }

  const issues: AuditIssue[] = [];
  for (const [, entries] of groups) {
    if (entries.length <= 1) continue;
    for (const entry of entries) {
      issues.push({
        slug: entry.slug,
        field: 'slug',
        issue_type: 'duplicate_slug',
        current_value: entry.title,
        suggested_value: entries.map(e => e.slug).join(', '),
        confidence: 0.8,
        auto_fixable: false,
      });
    }
  }

  return issues;
}

// ---------------------------------------------------------------------------
// Fix mode
// ---------------------------------------------------------------------------

function applyFixes(db: Database.Database, issues: AuditIssue[]): number {
  const fixable = issues.filter(i => i.auto_fixable && i.confidence >= 0.95 && i.suggested_value !== null);

  // Group by slug
  const bySlug = new Map<string, AuditIssue[]>();
  for (const issue of fixable) {
    if (!bySlug.has(issue.slug)) bySlug.set(issue.slug, []);
    bySlug.get(issue.slug)!.push(issue);
  }

  if (dryRun) {
    console.log(`\n[dry-run] Would apply ${fixable.length} fixes to ${bySlug.size} artists:\n`);
    for (const [slug, slugIssues] of bySlug) {
      for (const issue of slugIssues) {
        console.log(`  ${slug}.${issue.field}: "${issue.current_value}" -> "${issue.suggested_value}"`);
      }
    }
    return fixable.length;
  }

  const FIELD_TO_COLUMN: Record<string, string> = {
    title: 'title',
    is_active: 'is_active',
    birth_place: 'birth_place',
    origin: 'origin',
    birth_date: 'birth_date',
    death_date: 'death_date',
    artist_type: 'artist_type',
  };

  // Prepare bio_markdown citation stripper separately (large text, handled per-row)
  const bioStmt = db.prepare(`UPDATE artists SET bio_markdown = ?, bio_html = REPLACE(bio_html, ?, '') WHERE slug = ?`);

  let totalFixed = 0;

  const runAll = db.transaction(() => {
    for (const [slug, slugIssues] of bySlug) {
      const setClauses: string[] = [];
      const values: (string | number)[] = [];

      for (const issue of slugIssues) {
        // Handle bio_markdown separately — need to strip citations from actual content
        if (issue.field === 'bio_markdown') {
          const row = db.prepare('SELECT bio_markdown, bio_html FROM artists WHERE slug = ?').get(slug) as { bio_markdown: string; bio_html: string } | undefined;
          if (row) {
            const cleanMd = stripCitations(row.bio_markdown);
            // Strip citation markers from HTML too
            const cleanHtml = row.bio_html.replace(/\[\d+\]/g, '');
            db.prepare('UPDATE artists SET bio_markdown = ?, bio_html = ? WHERE slug = ?').run(cleanMd, cleanHtml, slug);
            totalFixed++;
          }
          continue;
        }

        const col = FIELD_TO_COLUMN[issue.field];
        if (!col) continue;
        setClauses.push(`${col} = ?`);
        if (issue.field === 'is_active') {
          values.push(Number(issue.suggested_value));
        } else {
          values.push(issue.suggested_value!);
        }
      }

      if (setClauses.length === 0) continue;
      values.push(slug);

      const sql = `UPDATE artists SET ${setClauses.join(', ')} WHERE slug = ?`;
      db.prepare(sql).run(...values);
      totalFixed += setClauses.length;
    }
  });

  runAll();
  console.log(`\nApplied ${totalFixed} fixes to ${bySlug.size} artists`);
  return totalFixed;
}

function applyMarkdownFixes(issues: AuditIssue[]): void {
  const artistsDir = process.env.ARTISTS_DIR || path.join(process.cwd(), '../../content/artists');
  if (!fs.existsSync(artistsDir)) {
    console.error(`[fix-markdown] Artists directory not found: ${artistsDir}`);
    return;
  }

  const fixable = issues.filter(i => i.auto_fixable && i.confidence >= 0.95 && i.suggested_value !== null);

  // Group by slug
  const bySlug = new Map<string, AuditIssue[]>();
  for (const issue of fixable) {
    if (!bySlug.has(issue.slug)) bySlug.set(issue.slug, []);
    bySlug.get(issue.slug)!.push(issue);
  }

  // Map issue fields to frontmatter keys
  const FIELD_TO_FRONTMATTER: Record<string, string> = {
    title: 'title',
    birth_place: 'birth_place',
    origin: 'origin',
    birth_date: 'birth_date',
    death_date: 'death_date',
    artist_type: 'artist_type',
    is_active: 'is_active',
  };

  let updated = 0;

  for (const [slug, slugIssues] of bySlug) {
    // Try common filename patterns
    const candidates = [
      `${slug}.md`,
      `${slug.replace(/-/g, '_')}.md`,
    ];

    let filePath: string | null = null;
    for (const candidate of candidates) {
      const p = path.join(artistsDir, candidate);
      if (fs.existsSync(p)) {
        filePath = p;
        break;
      }
    }

    if (!filePath) continue;

    const raw = fs.readFileSync(filePath, 'utf-8');
    const parsed = matter(raw);
    let changed = false;

    for (const issue of slugIssues) {
      const fmKey = FIELD_TO_FRONTMATTER[issue.field];
      if (!fmKey) continue;

      if (issue.field === 'is_active') {
        parsed.data[fmKey] = issue.suggested_value === '0' ? false : true;
      } else {
        parsed.data[fmKey] = issue.suggested_value;
      }
      changed = true;
    }

    if (changed) {
      if (dryRun) {
        console.log(`  [dry-run] Would update ${filePath}`);
      } else {
        fs.writeFileSync(filePath, matter.stringify(parsed.content, parsed.data));
      }
      updated++;
    }
  }

  console.log(`${dryRun ? '[dry-run] Would update' : 'Updated'} ${updated} markdown files`);
}

// ---------------------------------------------------------------------------
// Summary printing
// ---------------------------------------------------------------------------

function printSummary(
  totalArtists: number,
  issues: AuditIssue[],
  bioCitationCount: number,
  genreClusters: Array<{ canonical: string; variants: string[] }>,
): void {
  const countByType = (type: string) => issues.filter(i => i.issue_type === type).length;

  const capsCount = countByType('title_all_caps');
  const lowerCount = countByType('title_all_lowercase');
  const deadActive = countByType('dead_but_active');
  const citations = countByType('citation_in_metadata');
  const dateIssues = countByType('date_format') + countByType('date_format_unparseable');
  const bareLocations = countByType('bare_location');
  const typeWrongCase = countByType('artist_type_wrong_case');
  const typeInferred = countByType('artist_type_null_inferred');
  const orphaned = countByType('orphaned_relationship');
  const duplicates = countByType('duplicate_slug');

  const totalIssues = issues.length;
  const autoFixable = issues.filter(i => i.auto_fixable).length;

  const fmt = (n: number) => n.toLocaleString();
  const pad = (s: string, len: number) => s.padEnd(len);
  const rpad = (s: string, len: number) => s.padStart(len);

  console.log(`\n=== Data Integrity Audit ===`);
  console.log(`Total artists: ${fmt(totalArtists)}\n`);
  console.log(`${pad('Issue', 35)} ${rpad('Count', 8)}    Auto-fixable`);
  console.log('─'.repeat(60));
  console.log(`${pad('Title: ALL CAPS', 35)} ${rpad(fmt(capsCount), 8)}    \u2713`);
  console.log(`${pad('Title: all lowercase', 35)} ${rpad(fmt(lowerCount), 8)}    \u2713`);
  console.log(`${pad('Career: dead but active', 35)} ${rpad(fmt(deadActive), 8)}    \u2713`);
  const bioCitations = countByType('citation_in_bio');
  console.log(`${pad('Citations in metadata', 35)} ${rpad(fmt(citations), 8)}    \u2713`);
  console.log(`${pad('Citations in bio_markdown', 35)} ${rpad(fmt(bioCitations), 8)}    \u2713`);
  console.log(`${pad('Date format issues', 35)} ${rpad(fmt(dateIssues), 8)}    \u2713`);
  console.log(`${pad('Bare locations', 35)} ${rpad(fmt(bareLocations), 8)}    \u2717 (needs LLM)`);
  console.log(`${pad('artist_type: wrong case', 35)} ${rpad(fmt(typeWrongCase), 8)}    \u2713`);
  console.log(`${pad('artist_type: NULL (inferred)', 35)} ${rpad(fmt(typeInferred), 8)}    \u2713`);
  console.log(`${pad('Orphaned relationships', 35)} ${rpad(fmt(orphaned), 8)}    \u2717`);
  console.log(`${pad('Duplicate slugs', 35)} ${rpad(fmt(duplicates), 8)}    \u2717`);
  console.log('');
  console.log(`Genre clusters with variants: ${genreClusters.length}`);
  console.log('─'.repeat(60));
  console.log(`Total issues: ${fmt(totalIssues)}`);
  console.log(`Auto-fixable: ${fmt(autoFixable)}`);
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

function main() {
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  if (!fs.existsSync(dbPath)) {
    console.error(`[audit] Database not found: ${dbPath}`);
    process.exit(1);
  }

  const db = new Database(dbPath, { readonly: !doFix || dryRun });
  console.log(`[audit] Connected to ${dbPath}${doFix ? (dryRun ? ' (dry-run)' : ' (read-write)') : ' (read-only)'}`);

  const totalArtists = (db.prepare('SELECT COUNT(*) as cnt FROM artists').get() as { cnt: number }).cnt;

  // Mapping of check names to functions
  const checks: Record<string, () => AuditIssue[]> = {
    title: () => auditTitleCasing(db),
    career: () => auditCareerStatus(db),
    citations: () => auditCitationMarkers(db),
    dates: () => auditDateFormats(db),
    locations: () => auditBareLocations(db),
    artist_type: () => auditArtistType(db),
    relationships: () => auditOrphanedRelationships(db),
    duplicates: () => auditDuplicateSlugs(db),
  };

  let issues: AuditIssue[] = [];

  if (checkName) {
    if (checkName !== 'genres' && !checks[checkName]) {
      console.error(`[audit] Unknown check: ${checkName}. Available: ${Object.keys(checks).join(', ')}, genres`);
      db.close();
      process.exit(1);
    }
    if (checkName === 'genres') {
      // genres is special — handled below
    } else {
      console.log(`[audit] Running check: ${checkName}`);
      issues = checks[checkName]();
    }
  } else {
    for (const [name, fn] of Object.entries(checks)) {
      console.log(`[audit] Running check: ${name}...`);
      const checkIssues = fn();
      console.log(`[audit]   Found ${checkIssues.length} issues`);
      issues.push(...checkIssues);
    }
  }

  // Genre clusters (always run unless a specific non-genre check is requested)
  let genreClusters: Array<{ canonical: string; variants: string[] }> = [];
  if (!checkName || checkName === 'genres') {
    console.log('[audit] Running check: genres...');
    genreClusters = auditGenreFrequency(db);
    console.log(`[audit]   Found ${genreClusters.length} genre clusters with variants`);
  }

  // Bio citation audit
  let bioCitationCount = 0;
  if (!checkName || checkName === 'citations') {
    console.log('[audit] Running check: bio citations...');
    const bioResult = auditBioCitations(db);
    bioCitationCount = bioResult.count;
    issues.push(...bioResult.issues);
    console.log(`[audit]   Found ${bioCitationCount} artists with bio citations`);
  }

  // Build issues_by_type
  const issuesByType: Record<string, number> = {};
  for (const issue of issues) {
    issuesByType[issue.issue_type] = (issuesByType[issue.issue_type] || 0) + 1;
  }

  // Print summary
  printSummary(totalArtists, issues, bioCitationCount, genreClusters);

  // Write report
  if (!summaryOnly) {
    const report: AuditReport = {
      generated_at: new Date().toISOString(),
      total_artists: totalArtists,
      issues_by_type: issuesByType,
      issues,
      genre_clusters: genreClusters,
    };

    const reportPath = path.join(process.cwd(), 'data/audit-report.json');
    const reportDir = path.dirname(reportPath);
    if (!fs.existsSync(reportDir)) {
      fs.mkdirSync(reportDir, { recursive: true });
    }
    fs.writeFileSync(reportPath, JSON.stringify(report, null, 2));
    console.log(`\n[audit] Report written to ${reportPath} (${(fs.statSync(reportPath).size / 1024).toFixed(0)}KB)`);
  }

  // Apply fixes
  if (doFix) {
    applyFixes(db, issues);
    if (fixMarkdown) {
      applyMarkdownFixes(issues);
    }
  }

  db.close();
}

main();
