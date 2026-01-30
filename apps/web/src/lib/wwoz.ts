/**
 * WWOZ Play Matching Utility
 *
 * Searches WWOZ daily logs for tracks matching an artist.
 * Used by both the artist page (for TOC) and WWOZPlays component (for rendering).
 *
 * Database-driven: Queries wwoz_tracks table instead of loading content collections.
 */
import type { DatabaseAdapter } from '@jazzapedia/db';

export interface MatchedTrack {
  date: string;
  time: string;
  title: string;
  album?: string;
  show: string;
  host?: string;
  spotifyUrl?: string;
  confidence?: number;
}

/**
 * Get all WWOZ plays for an artist, sorted by date (newest first).
 *
 * @param artistSlug - Artist slug (e.g., "dr-john")
 * @param artistName - Artist display name (e.g., "Dr. John")
 * @param db - Database adapter (D1 or SQLite)
 * @returns Array of matched tracks sorted by date (newest first)
 */
export async function getWWOZPlaysForArtist(
  artistSlug: string,
  artistName: string,
  db: DatabaseAdapter
): Promise<MatchedTrack[]> {
  // Build LIKE patterns for flexible artist matching
  // Pattern 1: Match artist name with wildcards (handles "feat." credits)
  const artistPattern = `%${artistName}%`;

  // Pattern 2: Match slug-based name (replaces hyphens with spaces)
  const slugAsName = artistSlug.replace(/-/g, ' ');
  const slugPattern = `%${slugAsName}%`;

  // Query database for matching tracks
  // Uses idx_wwoz_artist_status for performance
  const result = await db
    .prepare(`
      SELECT
        date,
        time,
        title,
        album,
        show_name as show,
        host,
        spotify_url as spotifyUrl,
        confidence
      FROM wwoz_tracks
      WHERE status = 'found'
        AND (
          LOWER(artist) LIKE LOWER(?)
          OR LOWER(artist) LIKE LOWER(?)
        )
      ORDER BY date DESC, time DESC
    `)
    .bind(artistPattern, slugPattern)
    .all();

  // Map database results to MatchedTrack interface
  const tracks = (result.results || []) as any[];
  return tracks.map(track => ({
    date: track.date,
    time: track.time,
    title: track.title,
    album: track.album || undefined,
    show: track.show,
    host: track.host || undefined,
    spotifyUrl: track.spotifyUrl || undefined,
    confidence: track.confidence !== null ? track.confidence : undefined,
  }));
}
