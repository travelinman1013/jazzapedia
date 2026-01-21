/**
 * Shared utilities for sync scripts
 *
 * This module contains common functions used across multiple sync scripts:
 * - sync-to-sqlite.ts
 * - sync-to-d1.ts
 * - sync-incremental.ts
 * - sync-incremental-sqlite.ts
 */

import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import matter from 'gray-matter';
import { marked } from 'marked';

// ============================================================
// TYPES
// ============================================================

export interface ArtistData {
  slug: string;
  title: string;
  artist_type: string | null;
  birth_date: string | null;
  death_date: string | null;
  origin: string | null;
  birth_place: string | null;
  bio_html: string;
  bio_markdown: string;
  bio_text: string;
  image_filename: string | null;
  genres: string[];
  instruments: string[];
  roles: string[];
  spotify_data: object | null;
  audio_profile: object | null;
  external_urls: object | null;
  musical_connections: object | null;
  research_sources: string[];
  content_hash: string;
}

export interface SyncStats {
  total: number;
  processed: number;
  errors: number;
  skipped: number;
}

export interface SyncConfig {
  artistsDir: string;
  portraitsDir: string;
  batchSize: number;
}

// ============================================================
// HELPER FUNCTIONS
// ============================================================

/**
 * Generate a URL-safe slug from a filename
 */
export function generateSlug(filename: string): string {
  return filename
    .replace(/\.md$/, '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/-+/g, '-')
    .replace(/^-+|-+$/g, '');
}

/**
 * Strip HTML tags and decode entities
 */
export function stripHtml(html: string): string {
  return html
    .replace(/<[^>]*>/g, ' ')
    .replace(/&nbsp;/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/\s+/g, ' ')
    .trim();
}

/**
 * Find portrait file for an artist by slug or title
 */
export function findPortraitFile(
  slug: string,
  title: string,
  portraitsDir: string
): string | null {
  const possibleNames = [
    `${title}.jpg`,
    `${title}.jpeg`,
    `${title}.png`,
    `${title}.webp`,
    `${slug}.jpg`,
    `${slug}.jpeg`,
    `${slug}.png`,
    `${slug}.webp`,
  ];

  for (const name of possibleNames) {
    const filePath = path.join(portraitsDir, name);
    if (fs.existsSync(filePath)) {
      return name;
    }
  }

  try {
    const files = fs.readdirSync(portraitsDir);
    const titleLower = title.toLowerCase();
    const slugLower = slug.toLowerCase();

    for (const file of files) {
      const fileBaseLower = file.toLowerCase().replace(/\.(jpg|jpeg|png|webp)$/i, '');
      if (fileBaseLower === titleLower || fileBaseLower === slugLower) {
        return file;
      }
    }

    const titleWithHyphens = titleLower.replace(/_/g, '-');

    for (const file of files) {
      const fileBaseLower = file.toLowerCase().replace(/\.(jpg|jpeg|png|webp)$/i, '');
      const fileWithHyphens = fileBaseLower.replace(/_/g, '-');

      if (fileWithHyphens === titleWithHyphens || fileWithHyphens === slugLower) {
        return file;
      }
    }
  } catch {
    // Directory might not exist
  }

  return null;
}

/**
 * Compute MD5 hash of file content
 */
export function computeContentHash(content: string): string {
  return crypto.createHash('md5').update(content).digest('hex');
}

/**
 * Parse a markdown artist file into ArtistData
 */
export function parseArtistFile(
  filePath: string,
  portraitsDir: string
): ArtistData | null {
  try {
    const content = fs.readFileSync(filePath, 'utf-8');
    const contentHash = computeContentHash(content);
    const { data: frontmatter, content: markdown } = matter(content);

    const filename = path.basename(filePath);
    const slug = generateSlug(filename);
    const title = frontmatter.title || filename.replace(/\.md$/, '').replace(/_/g, ' ');

    let bioHtml = marked(markdown, { async: false }) as string;
    bioHtml = bioHtml.replace(/<h2>Quick Info<\/h2>\s*<ul>[\s\S]*?<\/ul>/gi, '');

    const bioText = stripHtml(bioHtml);
    const imageFilename = findPortraitFile(slug, title, portraitsDir);

    const artistType = frontmatter.artist_type || null;
    const isBand = artistType === 'band' || artistType === 'group';
    let origin: string | null = null;
    let birthPlace: string | null = null;

    if (isBand) {
      origin = frontmatter.origin || null;
    } else {
      birthPlace = frontmatter.birth_place || null;
    }

    let researchSources: string[] = [];
    if (Array.isArray(frontmatter.research_sources)) {
      researchSources = frontmatter.research_sources.filter(
        (s: unknown) => typeof s === 'string' && (s.startsWith('http://') || s.startsWith('https://'))
      );
    }

    return {
      slug,
      title,
      artist_type: artistType,
      birth_date: frontmatter.birth_date || null,
      death_date: frontmatter.death_date || null,
      origin,
      birth_place: birthPlace,
      bio_html: bioHtml,
      bio_markdown: markdown,
      bio_text: bioText.substring(0, 10000),
      image_filename: imageFilename,
      genres: Array.isArray(frontmatter.genres) ? frontmatter.genres : [],
      instruments: Array.isArray(frontmatter.instruments) ? frontmatter.instruments : [],
      roles: Array.isArray(frontmatter.roles) ? frontmatter.roles : [],
      spotify_data: frontmatter.spotify_data || null,
      audio_profile: frontmatter.audio_profile || null,
      external_urls: frontmatter.external_urls || null,
      musical_connections: frontmatter.musical_connections || null,
      research_sources: researchSources,
      content_hash: contentHash,
    };
  } catch (error) {
    console.error(`Error parsing ${filePath}:`, error);
    return null;
  }
}

/**
 * Read and parse all artist markdown files from a directory
 */
export function parseAllArtists(
  artistsDir: string,
  portraitsDir: string,
  onProgress?: (processed: number, total: number) => void
): { artists: ArtistData[]; stats: SyncStats; errorFiles: string[] } {
  const allFiles = fs.readdirSync(artistsDir);
  const files = allFiles.filter(f => f.endsWith('.md') && !f.startsWith('.'));

  const artists: ArtistData[] = [];
  const stats: SyncStats = { total: files.length, processed: 0, errors: 0, skipped: 0 };
  const errorFiles: string[] = [];

  for (const file of files) {
    const filePath = path.join(artistsDir, file);

    if (filePath.includes('.backup')) {
      stats.skipped++;
      continue;
    }

    const artist = parseArtistFile(filePath, portraitsDir);

    if (artist) {
      artists.push(artist);
      stats.processed++;
    } else {
      stats.errors++;
      errorFiles.push(file);
    }

    if (onProgress && stats.processed % 500 === 0 && stats.processed > 0) {
      onProgress(stats.processed, files.length);
    }
  }

  return { artists, stats, errorFiles };
}

/**
 * Escape a string for use in SQL
 */
export function escapeSql(str: string | null | undefined): string {
  if (str === null || str === undefined) return 'NULL';
  return `'${str.replace(/'/g, "''")}'`;
}

/**
 * Escape a value for JSON stringification in SQL
 */
export function escapeJson(obj: unknown): string {
  if (obj === null || obj === undefined) return "'{}'";
  const json = JSON.stringify(obj);
  return `'${json.replace(/'/g, "''")}'`;
}

/**
 * Escape a JSON array for SQL
 */
export function escapeJsonArray(arr: unknown[]): string {
  if (!arr || arr.length === 0) return "'[]'";
  const json = JSON.stringify(arr);
  return `'${json.replace(/'/g, "''")}'`;
}
