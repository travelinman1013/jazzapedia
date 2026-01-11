/**
 * WWOZ Play Matching Utility
 *
 * Searches WWOZ daily logs for tracks matching an artist.
 * Used by both the artist page (for TOC) and WWOZPlays component (for rendering).
 */
import { getCollection } from 'astro:content';

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
 */
export async function getWWOZPlaysForArtist(artistSlug: string, artistName: string): Promise<MatchedTrack[]> {
  const wwozLogs = await getCollection('wwoz');
  const matchedTracks: MatchedTrack[] = [];

  // Normalize artist name for matching
  const normalizedArtistName = artistName.toLowerCase().trim();
  const artistWords = normalizedArtistName.split(/\s+/);

  // Also match on slug variations
  const slugVariations = [
    artistSlug,
    artistSlug.replace(/-/g, ' '),
    artistName.toLowerCase()
  ];

  for (const log of wwozLogs) {
    const tracks = log.data.tracks || [];
    const date = log.data.date;

    for (const track of tracks) {
      if (track.status !== 'found') continue; // Only show found tracks

      const trackArtist = track.artist.toLowerCase().trim();

      // Match strategies:
      // 1. Exact match
      // 2. Artist name contained in track artist (handles "feat." credits)
      // 3. Track artist contained in artist name
      // 4. All words of artist name present in track artist
      const isMatch =
        trackArtist === normalizedArtistName ||
        trackArtist.includes(normalizedArtistName) ||
        normalizedArtistName.includes(trackArtist) ||
        artistWords.every(word => trackArtist.includes(word)) ||
        slugVariations.some(v => trackArtist.includes(v));

      if (isMatch) {
        matchedTracks.push({
          date,
          time: track.time,
          title: track.title,
          album: track.album,
          show: track.show,
          host: track.host,
          spotifyUrl: track.spotifyUrl,
          confidence: track.confidence
        });
      }
    }
  }

  // Sort by date (newest first), then by time
  matchedTracks.sort((a, b) => {
    const dateCompare = b.date.localeCompare(a.date);
    if (dateCompare !== 0) return dateCompare;
    return b.time.localeCompare(a.time);
  });

  return matchedTracks;
}
