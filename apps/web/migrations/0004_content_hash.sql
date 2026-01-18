-- Add content_hash column for incremental sync detection
-- This stores an MD5 hash of the markdown file content to detect changes
-- without relying on file modification times (which don't work in CI)

ALTER TABLE artists ADD COLUMN content_hash TEXT;

-- Create index for faster lookups during incremental sync
CREATE INDEX IF NOT EXISTS idx_artists_content_hash ON artists(slug, content_hash);
