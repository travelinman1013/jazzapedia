-- Migration 0007: WWOZ Artist Index
-- Purpose: Optimize artist search queries on wwoz_tracks table
-- Context: Artist pages were hitting Cloudflare Workers resource limits due to
--          loading all WWOZ content collections. This index optimizes the new
--          database-driven WWOZ artist matching queries.

-- Create case-insensitive index on artist column with status
-- This enables efficient LIKE queries: WHERE LOWER(artist) LIKE LOWER(?) AND status = 'found'
CREATE INDEX IF NOT EXISTS idx_wwoz_artist_status
ON wwoz_tracks(artist COLLATE NOCASE, status);
