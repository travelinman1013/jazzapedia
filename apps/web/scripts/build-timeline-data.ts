#!/usr/bin/env tsx
/**
 * Timeline Data Builder
 *
 * Pre-computes artist timeline data for the /timeline page.
 * Only includes artists with birth_date (currently ~36% of all artists).
 *
 * Output: src/data/timeline-data.json
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';

interface TimelineArtist {
  slug: string;
  title: string;
  birthYear: number;
  deathYear: number | null;
  isActive: boolean;
  genres: string;
  imageFilename: string | null;
  decadeId: string;
}

function getDecadeId(year: number): string {
  if (year < 1920) return 'pre-1920';
  if (year >= 1980) return '1980s+';
  const decade = Math.floor(year / 10) * 10;
  return `${decade}s`;
}

async function buildTimeline() {
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');
  const outputPath = path.join(process.cwd(), 'src/data/timeline-data.json');

  if (!fs.existsSync(dbPath)) {
    console.warn(`[timeline] Database not found: ${dbPath} — writing empty data`);
    fs.writeFileSync(outputPath, '[]');
    return;
  }

  const db = new Database(dbPath, { readonly: true });
  console.log(`[timeline] Connected to ${dbPath}`);

  const rows = db.prepare(`
    SELECT slug, title, birth_date, death_date, is_active, genres, image_filename
    FROM artists
    WHERE birth_date IS NOT NULL AND birth_date <> ''
      AND length(birth_date) >= 4
    ORDER BY birth_date
  `).all() as {
    slug: string; title: string; birth_date: string; death_date: string | null;
    is_active: number; genres: string; image_filename: string | null;
  }[];

  const timeline: TimelineArtist[] = [];

  for (const row of rows) {
    const birthYear = parseInt(row.birth_date.substring(0, 4), 10);
    if (isNaN(birthYear) || birthYear < 1700 || birthYear > 2025) continue;

    let deathYear: number | null = null;
    if (row.death_date && row.death_date.length >= 4) {
      deathYear = parseInt(row.death_date.substring(0, 4), 10);
      if (isNaN(deathYear)) deathYear = null;
    }

    // Take first 2 genres for compactness
    const genreList = row.genres ? row.genres.split(',').map(g => g.trim()).slice(0, 2).join(', ') : '';

    timeline.push({
      slug: row.slug,
      title: row.title,
      birthYear,
      deathYear,
      isActive: row.is_active === 1,
      genres: genreList,
      imageFilename: row.image_filename,
      decadeId: getDecadeId(birthYear),
    });
  }

  fs.writeFileSync(outputPath, JSON.stringify(timeline));
  const sizeKB = (fs.statSync(outputPath).size / 1024).toFixed(0);
  console.log(`[timeline] Wrote ${timeline.length} artists to timeline-data.json (${sizeKB}KB)`);

  // Print decade distribution
  const decadeCounts: Record<string, number> = {};
  for (const a of timeline) {
    decadeCounts[a.decadeId] = (decadeCounts[a.decadeId] || 0) + 1;
  }
  console.log(`[timeline] Decade distribution:`);
  for (const [decade, count] of Object.entries(decadeCounts).sort()) {
    console.log(`  ${decade}: ${count}`);
  }

  db.close();
}

buildTimeline().catch(err => {
  console.error('[timeline] Fatal error:', err);
  process.exit(1);
});
