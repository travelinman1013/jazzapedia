/**
 * DatabaseArchiver - Archives WWOZ playlist entries directly to SQLite
 *
 * This archiver writes scraped songs directly to the shared SQLite database,
 * eliminating the 4+ hour sync lag from the Obsidian → D1 sync pipeline.
 *
 * The web app can read from this same database in real-time.
 */

import { Logger } from '../../utils/logger.js';
import { resolveSongDayString } from '../../utils/date.js';
import type { ArchiveEntry, IArchiver, ScrapedSong } from '../../types/index.js';

// Database types - inline to avoid circular dependency during initial setup
interface WwozTrackRow {
  id: number;
  artist: string;
  title: string;
  album: string | null;
  played_at: string;
  show_name: string | null;
  host_name: string | null;
  spotify_uri: string | null;
  spotify_url: string | null;
  confidence: number | null;
  status: string;
  scraped_at: string;
  created_at: string;
}

// better-sqlite3 types
type BetterSqlite3Database = {
  prepare(sql: string): {
    run(...params: unknown[]): { changes: number; lastInsertRowid: number | bigint };
    get(...params: unknown[]): unknown;
    all(...params: unknown[]): unknown[];
  };
  pragma(pragma: string): unknown;
  close(): void;
};

type BetterSqlite3Constructor = new (
  filename: string,
  options?: { readonly?: boolean }
) => BetterSqlite3Database;

export class DatabaseArchiver implements IArchiver {
  private db: BetterSqlite3Database | null = null;
  private dbPath: string;
  private recentKeys: Map<string, number> = new Map();
  private currentArchiveDay: string | null = null;
  private initialized = false;

  constructor(dbPath: string) {
    this.dbPath = dbPath;
  }

  /**
   * Initialize the database connection and ensure schema exists
   */
  private async init(): Promise<void> {
    if (this.initialized) return;

    try {
      // Dynamic import of better-sqlite3
      const betterSqlite3 = await import('better-sqlite3');
      const Database = betterSqlite3.default as unknown as BetterSqlite3Constructor;

      this.db = new Database(this.dbPath);
      this.db.pragma('journal_mode = WAL');

      // Ensure wwoz_tracks table exists
      this.db.prepare(`
        CREATE TABLE IF NOT EXISTS wwoz_tracks (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          artist TEXT NOT NULL,
          title TEXT NOT NULL,
          album TEXT,
          played_at TEXT NOT NULL,
          show_name TEXT,
          host_name TEXT,
          spotify_uri TEXT,
          spotify_url TEXT,
          confidence REAL,
          status TEXT NOT NULL,
          scraped_at TEXT NOT NULL,
          created_at TEXT DEFAULT (datetime('now'))
        )
      `).run();

      // Create index for efficient queries
      this.db.prepare(`
        CREATE INDEX IF NOT EXISTS idx_wwoz_tracks_played_at ON wwoz_tracks(played_at DESC)
      `).run();

      this.db.prepare(`
        CREATE INDEX IF NOT EXISTS idx_wwoz_tracks_artist ON wwoz_tracks(artist)
      `).run();

      this.initialized = true;
      Logger.info(`[DatabaseArchiver] Connected to database: ${this.dbPath}`);
    } catch (error) {
      Logger.error(`[DatabaseArchiver] Failed to initialize database: ${error}`);
      throw error;
    }
  }

  /**
   * Generate a unique key for deduplication
   */
  private generateKey(song: ScrapedSong): string {
    const day = resolveSongDayString(song.playedDate, song.scrapedAt);
    return `${day}|${song.artist.toLowerCase()}|${song.title.toLowerCase()}`;
  }

  /**
   * Check if we've already archived this song recently
   */
  async wasArchived(entry: ArchiveEntry): Promise<boolean> {
    const key = this.generateKey(entry.song);
    const lastWritten = this.recentKeys.get(key);

    if (lastWritten) {
      const fiveMinutesAgo = Date.now() - 5 * 60 * 1000;
      if (lastWritten > fiveMinutesAgo) {
        return true;
      }
    }

    // Also check database for duplicates
    await this.init();
    if (!this.db) return false;

    const day = resolveSongDayString(entry.song.playedDate, entry.song.scrapedAt);
    const result = this.db
      .prepare(
        `SELECT id FROM wwoz_tracks
         WHERE DATE(played_at) = ?
         AND LOWER(artist) = LOWER(?)
         AND LOWER(title) = LOWER(?)
         LIMIT 1`
      )
      .get(day, entry.song.artist, entry.song.title);

    return result !== undefined;
  }

  /**
   * Archive a single entry to the database
   */
  async archive(entry: ArchiveEntry): Promise<void> {
    await this.init();
    if (!this.db) {
      throw new Error('Database not initialized');
    }

    // Check for duplicates
    if (await this.wasArchived(entry)) {
      Logger.debug(`[DatabaseArchiver] Skipping duplicate: ${entry.song.artist} - ${entry.song.title}`);
      return;
    }

    try {
      // Parse played_at timestamp
      const songDay = resolveSongDayString(entry.song.playedDate, entry.song.scrapedAt);
      let playedAt = new Date().toISOString();

      if (entry.song.playedDate && entry.song.playedTime) {
        // Try to construct full timestamp
        const year = new Date().getFullYear();
        const dateStr = `${year}-${entry.song.playedDate.replace('/', '-')}`;
        const timeMatch = entry.song.playedTime.match(/(\d{1,2}):(\d{2})(am|pm)/i);

        if (timeMatch) {
          let hours = parseInt(timeMatch[1], 10);
          const minutes = parseInt(timeMatch[2], 10);
          const isPm = timeMatch[3].toLowerCase() === 'pm';

          if (isPm && hours < 12) hours += 12;
          if (!isPm && hours === 12) hours = 0;

          playedAt = `${songDay}T${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:00.000Z`;
        }
      }

      const stmt = this.db.prepare(`
        INSERT INTO wwoz_tracks (
          artist, title, album, played_at, show_name, host_name,
          spotify_uri, spotify_url, confidence, status, scraped_at
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      `);

      stmt.run(
        entry.song.artist,
        entry.song.title,
        entry.song.album ?? null,
        playedAt,
        entry.song.show ?? null,
        entry.song.host ?? null,
        null, // spotify_uri - populated by enricher
        entry.spotifyUrl ?? null,
        entry.confidence ?? null,
        entry.status,
        entry.archivedAt
      );

      // Update dedup cache
      const key = this.generateKey(entry.song);
      this.recentKeys.set(key, Date.now());

      Logger.debug(`[DatabaseArchiver] Archived: ${entry.song.artist} - ${entry.song.title}`);
    } catch (error) {
      Logger.error(`[DatabaseArchiver] Failed to archive entry: ${error}`);
      throw error;
    }
  }

  /**
   * Clear the in-memory deduplication cache
   */
  clearDedupCache(): void {
    this.recentKeys.clear();
    Logger.debug('[DatabaseArchiver] Cleared dedup cache');
  }

  /**
   * Get Spotify track URIs for a specific day (for playlist sync)
   */
  async getDailySpotifyTrackUris(date: string): Promise<string[]> {
    await this.init();
    if (!this.db) return [];

    try {
      const rows = this.db
        .prepare(
          `SELECT spotify_uri FROM wwoz_tracks
           WHERE DATE(played_at) = ?
           AND spotify_uri IS NOT NULL
           AND status = 'found'
           ORDER BY played_at ASC`
        )
        .all(date) as Array<{ spotify_uri: string }>;

      return rows.map((row) => row.spotify_uri);
    } catch (error) {
      Logger.error(`[DatabaseArchiver] Failed to get daily URIs: ${error}`);
      return [];
    }
  }

  /**
   * Update a track with Spotify enrichment data
   */
  async updateTrackWithSpotify(
    trackId: number,
    spotifyUri: string,
    spotifyUrl: string,
    confidence: number
  ): Promise<void> {
    await this.init();
    if (!this.db) return;

    this.db
      .prepare(
        `UPDATE wwoz_tracks
         SET spotify_uri = ?, spotify_url = ?, confidence = ?, status = 'found'
         WHERE id = ?`
      )
      .run(spotifyUri, spotifyUrl, confidence, trackId);
  }

  /**
   * Get recent unenriched tracks for batch enrichment
   */
  async getUnenrichedTracks(limit: number = 50): Promise<WwozTrackRow[]> {
    await this.init();
    if (!this.db) return [];

    return this.db
      .prepare(
        `SELECT * FROM wwoz_tracks
         WHERE spotify_uri IS NULL
         AND status != 'not_found'
         ORDER BY played_at DESC
         LIMIT ?`
      )
      .all(limit) as WwozTrackRow[];
  }

  /**
   * Close the database connection
   */
  close(): void {
    if (this.db) {
      this.db.close();
      this.db = null;
      this.initialized = false;
      Logger.info('[DatabaseArchiver] Database connection closed');
    }
  }

  // Optional IArchiver methods - not used for database archiver
  finalizeDailyStats?(): Promise<void> {
    return Promise.resolve();
  }

  getPendingArchiveIfReady?(): string | null {
    return null;
  }

  clearPendingArchive?(): void {
    // No-op
  }
}
