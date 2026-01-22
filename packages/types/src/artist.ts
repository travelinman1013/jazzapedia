/**
 * Artist-related type definitions
 */

/**
 * Spotify enrichment data for an artist
 */
export interface SpotifyData {
  id?: string;
  uri?: string;
  name?: string;
  popularity?: number;
  followers?: number;
  images?: Array<{
    url: string;
    height?: number;
    width?: number;
  }>;
  genres?: string[];
}

/**
 * Audio profile analysis from Spotify audio features
 */
export interface AudioProfile {
  acousticness?: number;
  danceability?: number;
  energy?: number;
  instrumentalness?: number;
  liveness?: number;
  speechiness?: number;
  valence?: number;
  tempo?: number;
}

/**
 * Musical connections and collaborations
 */
export interface MusicalConnections {
  collaborators?: string[];
  influences?: string[];
  influencedBy?: string[];
  associatedActs?: string[];
  members?: string[];
  formerMembers?: string[];
}

/**
 * External URLs for an artist
 */
export interface ExternalUrls {
  spotify?: string;
  wikipedia?: string;
  musicbrainz?: string;
  allmusic?: string;
  discogs?: string;
  bandcamp?: string;
  soundcloud?: string;
}

/**
 * Social media links
 */
export interface SocialLinks {
  twitter?: string;
  instagram?: string;
  facebook?: string;
  youtube?: string;
  website?: string;
}

/**
 * Discography summary
 */
export interface DiscographySummary {
  albums?: number;
  singles?: number;
  compilations?: number;
  eps?: number;
  firstRelease?: string;
  lastRelease?: string;
}

/**
 * Full artist record as stored in database
 */
export interface Artist {
  id: number;
  slug: string;
  title: string;
  artist_type?: 'person' | 'band';
  birth_date?: string;
  death_date?: string;
  origin?: string;
  birth_place?: string;
  bio_html?: string;
  bio_markdown?: string;
  image_filename?: string;
  genres: string[];
  instruments: string[];
  roles: string[];
  spotify_data: SpotifyData;
  audio_profile: AudioProfile;
  musical_connections: MusicalConnections;
  external_urls: ExternalUrls;
  social_links: SocialLinks;
  discography_summary: DiscographySummary;
  research_sources: string[];
  career_span?: string;
  is_active: boolean;
  primary_role?: string;
  content_hash?: string;
  created_at?: string;
  updated_at?: string;
}

/**
 * Editable fields for inline editing feature
 */
export const EDITABLE_FIELDS = [
  'genres',
  'roles',
  'instruments',
  'artist_type',
  'birth_date',
  'death_date',
  'birth_place',
  'origin',
  'career_span',
  'is_active',
  'aliases',
  'birth_name',
  'discography_summary',
] as const;

export type EditableField = (typeof EDITABLE_FIELDS)[number];

/**
 * Field validation configuration
 */
export interface FieldValidation {
  type: 'string' | 'string[]' | 'boolean' | 'enum' | 'date' | 'object';
  maxLength?: number;
  maxItems?: number;
  enumValues?: readonly string[];
  nullable?: boolean;
}

export const FIELD_VALIDATIONS: Record<EditableField, FieldValidation> = {
  genres: { type: 'string[]', maxItems: 30, maxLength: 100 },
  roles: { type: 'string[]', maxItems: 20, maxLength: 100 },
  instruments: { type: 'string[]', maxItems: 30, maxLength: 100 },
  artist_type: { type: 'enum', enumValues: ['person', 'band'], nullable: true },
  birth_date: { type: 'date', nullable: true },
  death_date: { type: 'date', nullable: true },
  birth_place: { type: 'string', maxLength: 200, nullable: true },
  origin: { type: 'string', maxLength: 200, nullable: true },
  career_span: { type: 'string', maxLength: 50, nullable: true },
  is_active: { type: 'boolean' },
  aliases: { type: 'string[]', maxItems: 10, maxLength: 100 },
  birth_name: { type: 'string', maxLength: 200, nullable: true },
  discography_summary: { type: 'object', nullable: true },
};

/**
 * Artist edit audit log entry
 */
export interface ArtistEditLog {
  artist_slug: string;
  field_name: EditableField;
  old_value: string | null;
  new_value: string | null;
  editor_ip: string;
  user_agent: string;
}

/**
 * Artist row from database (before JSON parsing)
 */
export interface ArtistRow {
  id: number;
  slug: string;
  title: string;
  artist_type?: string;
  birth_date?: string;
  death_date?: string;
  origin?: string;
  birth_place?: string;
  bio_html?: string;
  bio_markdown?: string;
  image_filename?: string;
  genres: string;
  instruments: string;
  roles: string;
  spotify_data: string;
  audio_profile: string;
  musical_connections: string;
  external_urls: string;
  social_links: string;
  discography_summary: string;
  research_sources: string;
  career_span?: string;
  is_active: number;
  primary_role?: string;
  content_hash?: string;
  created_at?: string;
  updated_at?: string;
}
