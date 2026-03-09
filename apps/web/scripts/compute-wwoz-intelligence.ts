#!/usr/bin/env tsx
/**
 * WWOZ Intelligence Dashboard - Pre-computation Script
 *
 * Single-pass computation over wwoz_tracks to populate materialized tables:
 *   - wwoz_genre_weekly: genre play counts by week (for heatmap)
 *   - wwoz_host_profiles: host aggregations (tracks, artists, genres, shows)
 *   - wwoz_artist_cooccurrence: same-day artist pairs (for "Frequently Paired")
 *   - wwoz_artist_first_seen: first appearance tracking (for discovery velocity)
 *
 * Follows compute-audio-similarity.ts pattern: direct better-sqlite3, graceful DB-missing handling.
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';
import { normalizeArtistName } from './lib/normalize.js';

const TOP_COOCCURRENCE_ARTISTS = 200;
const MIN_COOCCURRENCE_COUNT = 3;

interface TrackRow {
  date: string;
  artist: string;
  genres: string | null;
  host: string | null;
  show_name: string | null;
  status: string | null;
}

/** Get Monday of the week for a given date string (YYYY-MM-DD) */
function getWeekStart(dateStr: string): string {
  const d = new Date(dateStr + 'T00:00:00Z');
  const day = d.getUTCDay(); // 0=Sun, 1=Mon, ...
  const diff = day === 0 ? 6 : day - 1; // days since Monday
  d.setUTCDate(d.getUTCDate() - diff);
  return d.toISOString().slice(0, 10);
}

async function computeIntelligence() {
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  if (!fs.existsSync(dbPath)) {
    console.warn(`[intelligence] Database not found: ${dbPath} — skipping`);
    return;
  }

  const db = new Database(dbPath, { readonly: false });
  console.log(`[intelligence] Connected to ${dbPath}`);

  // Ensure tables exist
  const migrationPath = path.join(process.cwd(), 'migrations/0010_wwoz_intelligence.sql');
  if (fs.existsSync(migrationPath)) {
    const migration = fs.readFileSync(migrationPath, 'utf-8');
    db.exec(migration);
  }

  // Load all tracks
  const tracks = db.prepare(`
    SELECT date, artist, genres, host, show_name, status
    FROM wwoz_tracks
  `).all() as TrackRow[];

  console.log(`[intelligence] Loaded ${tracks.length} tracks`);

  if (tracks.length === 0) {
    console.log('[intelligence] No tracks found. Skipping.');
    db.close();
    return;
  }

  // Build host blocklist for genre cleaning
  const hostRows = db.prepare(`
    SELECT DISTINCT host FROM wwoz_tracks WHERE host IS NOT NULL AND host <> ''
  `).all() as { host: string }[];
  const hostBlocklist = new Set(hostRows.map(r => r.host.toLowerCase()));
  // Also block obvious non-genre values
  hostBlocklist.add('genres');

  // Load artist slugs for wiki matching
  const slugRows = db.prepare('SELECT slug FROM artists').all() as { slug: string }[];
  const slugSet = new Set(slugRows.map(r => r.slug));

  // ---- Single-pass accumulation ----
  const startTime = Date.now();

  // Genre weekly: Map<"weekStart|genre", { count, artists: Set }>
  const genreWeekly = new Map<string, { count: number; artists: Set<string> }>();

  // Host profiles: Map<host, { tracks, matched, artists: Set, genres: Map<genre,count>, shows: Set, minDate, maxDate }>
  const hostProfiles = new Map<string, {
    tracks: number;
    matched: number;
    artists: Set<string>;
    genres: Map<string, number>;
    shows: Set<string>;
    minDate: string;
    maxDate: string;
  }>();

  // Co-occurrence intermediate: Map<date, Set<normalizedArtist>>
  const dateArtists = new Map<string, Set<string>>();

  // First seen: Map<normalizedArtist, { display, firstDate, totalPlays }>
  const firstSeen = new Map<string, { display: string; firstDate: string; totalPlays: number }>();

  // Artist play counts for co-occurrence filtering
  const artistPlayCounts = new Map<string, number>();

  for (const track of tracks) {
    if (!track.artist) continue;

    const normArtist = normalizeArtistName(track.artist);

    // --- First seen ---
    const existing = firstSeen.get(normArtist);
    if (!existing) {
      firstSeen.set(normArtist, {
        display: track.artist,
        firstDate: track.date,
        totalPlays: 1,
      });
    } else {
      existing.totalPlays++;
      if (track.date < existing.firstDate) {
        existing.firstDate = track.date;
        existing.display = track.artist; // use earliest occurrence's name
      }
    }

    // --- Artist play counts (for co-occurrence top-N filtering) ---
    artistPlayCounts.set(normArtist, (artistPlayCounts.get(normArtist) || 0) + 1);

    // --- Date artists (for co-occurrence) ---
    if (!dateArtists.has(track.date)) {
      dateArtists.set(track.date, new Set());
    }
    dateArtists.get(track.date)!.add(normArtist);

    // --- Genre weekly ---
    if (track.genres && track.genres.trim()) {
      const weekStart = getWeekStart(track.date);
      const genres = track.genres.split(',').map(g => g.trim()).filter(g => {
        if (!g) return false;
        if (hostBlocklist.has(g.toLowerCase())) return false;
        // Filter out percentage values (leaked confidence)
        if (/^\d+\.?\d*%$/.test(g)) return false;
        return true;
      });

      for (const genre of genres) {
        const key = `${weekStart}|${genre}`;
        const entry = genreWeekly.get(key);
        if (!entry) {
          genreWeekly.set(key, { count: 1, artists: new Set([normArtist]) });
        } else {
          entry.count++;
          entry.artists.add(normArtist);
        }
      }
    }

    // --- Host profiles ---
    if (track.host && track.host.trim()) {
      const host = track.host.trim();
      let profile = hostProfiles.get(host);
      if (!profile) {
        profile = {
          tracks: 0,
          matched: 0,
          artists: new Set(),
          genres: new Map(),
          shows: new Set(),
          minDate: track.date,
          maxDate: track.date,
        };
        hostProfiles.set(host, profile);
      }
      profile.tracks++;
      if (track.status === 'found') profile.matched++;
      profile.artists.add(normArtist);
      if (track.show_name) profile.shows.add(track.show_name);
      if (track.date < profile.minDate) profile.minDate = track.date;
      if (track.date > profile.maxDate) profile.maxDate = track.date;

      // Host genre tracking (with same cleaning)
      if (track.genres && track.genres.trim()) {
        const genres = track.genres.split(',').map(g => g.trim()).filter(g => {
          if (!g) return false;
          if (hostBlocklist.has(g.toLowerCase())) return false;
          if (/^\d+\.?\d*%$/.test(g)) return false;
          return true;
        });
        for (const genre of genres) {
          profile.genres.set(genre, (profile.genres.get(genre) || 0) + 1);
        }
      }
    }
  }

  const passTime = Date.now() - startTime;
  console.log(`[intelligence] Single-pass accumulation: ${passTime}ms`);

  // ---- Post-process co-occurrence ----
  console.log('[intelligence] Computing co-occurrence pairs...');

  // Get top N artists by play count
  const topArtists = Array.from(artistPlayCounts.entries())
    .sort((a, b) => b[1] - a[1])
    .slice(0, TOP_COOCCURRENCE_ARTISTS)
    .map(([artist]) => artist);
  const topArtistSet = new Set(topArtists);

  // Compute co-occurrence counts
  const cooccurrence = new Map<string, number>();
  for (const [, artists] of dateArtists) {
    // Filter to top artists only
    const dayTopArtists = Array.from(artists).filter(a => topArtistSet.has(a)).sort();
    for (let i = 0; i < dayTopArtists.length; i++) {
      for (let j = i + 1; j < dayTopArtists.length; j++) {
        const key = `${dayTopArtists[i]}|${dayTopArtists[j]}`;
        cooccurrence.set(key, (cooccurrence.get(key) || 0) + 1);
      }
    }
  }

  console.log(`[intelligence] Raw co-occurrence pairs: ${cooccurrence.size}`);

  // ---- Write to database ----
  console.log('[intelligence] Writing to database...');

  // Clear old data
  db.exec('DELETE FROM wwoz_genre_weekly');
  db.exec('DELETE FROM wwoz_host_profiles');
  db.exec('DELETE FROM wwoz_artist_cooccurrence');
  db.exec('DELETE FROM wwoz_artist_first_seen');

  // Genre weekly
  const insertGenreWeekly = db.prepare(`
    INSERT INTO wwoz_genre_weekly (week_start, genre, play_count, unique_artists)
    VALUES (?, ?, ?, ?)
  `);
  const genreWeeklyTx = db.transaction(() => {
    for (const [key, val] of genreWeekly) {
      const [weekStart, genre] = key.split('|');
      insertGenreWeekly.run(weekStart, genre, val.count, val.artists.size);
    }
  });
  genreWeeklyTx();
  console.log(`[intelligence] wwoz_genre_weekly: ${genreWeekly.size} rows`);

  // Host profiles
  const insertHostProfile = db.prepare(`
    INSERT INTO wwoz_host_profiles (host, total_tracks, unique_artists, match_rate, top_genres_json, top_artists_json, show_names_json, first_seen, last_seen)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
  `);
  const hostProfilesTx = db.transaction(() => {
    for (const [host, profile] of hostProfiles) {
      const matchRate = profile.tracks > 0 ? profile.matched / profile.tracks : 0;
      const topGenres = Array.from(profile.genres.entries())
        .sort((a, b) => b[1] - a[1])
        .slice(0, 10)
        .map(([genre, count]) => ({ genre, count }));
      // We don't have per-host artist play counts in a single pass, so store unique count only
      insertHostProfile.run(
        host,
        profile.tracks,
        profile.artists.size,
        Math.round(matchRate * 1000) / 1000,
        JSON.stringify(topGenres),
        JSON.stringify([]), // top_artists_json populated below
        JSON.stringify(Array.from(profile.shows)),
        profile.minDate,
        profile.maxDate,
      );
    }
  });
  hostProfilesTx();

  // Second pass for host top artists (need per-host artist counts)
  // Use a targeted query for this
  const hostArtistCounts = db.prepare(`
    SELECT host, artist, COUNT(*) as c
    FROM wwoz_tracks
    WHERE host IS NOT NULL AND host <> ''
    GROUP BY host, artist
    ORDER BY host, c DESC
  `).all() as { host: string; artist: string; c: number }[];

  const hostTopArtists = new Map<string, { artist: string; count: number }[]>();
  for (const row of hostArtistCounts) {
    if (!hostTopArtists.has(row.host)) {
      hostTopArtists.set(row.host, []);
    }
    const arr = hostTopArtists.get(row.host)!;
    if (arr.length < 10) {
      arr.push({ artist: row.artist, count: row.c });
    }
  }

  const updateHostArtists = db.prepare(`
    UPDATE wwoz_host_profiles SET top_artists_json = ? WHERE host = ?
  `);
  const updateHostTx = db.transaction(() => {
    for (const [host, artists] of hostTopArtists) {
      updateHostArtists.run(JSON.stringify(artists), host);
    }
  });
  updateHostTx();
  console.log(`[intelligence] wwoz_host_profiles: ${hostProfiles.size} rows`);

  // Co-occurrence (filtered to >= MIN_COOCCURRENCE_COUNT)
  const insertCooccurrence = db.prepare(`
    INSERT INTO wwoz_artist_cooccurrence (artist_a, artist_b, cooccurrence_count)
    VALUES (?, ?, ?)
  `);
  let cooccurrenceCount = 0;
  const cooccurrenceTx = db.transaction(() => {
    for (const [key, count] of cooccurrence) {
      if (count < MIN_COOCCURRENCE_COUNT) continue;
      const [a, b] = key.split('|');
      insertCooccurrence.run(a, b, count);
      cooccurrenceCount++;
    }
  });
  cooccurrenceTx();
  console.log(`[intelligence] wwoz_artist_cooccurrence: ${cooccurrenceCount} rows (count >= ${MIN_COOCCURRENCE_COUNT})`);

  // First seen - resolve wiki slugs
  const insertFirstSeen = db.prepare(`
    INSERT INTO wwoz_artist_first_seen (artist_normalized, artist_display, first_date, total_plays, artist_slug)
    VALUES (?, ?, ?, ?, ?)
  `);
  const firstSeenTx = db.transaction(() => {
    for (const [normName, data] of firstSeen) {
      // Try to match to a wiki slug
      const slug1 = data.display.toLowerCase().replace(/ /g, '-').replace(/'/g, '');
      const slug2 = slug1.replace(/\./g, '');
      const matchedSlug = slugSet.has(slug1) ? slug1 : slugSet.has(slug2) ? slug2 : null;
      insertFirstSeen.run(normName, data.display, data.firstDate, data.totalPlays, matchedSlug);
    }
  });
  firstSeenTx();
  console.log(`[intelligence] wwoz_artist_first_seen: ${firstSeen.size} rows`);

  const totalTime = Date.now() - startTime;
  console.log(`[intelligence] Done in ${totalTime}ms`);

  db.close();
}

computeIntelligence().catch(err => {
  console.error('[intelligence] Fatal error:', err);
  process.exit(1);
});
