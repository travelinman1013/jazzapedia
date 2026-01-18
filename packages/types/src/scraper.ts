/**
 * Scraper-related type definitions
 */

/**
 * A song scraped from WWOZ playlist
 */
export interface ScrapedSong {
  artist: string;
  title: string;
  album?: string;
  playedDate?: string;
  playedTime?: string;
  scrapedAt: string;
  show?: string;
  host?: string;
}

/**
 * Spotify track information
 */
export interface SpotifyTrackSummary {
  id: string;
  uri: string;
  name: string;
  artists: string[];
  album?: string;
  durationMs?: number;
  genres?: string[];
}

/**
 * Result of matching a scraped song to Spotify
 */
export interface TrackMatch {
  track: SpotifyTrackSummary;
  confidence: number;
  reason?: string;
}

/**
 * Archive status for a matched/unmatched song
 */
export type ArchiveStatus = 'found' | 'not_found' | 'low_confidence' | 'unknown';

/**
 * Entry in the archive (Obsidian or Database)
 */
export interface ArchiveEntry {
  song: ScrapedSong;
  status: ArchiveStatus;
  confidence?: number;
  spotifyUrl?: string;
  match?: unknown;
  archivedAt: string;
}

/**
 * Scraper interface for fetching playlist data
 */
export interface IScraper {
  scrape(): Promise<ScrapedSong[]>;
}

/**
 * Enricher interface for Spotify matching
 */
export interface IEnricher {
  findMatch(song: ScrapedSong): Promise<TrackMatch | null>;
  isDuplicate(playlistId: string, trackId: string): Promise<boolean>;
  addToPlaylist(playlistId: string, trackUri: string, position?: number): Promise<void>;
  loadPlaylistCache(playlistId: string): Promise<void>;
  getOrCreatePlaylist(name: string): Promise<{ id: string; name: string }>;
  clearPlaylistCache(playlistId?: string): Promise<void> | void;
  getCachedTrackCount?(playlistId: string): number;
}

/**
 * Archiver interface for storing matched songs
 */
export interface IArchiver {
  archive(entry: ArchiveEntry): Promise<void>;
  finalizeDailyStats?(date?: string): Promise<void>;
  wasArchived?(entry: ArchiveEntry): Promise<boolean>;
  clearDedupCache?(): void;
  getDailySpotifyTrackUris?(date: string): Promise<string[]>;
  getPendingArchiveIfReady?(): string | null;
  clearPendingArchive?(): void;
}

/**
 * State tracking for processed archives
 */
export interface ProcessedArchiveState {
  processedAt: string;
  status: 'success' | 'error';
  error?: string;
  artistsProcessed?: number;
  durationMs?: number;
}

/**
 * Database of processed archives by date
 */
export interface ProcessedArchivesDB {
  [archiveDate: string]: ProcessedArchiveState;
}
