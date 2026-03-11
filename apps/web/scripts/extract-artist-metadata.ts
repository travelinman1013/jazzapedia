#!/usr/bin/env tsx
/**
 * LLM-Powered Artist Metadata Extraction
 *
 * Reads artist biographies from SQLite, sends them to a local LLM (LM Studio)
 * for structured metadata extraction, compares against current DB values,
 * and optionally applies fixes.
 *
 * Usage:
 *   npx tsx scripts/extract-artist-metadata.ts --slug martha-high       # Single artist
 *   npx tsx scripts/extract-artist-metadata.ts --limit 20               # First N artists
 *   npx tsx scripts/extract-artist-metadata.ts --known-bad              # From audit report
 *   npx tsx scripts/extract-artist-metadata.ts --missing-metadata       # Artists with gaps
 *   npx tsx scripts/extract-artist-metadata.ts --apply                  # Extract + apply
 *   npx tsx scripts/extract-artist-metadata.ts --apply-from-file <path> # Apply saved results
 *   npx tsx scripts/extract-artist-metadata.ts --resume                 # Resume from checkpoint
 *   npx tsx scripts/extract-artist-metadata.ts --concurrency 8          # Tune parallelism
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';
import matter from 'gray-matter';
import { regexExtractMetadata, type RegexExtractionResult } from './lib/regex-extract.js';

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface ExtractedMetadata {
  title_corrected: string | null;
  birth_place_full: string | null;
  origin_full: string | null;
  birth_date_iso: string | null;
  death_date_iso: string | null;
  career_status: 'active' | 'deceased' | 'retired' | 'inactive' | null;
  years_active_start: number | null;
  years_active_end: number | null;
  genres_normalized: string[] | null;
  instruments: string[] | null;
  artist_type: 'person' | 'band' | null;
  confidence: Record<string, number>;
}

interface ExtractionDiff {
  field: string;
  current_value: unknown;
  extracted_value: unknown;
  confidence: number;
}

interface ExtractionResult {
  slug: string;
  title: string;
  current: Record<string, unknown>;
  extracted: ExtractedMetadata;
  diffs: ExtractionDiff[];
}

interface ExtractionReport {
  generated_at: string;
  model: string;
  total_processed: number;
  total_with_diffs: number;
  total_errors: number;
  results: ExtractionResult[];
  errors: Array<{ slug: string; error: string }>;
}

interface ArtistRow {
  slug: string;
  title: string;
  artist_type: string | null;
  birth_date: string | null;
  death_date: string | null;
  birth_place: string | null;
  origin: string | null;
  bio_markdown: string | null;
  genres: string | null;
  instruments: string | null;
  is_active: number;
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

const slugFilter = getFlagValue('slug');
const limit = getFlagValue('limit') ? parseInt(getFlagValue('limit')!, 10) : undefined;
const offset = getFlagValue('offset') ? parseInt(getFlagValue('offset')!, 10) : 0;
const knownBad = hasFlag('known-bad');
const missingMetadata = hasFlag('missing-metadata');
const doApply = hasFlag('apply');
const dryRun = hasFlag('dry-run');
const applyFromFile = getFlagValue('apply-from-file');
const resumeFromCheckpoint = hasFlag('resume');
const initialConcurrency = getFlagValue('concurrency') ? parseInt(getFlagValue('concurrency')!, 10) : 8;
let concurrency = initialConcurrency;
const minConfidence = getFlagValue('min-confidence') ? parseFloat(getFlagValue('min-confidence')!) : 0.9;

const LM_STUDIO_URL = process.env.LM_STUDIO_URL || 'http://localhost:1234/v1/chat/completions';
const LM_MODEL = process.env.LM_MODEL || 'local-model';

// ---------------------------------------------------------------------------
// LLM Prompt
// ---------------------------------------------------------------------------

type ExtractionTier = 'skip' | 'location-only' | 'full';

const SYSTEM_PROMPT_FULL = `You are a music metadata extraction assistant. Given an artist biography, extract structured metadata. Return ONLY valid JSON.

Rules:
- title_corrected: Proper Title Case. Keep "The" at start. Preserve "DJ", "MC" prefixes. Preserve intentional all-caps band names.
- birth_place_full: Full location as "City, State/Region, Country". If the bio says "born in Chicago" expand to "Chicago, Illinois, United States". If the bio says "born in Victoria, Virginia" expand to "Victoria, Virginia, United States". Only set for individual people, not bands.
- origin_full: Musical home base / city associated with, as "City, State/Region, Country". Only set for bands/groups, or if distinct from birth_place for individuals.
- birth_date_iso: Convert to ISO YYYY-MM-DD. If only year known, use YYYY. If "circa 1920", use "1920".
- death_date_iso: Same as birth_date_iso. Set to null if still alive.
- career_status: "deceased" if death is mentioned or implied, "active" if currently performing, "retired" if explicitly stated, "inactive" if unclear but not dead.
- years_active_start: First year of professional career mentioned (integer).
- years_active_end: Last year active, or null if still active.
- genres_normalized: Use standard lowercase genre names from the bio. Do not invent genres.
- instruments: Array of actual musical instruments the artist plays, mentioned in the bio. Use standard names: "piano", "guitar", "drums", "bass", "trumpet", "saxophone", "vocals", etc. Do NOT include Spotify metadata terms like "original", "eponymous", "lead vocals", "background vocals", "spoken vocals", "other vocals". Only include real instruments. Set to null if no instruments are mentioned.
- artist_type: "person" for individuals, "band" for bands/groups/ensembles/orchestras.
- Do NOT invent data. If information is not in the bio, set to null.
- confidence: 0.0 to 1.0 per field. 1.0 = explicitly stated in bio. 0.7 = strongly inferred. 0.5 = approximate/uncertain.`;

const SYSTEM_PROMPT_LOCATION = `You are a location expansion assistant for music artist metadata. Given an artist name and biography excerpt, expand bare location names to full "City, State/Region, Country" format. Return ONLY valid JSON.

Rules:
- birth_place_full: Where the person was literally born. Expand to "City, State/Region, Country". E.g., "Victoria" in a Virginia context becomes "Victoria, Virginia, United States".
- origin_full: The city the artist is musically associated with, ONLY if different from birth_place. Set to null if same as birth_place.
- Do NOT invent locations. If the bio doesn't mention a place, set to null.
- confidence: 0.0 to 1.0 per field.`;

// Keep legacy name as alias for backward compatibility in processArtist
const SYSTEM_PROMPT = SYSTEM_PROMPT_FULL;

function buildUserPrompt(artist: ArtistRow, tier: ExtractionTier = 'full'): string {
  const bio = artist.bio_markdown?.substring(0, 1500) || 'No biography available.';

  if (tier === 'location-only') {
    return `Artist: ${artist.title}

Biography:
${bio}

Extract locations as JSON:
{
  "birth_place_full": "City, State/Region, Country or null",
  "origin_full": "City, State/Region, Country or null",
  "confidence": { "birth_place_full": 0.0, "origin_full": 0.0 }
}`;
  }

  return `Artist: ${artist.title}

Biography:
${bio}

Extract metadata as JSON:
{
  "title_corrected": "string or null",
  "birth_place_full": "City, State/Region, Country or null",
  "origin_full": "City, State/Region, Country or null",
  "birth_date_iso": "YYYY-MM-DD or YYYY or null",
  "death_date_iso": "YYYY-MM-DD or YYYY or null",
  "career_status": "active|deceased|retired|inactive",
  "years_active_start": "number or null",
  "years_active_end": "number or null",
  "genres_normalized": ["genre1", "genre2"],
  "instruments": ["instrument1", "instrument2"],
  "artist_type": "person|band",
  "confidence": { "field_name": 0.0 }
}`;
}

// ---------------------------------------------------------------------------
// LLM API
// ---------------------------------------------------------------------------

async function callLmStudio(systemPrompt: string, userPrompt: string): Promise<ExtractedMetadata> {
  const maxRetries = 2;

  for (let attempt = 0; attempt <= maxRetries; attempt++) {
    try {
      const response = await fetch(LM_STUDIO_URL, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          model: LM_MODEL,
          messages: [
            { role: 'system', content: systemPrompt },
            { role: 'user', content: userPrompt },
          ],
          temperature: 0.1,
          max_tokens: 2048,
        }),
      });

      if (!response.ok) {
        throw new Error(`LM Studio returned ${response.status}: ${await response.text()}`);
      }

      const data = await response.json() as {
        choices: Array<{ message: { content: string } }>;
        model?: string;
      };

      let content = data.choices?.[0]?.message?.content;
      if (!content) throw new Error('Empty response from LM Studio');

      // Strip thinking blocks (Qwen3.5 <think>...</think> or plain-text thinking)
      content = content.trim();
      content = content.replace(/<think>[\s\S]*?<\/think>/g, '').trim();

      // Strip markdown code blocks if present
      if (content.startsWith('```')) {
        content = content.replace(/^```(?:json)?\n?/, '').replace(/\n?```$/, '').trim();
      }

      // Extract JSON object — find the last complete JSON block (skip thinking preamble)
      const jsonMatch = content.match(/\{[^{}]*(?:\{[^{}]*\}[^{}]*)*\}/g);
      if (!jsonMatch) throw new Error('No JSON object found in response');
      // Use the last match — thinking models put the actual answer last
      const jsonStr = jsonMatch[jsonMatch.length - 1];

      const parsed = JSON.parse(jsonStr) as ExtractedMetadata;

      // Basic validation
      if (typeof parsed !== 'object' || parsed === null) {
        throw new Error('Response is not an object');
      }

      // Ensure confidence object exists
      if (!parsed.confidence || typeof parsed.confidence !== 'object') {
        parsed.confidence = {};
      }

      return parsed;
    } catch (err) {
      if (attempt === maxRetries) throw err;
      console.warn(`  [retry ${attempt + 1}] ${(err as Error).message}`);
    }
  }

  throw new Error('Unreachable');
}

// ---------------------------------------------------------------------------
// Comparison
// ---------------------------------------------------------------------------

function compareMetadata(artist: ArtistRow, extracted: ExtractedMetadata): ExtractionDiff[] {
  const diffs: ExtractionDiff[] = [];

  const addDiff = (field: string, current: unknown, extractedVal: unknown, confidence: number) => {
    if (extractedVal === null || extractedVal === undefined) return;
    if (String(current || '') === String(extractedVal)) return;
    // Skip if current is populated and extracted has low confidence
    if (current && confidence < 0.7) return;
    diffs.push({ field, current_value: current, extracted_value: extractedVal, confidence });
  };

  const conf = extracted.confidence || {};

  addDiff('title', artist.title, extracted.title_corrected, conf.title_corrected ?? 0.5);
  addDiff('birth_place', artist.birth_place, extracted.birth_place_full, conf.birth_place_full ?? 0.5);
  addDiff('origin', artist.origin, extracted.origin_full, conf.origin_full ?? 0.5);
  addDiff('birth_date', artist.birth_date, extracted.birth_date_iso, conf.birth_date_iso ?? 0.5);
  addDiff('death_date', artist.death_date, extracted.death_date_iso, conf.death_date_iso ?? 0.5);

  // Career status: map to is_active
  if (extracted.career_status === 'deceased' && artist.is_active === 1) {
    addDiff('is_active', 1, 0, conf.career_status ?? 0.5);
  }

  // artist_type
  if (extracted.artist_type && extracted.artist_type !== artist.artist_type) {
    addDiff('artist_type', artist.artist_type, extracted.artist_type, conf.artist_type ?? 0.5);
  }

  // Instruments: compare extracted vs current, filtering out Spotify metadata junk
  const SPOTIFY_JUNK = new Set(['original', 'eponymous', 'lead vocals', 'background vocals', 'spoken vocals', 'other vocals']);
  if (extracted.instruments && extracted.instruments.length > 0) {
    const currentInstruments: string[] = artist.instruments ? JSON.parse(artist.instruments) : [];
    const currentReal = currentInstruments.filter(i => !SPOTIFY_JUNK.has(i.toLowerCase()));
    const extractedNorm = extracted.instruments.map(i => i.toLowerCase());
    const currentNorm = currentReal.map(i => i.toLowerCase());

    // Flag if extracted instruments differ meaningfully from current real instruments
    const missing = extractedNorm.filter(i => !currentNorm.includes(i));
    const extra = currentNorm.filter(i => !extractedNorm.includes(i));

    if (missing.length > 0 || extra.length > 0) {
      diffs.push({
        field: 'instruments',
        current_value: currentReal.length > 0 ? currentReal : null,
        extracted_value: extracted.instruments,
        confidence: conf.instruments ?? 0.5,
      });
    }
  }

  // Genres: flag if bio genres are completely different from DB genres
  if (extracted.genres_normalized && extracted.genres_normalized.length > 0) {
    const currentGenres: string[] = artist.genres ? JSON.parse(artist.genres) : [];
    if (currentGenres.length > 0) {
      const currentNorm = new Set(currentGenres.map(g => g.toLowerCase().trim()));
      const extractedNorm = extracted.genres_normalized.map(g => g.toLowerCase().trim());
      const overlap = extractedNorm.filter(g => currentNorm.has(g));

      // Flag if zero overlap — bio describes completely different genres
      if (overlap.length === 0) {
        diffs.push({
          field: 'genres',
          current_value: currentGenres,
          extracted_value: extracted.genres_normalized,
          confidence: conf.genres_normalized ?? 0.5,
        });
      }
    }
  }

  return diffs;
}

// ---------------------------------------------------------------------------
// Batch processing
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Tier determination & merging
// ---------------------------------------------------------------------------

/** Key metadata fields that we track for gap analysis */
const KEY_FIELDS = ['birth_place', 'origin', 'artist_type', 'birth_date', 'instruments'] as const;

function determineTier(artist: ArtistRow, regexResult: RegexExtractionResult): ExtractionTier {
  // Check which fields are NULL in DB AND not filled by regex
  const stillMissing: string[] = [];

  if (!artist.birth_place && !regexResult.birth_place_full) stillMissing.push('birth_place');
  if (!artist.origin && !regexResult.origin_full) stillMissing.push('origin');
  if (!artist.artist_type && !regexResult.artist_type) stillMissing.push('artist_type');
  if (!artist.birth_date && !regexResult.birth_date_iso) stillMissing.push('birth_date');
  if ((!artist.instruments || artist.instruments === '[]') && !regexResult.instruments) stillMissing.push('instruments');

  // All key fields resolved → skip LLM
  if (stillMissing.length === 0) return 'skip';

  // Only location needs expansion (bare city from Quick Info)
  const locationOnly = stillMissing.every(f => f === 'birth_place' || f === 'origin');
  if (locationOnly) {
    // Check if we have a bare location (no comma) that needs expansion
    const bp = regexResult.birth_place_full?.value;
    if (bp && !bp.includes(',')) return 'location-only';
    // If we have nothing at all for location, still need full
    if (stillMissing.length <= 2) return 'location-only';
  }

  return 'full';
}

function regexToExtracted(regexResult: RegexExtractionResult): ExtractedMetadata {
  const confidence: Record<string, number> = {};

  const extracted: ExtractedMetadata = {
    title_corrected: null,
    birth_place_full: regexResult.birth_place_full?.value ?? null,
    origin_full: regexResult.origin_full?.value ?? null,
    birth_date_iso: regexResult.birth_date_iso?.value ?? null,
    death_date_iso: regexResult.death_date_iso?.value ?? null,
    career_status: regexResult.career_status?.value ?? null,
    years_active_start: null,
    years_active_end: null,
    genres_normalized: regexResult.genres_normalized?.value ?? null,
    instruments: regexResult.instruments?.value ?? null,
    artist_type: regexResult.artist_type?.value ?? null,
    confidence,
  };

  // Build confidence map
  if (regexResult.birth_place_full) confidence.birth_place_full = regexResult.birth_place_full.confidence;
  if (regexResult.origin_full) confidence.origin_full = regexResult.origin_full.confidence;
  if (regexResult.birth_date_iso) confidence.birth_date_iso = regexResult.birth_date_iso.confidence;
  if (regexResult.death_date_iso) confidence.death_date_iso = regexResult.death_date_iso.confidence;
  if (regexResult.career_status) confidence.career_status = regexResult.career_status.confidence;
  if (regexResult.artist_type) confidence.artist_type = regexResult.artist_type.confidence;
  if (regexResult.instruments) confidence.instruments = regexResult.instruments.confidence;
  if (regexResult.genres_normalized) confidence.genres_normalized = regexResult.genres_normalized.confidence;

  return extracted;
}

function mergeResults(regexResult: RegexExtractionResult, llmResult: ExtractedMetadata): ExtractedMetadata {
  const merged = { ...llmResult };
  const conf = { ...(llmResult.confidence || {}) };

  // Factual fields: regex wins if available (higher confidence, explicit text match)
  if (regexResult.birth_date_iso) {
    merged.birth_date_iso = regexResult.birth_date_iso.value;
    conf.birth_date_iso = regexResult.birth_date_iso.confidence;
  }
  if (regexResult.death_date_iso) {
    merged.death_date_iso = regexResult.death_date_iso.value;
    conf.death_date_iso = regexResult.death_date_iso.confidence;
  }
  if (regexResult.career_status) {
    merged.career_status = regexResult.career_status.value;
    conf.career_status = regexResult.career_status.confidence;
  }
  if (regexResult.artist_type && regexResult.artist_type.confidence >= 0.9) {
    merged.artist_type = regexResult.artist_type.value;
    conf.artist_type = regexResult.artist_type.confidence;
  }

  // Location fields: prefer whichever is more specific (more commas = more components)
  const specificity = (v: string | null) => v ? v.split(',').length : 0;

  if (regexResult.birth_place_full) {
    const regexSpec = specificity(regexResult.birth_place_full.value);
    const llmSpec = specificity(llmResult.birth_place_full);
    if (regexSpec >= llmSpec) {
      merged.birth_place_full = regexResult.birth_place_full.value;
      conf.birth_place_full = regexResult.birth_place_full.confidence;
    }
  }
  if (regexResult.origin_full) {
    const regexSpec = specificity(regexResult.origin_full.value);
    const llmSpec = specificity(llmResult.origin_full);
    if (regexSpec >= llmSpec) {
      merged.origin_full = regexResult.origin_full.value;
      conf.origin_full = regexResult.origin_full.confidence;
    }
  }

  // Instruments: regex from Quick Info wins if present
  if (regexResult.instruments) {
    merged.instruments = regexResult.instruments.value;
    conf.instruments = regexResult.instruments.confidence;
  }

  merged.confidence = conf;
  return merged;
}

// ---------------------------------------------------------------------------
// Adaptive concurrency
// ---------------------------------------------------------------------------

const responseTimes: number[] = [];

function adjustConcurrency(): void {
  if (responseTimes.length < 5) return;
  const recent = responseTimes.slice(-5);
  const avg = recent.reduce((a, b) => a + b, 0) / recent.length;
  const oldConcurrency = concurrency;

  if (avg > 20000 && concurrency > 2) {
    concurrency = Math.max(2, concurrency - 2);
  } else if (avg < 5000 && concurrency < 12) {
    concurrency = Math.min(12, concurrency + 2);
  } else {
    return;
  }
  console.log(`[extract] Concurrency adjusted: ${oldConcurrency} -> ${concurrency} (avg response: ${(avg / 1000).toFixed(1)}s)`);
}

// ---------------------------------------------------------------------------
// Process single artist with regex pre-extraction
// ---------------------------------------------------------------------------

async function processArtist(artist: ArtistRow): Promise<ExtractionResult & { tier: ExtractionTier }> {
  const bio = artist.bio_markdown || '';

  // Step 1: Try regex extraction
  const regexResult = regexExtractMetadata(bio, artist.title);

  // Step 2: Determine what still needs LLM
  const tier = determineTier(artist, regexResult);

  let extracted: ExtractedMetadata;
  if (tier === 'skip') {
    extracted = regexToExtracted(regexResult);
  } else {
    const systemPrompt = tier === 'location-only' ? SYSTEM_PROMPT_LOCATION : SYSTEM_PROMPT_FULL;
    const userPrompt = buildUserPrompt(artist, tier);

    const start = Date.now();
    const llmResult = await callLmStudio(systemPrompt, userPrompt);
    responseTimes.push(Date.now() - start);
    adjustConcurrency();

    extracted = mergeResults(regexResult, llmResult);
  }

  const diffs = compareMetadata(artist, extracted);

  return {
    slug: artist.slug,
    title: artist.title,
    tier,
    current: {
      title: artist.title,
      birth_place: artist.birth_place,
      origin: artist.origin,
      birth_date: artist.birth_date,
      death_date: artist.death_date,
      is_active: artist.is_active,
      artist_type: artist.artist_type,
      genres: artist.genres,
      instruments: artist.instruments,
    },
    extracted,
    diffs,
  };
}

async function processBatch(
  artists: ArtistRow[],
  skipSlugs?: Set<string>,
): Promise<{ results: ExtractionResult[]; errors: Array<{ slug: string; error: string }>; tierCounts: Record<ExtractionTier, number> }> {
  const results: ExtractionResult[] = [];
  const errors: Array<{ slug: string; error: string }> = [];
  const tierCounts: Record<ExtractionTier, number> = { skip: 0, 'location-only': 0, full: 0 };
  const checkpointPath = path.join(process.cwd(), 'data/extraction-results-checkpoint.json');

  // Filter out already-processed slugs if resuming
  const toProcess = skipSlugs
    ? artists.filter(a => !skipSlugs.has(a.slug))
    : artists;

  if (skipSlugs && toProcess.length < artists.length) {
    console.log(`[extract] Resuming: skipping ${artists.length - toProcess.length} already-processed artists`);
  }

  // Process in chunks of `concurrency`
  for (let i = 0; i < toProcess.length; ) {
    const chunkSize = concurrency;
    const chunk = toProcess.slice(i, i + chunkSize);
    const promises = chunk.map(async (artist) => {
      try {
        const result = await processArtist(artist);
        return { type: 'success' as const, result };
      } catch (err) {
        return { type: 'error' as const, slug: artist.slug, error: (err as Error).message };
      }
    });

    const settled = await Promise.all(promises);
    for (const item of settled) {
      if (item.type === 'success') {
        results.push(item.result);
        tierCounts[item.result.tier]++;
        const diffCount = item.result.diffs.length;
        const tierLabel = `[${item.result.tier}]`;
        if (diffCount > 0) {
          console.log(`  ${item.result.slug}: ${tierLabel} ${diffCount} diff(s)`);
          for (const d of item.result.diffs) {
            console.log(`    ${d.field}: "${d.current_value}" -> "${d.extracted_value}" (${d.confidence})`);
          }
        } else {
          console.log(`  ${item.result.slug}: ${tierLabel} no diffs`);
        }
      } else {
        errors.push({ slug: item.slug, error: item.error });
        console.error(`  ${item.slug}: ERROR - ${item.error}`);
      }
    }

    // Advance by actual chunk size (not adjusted concurrency)
    i += chunkSize;

    // Progress
    const done = Math.min(i, toProcess.length);
    console.log(`[extract] Progress: ${done}/${toProcess.length} (skip: ${tierCounts.skip}, location-only: ${tierCounts['location-only']}, full: ${tierCounts.full})`);

    // Checkpoint every 100 artists
    if (results.length > 0 && results.length % 100 < chunkSize) {
      const checkpoint: ExtractionReport = {
        generated_at: new Date().toISOString(),
        model: LM_MODEL,
        total_processed: results.length,
        total_with_diffs: results.filter(r => r.diffs.length > 0).length,
        total_errors: errors.length,
        results: results.filter(r => r.diffs.length > 0),
        errors,
      };
      fs.writeFileSync(checkpointPath, JSON.stringify(checkpoint, null, 2));
    }
  }

  return { results, errors, tierCounts };
}

// ---------------------------------------------------------------------------
// Apply fixes
// ---------------------------------------------------------------------------

function applyFixes(db: Database.Database, results: ExtractionResult[]): void {
  const FIELD_TO_COLUMN: Record<string, string> = {
    title: 'title',
    birth_place: 'birth_place',
    origin: 'origin',
    birth_date: 'birth_date',
    death_date: 'death_date',
    is_active: 'is_active',
    artist_type: 'artist_type',
  };

  let totalFixed = 0;
  let totalArtists = 0;

  const runAll = db.transaction(() => {
    for (const result of results) {
      const eligibleDiffs = result.diffs.filter(d => d.confidence >= minConfidence && FIELD_TO_COLUMN[d.field]);
      if (eligibleDiffs.length === 0) continue;

      if (dryRun) {
        console.log(`  [dry-run] ${result.slug}:`);
        for (const d of eligibleDiffs) {
          console.log(`    ${d.field}: "${d.current_value}" -> "${d.extracted_value}"`);
        }
        totalFixed += eligibleDiffs.length;
        totalArtists++;
        continue;
      }

      const setClauses: string[] = [];
      const values: (string | number)[] = [];

      for (const d of eligibleDiffs) {
        const col = FIELD_TO_COLUMN[d.field];
        setClauses.push(`${col} = ?`);
        values.push(d.field === 'is_active' ? Number(d.extracted_value) : String(d.extracted_value));
      }

      values.push(result.slug);
      db.prepare(`UPDATE artists SET ${setClauses.join(', ')} WHERE slug = ?`).run(...values);
      totalFixed += setClauses.length;
      totalArtists++;
    }
  });

  runAll();
  console.log(`\n${dryRun ? '[dry-run] Would apply' : 'Applied'} ${totalFixed} fixes to ${totalArtists} artists (min confidence: ${minConfidence})`);
}

function applyMarkdownFixes(results: ExtractionResult[]): void {
  const artistsDir = process.env.ARTISTS_DIR || path.join(process.cwd(), '../../content/artists');
  if (!fs.existsSync(artistsDir)) {
    console.warn(`[apply] Artists directory not found: ${artistsDir} — skipping markdown updates`);
    return;
  }

  const FIELD_TO_FRONTMATTER: Record<string, string> = {
    title: 'title',
    birth_place: 'birth_place',
    origin: 'origin',
    birth_date: 'birth_date',
    death_date: 'death_date',
    artist_type: 'artist_type',
  };

  let updated = 0;

  for (const result of results) {
    const eligibleDiffs = result.diffs.filter(d => d.confidence >= minConfidence && FIELD_TO_FRONTMATTER[d.field]);
    if (eligibleDiffs.length === 0) continue;

    // Find markdown file
    const candidates = [
      `${result.slug}.md`,
      `${result.slug.replace(/-/g, '_')}.md`,
    ];

    let filePath: string | null = null;
    for (const candidate of candidates) {
      const p = path.join(artistsDir, candidate);
      if (fs.existsSync(p)) { filePath = p; break; }
    }
    if (!filePath) continue;

    if (dryRun) {
      console.log(`  [dry-run] Would update ${path.basename(filePath)}`);
      updated++;
      continue;
    }

    const raw = fs.readFileSync(filePath, 'utf-8');
    const parsed = matter(raw);
    let changed = false;

    for (const d of eligibleDiffs) {
      const fmKey = FIELD_TO_FRONTMATTER[d.field];
      if (!fmKey) continue;
      parsed.data[fmKey] = d.extracted_value;
      changed = true;
    }

    if (changed) {
      fs.writeFileSync(filePath, matter.stringify(parsed.content, parsed.data));
      updated++;
    }
  }

  console.log(`${dryRun ? '[dry-run] Would update' : 'Updated'} ${updated} markdown files`);
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  if (!fs.existsSync(dbPath)) {
    console.error(`[extract] Database not found: ${dbPath}`);
    process.exit(1);
  }

  // ---------------------------------------------------------------------------
  // --apply-from-file: apply saved results without running LLM
  // ---------------------------------------------------------------------------
  if (applyFromFile) {
    const filePath = path.resolve(applyFromFile);
    if (!fs.existsSync(filePath)) {
      console.error(`[extract] Results file not found: ${filePath}`);
      process.exit(1);
    }
    console.log(`[extract] Applying results from: ${filePath}`);

    const report = JSON.parse(fs.readFileSync(filePath, 'utf-8')) as ExtractionReport;
    console.log(`[extract] Loaded ${report.total_processed} processed, ${report.total_with_diffs} with diffs`);

    // Filter by min confidence
    const eligible = report.results.filter(r =>
      r.diffs.some(d => d.confidence >= minConfidence),
    );
    console.log(`[extract] ${eligible.length} artists have diffs at confidence >= ${minConfidence}`);

    const db = new Database(dbPath, { readonly: dryRun });
    console.log(`[extract] Connected to ${dbPath}`);

    applyFixes(db, eligible);
    applyMarkdownFixes(eligible);
    db.close();
    return;
  }

  // ---------------------------------------------------------------------------
  // Normal flow: LLM extraction
  // ---------------------------------------------------------------------------

  // Test LM Studio connectivity (skip-only runs don't need it, but we check anyway)
  try {
    const healthCheck = await fetch(LM_STUDIO_URL.replace('/chat/completions', '/models'));
    if (!healthCheck.ok) throw new Error(`Status ${healthCheck.status}`);
    const models = await healthCheck.json() as { data?: Array<{ id: string }> };
    const modelName = models.data?.[0]?.id || 'unknown';
    console.log(`[extract] LM Studio connected. Model: ${modelName}`);
  } catch (err) {
    console.warn(`[extract] LM Studio not available at ${LM_STUDIO_URL} — regex-only mode`);
    console.warn(`[extract] Error: ${(err as Error).message}`);
    // Don't exit — regex-only extraction still works
  }

  // knownBad mode needs write access for temp table even without --apply
  const needsWrite = (doApply && !dryRun) || knownBad;
  const db = new Database(dbPath, { readonly: !needsWrite });
  console.log(`[extract] Connected to ${dbPath}`);

  // Load checkpoint for --resume
  let skipSlugs: Set<string> | undefined;
  if (resumeFromCheckpoint) {
    const checkpointPath = path.join(process.cwd(), 'data/extraction-results-checkpoint.json');
    if (fs.existsSync(checkpointPath)) {
      const checkpoint = JSON.parse(fs.readFileSync(checkpointPath, 'utf-8')) as ExtractionReport;
      skipSlugs = new Set(checkpoint.results.map(r => r.slug));
      // Also include errors so we don't re-attempt them
      for (const e of checkpoint.errors) skipSlugs.add(e.slug);
      console.log(`[extract] Resuming from checkpoint: ${skipSlugs.size} artists already processed`);
    } else {
      console.warn(`[extract] No checkpoint file found, starting fresh`);
    }
  }

  // Build artist list
  let artists: ArtistRow[];

  if (slugFilter) {
    artists = db.prepare(
      `SELECT slug, title, artist_type, birth_date, death_date, birth_place, origin, bio_markdown, genres, instruments, is_active
       FROM artists WHERE slug = ?`
    ).all(slugFilter) as ArtistRow[];
    if (artists.length === 0) {
      console.error(`[extract] Artist not found: ${slugFilter}`);
      db.close();
      process.exit(1);
    }
  } else if (knownBad) {
    // Load audit report and extract slugs of non-auto-fixable issues
    const reportPath = path.join(process.cwd(), 'data/audit-report.json');
    if (!fs.existsSync(reportPath)) {
      console.error(`[extract] Audit report not found: ${reportPath}`);
      console.error(`[extract] Run: npx tsx scripts/audit-data-integrity.ts`);
      db.close();
      process.exit(1);
    }

    const auditReport = JSON.parse(fs.readFileSync(reportPath, 'utf-8')) as {
      issues: Array<{ slug: string; auto_fixable: boolean }>;
    };

    // Get unique slugs from non-auto-fixable issues (bare locations, etc.)
    const slugs = [...new Set(auditReport.issues.filter(i => !i.auto_fixable).map(i => i.slug))];
    console.log(`[extract] Found ${slugs.length} artists with non-auto-fixable issues`);

    // Use temp table to avoid SQLite variable limit (999 max)
    db.exec('CREATE TEMP TABLE IF NOT EXISTS _extract_slugs (slug TEXT PRIMARY KEY)');
    db.exec('DELETE FROM _extract_slugs');
    const insertSlug = db.prepare('INSERT OR IGNORE INTO _extract_slugs (slug) VALUES (?)');
    const insertAll = db.transaction((s: string[]) => { for (const slug of s) insertSlug.run(slug); });
    insertAll(slugs);

    artists = db.prepare(
      `SELECT a.slug, a.title, a.artist_type, a.birth_date, a.death_date, a.birth_place, a.origin, a.bio_markdown, a.genres, a.instruments, a.is_active
       FROM artists a INNER JOIN _extract_slugs es ON a.slug = es.slug
       ORDER BY a.slug
       LIMIT ? OFFSET ?`
    ).all(limit || slugs.length, offset) as ArtistRow[];
  } else if (missingMetadata) {
    artists = db.prepare(
      `SELECT slug, title, artist_type, birth_date, death_date, birth_place, origin,
              bio_markdown, genres, instruments, is_active
       FROM artists
       WHERE bio_markdown IS NOT NULL AND LENGTH(bio_markdown) > 100
         AND (birth_place IS NULL OR origin IS NULL OR artist_type IS NULL
              OR birth_date IS NULL OR instruments IS NULL OR instruments = '[]')
       ORDER BY slug
       LIMIT ? OFFSET ?`
    ).all(limit || 999999, offset) as ArtistRow[];
  } else {
    artists = db.prepare(
      `SELECT slug, title, artist_type, birth_date, death_date, birth_place, origin, bio_markdown, genres, instruments, is_active
       FROM artists
       ORDER BY slug
       LIMIT ? OFFSET ?`
    ).all(limit || 999999, offset) as ArtistRow[];
  }

  console.log(`[extract] Processing ${artists.length} artists (concurrency: ${concurrency})\n`);

  const { results, errors, tierCounts } = await processBatch(artists, skipSlugs);
  const resultsWithDiffs = results.filter(r => r.diffs.length > 0);

  // Write report with timestamped filename
  const now = new Date();
  const timestamp = now.toISOString().replace(/[:.]/g, '').replace('T', '-').substring(0, 15);
  const report: ExtractionReport = {
    generated_at: now.toISOString(),
    model: LM_MODEL,
    total_processed: results.length,
    total_with_diffs: resultsWithDiffs.length,
    total_errors: errors.length,
    results: resultsWithDiffs,
    errors,
  };

  const reportDir = path.join(process.cwd(), 'data');
  if (!fs.existsSync(reportDir)) fs.mkdirSync(reportDir, { recursive: true });
  const reportPath = path.join(reportDir, `extraction-results-${timestamp}.json`);
  fs.writeFileSync(reportPath, JSON.stringify(report, null, 2));
  console.log(`\n[extract] Report: ${reportPath} (${(fs.statSync(reportPath).size / 1024).toFixed(0)}KB)`);
  console.log(`[extract] Processed: ${results.length}, With diffs: ${resultsWithDiffs.length}, Errors: ${errors.length}`);
  console.log(`[extract] Tiers: skip=${tierCounts.skip}, location-only=${tierCounts['location-only']}, full=${tierCounts.full}`);

  // Clean up checkpoint on successful completion
  const checkpointPath = path.join(process.cwd(), 'data/extraction-results-checkpoint.json');
  if (fs.existsSync(checkpointPath)) {
    fs.unlinkSync(checkpointPath);
    console.log(`[extract] Checkpoint cleaned up`);
  }

  // Apply fixes
  if (doApply && resultsWithDiffs.length > 0) {
    console.log(`\n[extract] Applying fixes (min confidence: ${minConfidence})...`);
    applyFixes(db, resultsWithDiffs);
    applyMarkdownFixes(resultsWithDiffs);
  }

  db.close();
}

main().catch(err => {
  console.error('[extract] Fatal error:', err);
  process.exit(1);
});
