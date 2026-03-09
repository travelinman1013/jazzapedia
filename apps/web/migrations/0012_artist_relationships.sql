-- ============================================================
-- Normalized Artist Relationships Table
-- Replaces musical_connections JSON with queryable relational data
-- Enables reverse lookups, path finding, and graph analytics
-- ============================================================

CREATE TABLE IF NOT EXISTS artist_relationships (
  source_slug TEXT NOT NULL,
  target_slug TEXT NOT NULL,
  relationship_type TEXT NOT NULL CHECK (relationship_type IN (
    'collaborator', 'influenced', 'mentor', 'member', 'associated', 'former_member'
  )),
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  PRIMARY KEY (source_slug, target_slug, relationship_type)
);

-- Forward lookups: "who does artist X connect to?"
CREATE INDEX IF NOT EXISTS idx_rel_source
  ON artist_relationships(source_slug);

-- Reverse lookups: "who connects to artist X?"
CREATE INDEX IF NOT EXISTS idx_rel_target
  ON artist_relationships(target_slug);
