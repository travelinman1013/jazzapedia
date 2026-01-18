/**
 * @jazzapedia/types
 *
 * Shared TypeScript type definitions for the Jazzapedia monorepo
 */

// Artist types
export type {
  Artist,
  ArtistRow,
  AudioProfile,
  DiscographySummary,
  ExternalUrls,
  MusicalConnections,
  SocialLinks,
  SpotifyData,
} from './artist.js';

// Scraper types
export type {
  ArchiveEntry,
  ArchiveStatus,
  IArchiver,
  IEnricher,
  IScraper,
  ProcessedArchivesDB,
  ProcessedArchiveState,
  ScrapedSong,
  SpotifyTrackSummary,
  TrackMatch,
} from './scraper.js';

// Database types
export type {
  DatabaseAdapter,
  Genre,
  Instrument,
  PreparedStatement,
  Role,
  WriteResult,
  WwozTrack,
} from './database.js';
