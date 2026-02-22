-- WWOZ Database Export
-- Generated: 2026-02-22T10:30:07.523Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-22 07:51:21
-- Days: 3
-- Tracks: 509

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-19',
  'https://open.spotify.com/playlist/0pblqZvRwtenoG161IRWwV',
  '{"totalTracks":208,"successfullyFound":150,"notFound":58,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-19 07:59:39',
  '2026-02-22 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-20',
  'https://open.spotify.com/playlist/5ubYZ6DfTRpiyD8y7JEM0W',
  '{"totalTracks":151,"successfullyFound":108,"notFound":43,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-20 07:25:22',
  '2026-02-22 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-21',
  'https://open.spotify.com/playlist/6VWk5n2TXiBDEBpBeMk3Fx',
  '{"totalTracks":118,"successfullyFound":54,"notFound":64,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-21 10:30:06',
  '2026-02-22 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-19';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '00:23',
  'J Dilla',
  'Crushin'' (Yeeeeaah!)',
  'Ruff Draft',
  'plunderphonics, alternative hip hop, jazz rap',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/2hhDTkFoGCLAPEy6TlpkBA',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '00:28',
  'Black Thought',
  'Cold Steel Freestyle',
  'Exclusive! J. PERIOD & Black Thought Present The Live Mixtape...',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '00:30',
  'Jay Electronica',
  'So What You Sayin''',
  'StyleWarsEP',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '00:47',
  'Karriem Riggins',
  'Long Live J Dilla feat. Westside Gunn & Busta Rhymes',
  'Long Live J Dilla (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '00:49',
  'Pete Rock',
  'Niggaz Know feat. J Dilla',
  'Soul Survivor II',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '00:52',
  'Lex Machina',
  'Textures (Prayer) feat. Nesby Phips',
  'Textures (Prayer) SINGLE',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '00:53',
  'Charm Taylor',
  'Shine feat. MoRuf',
  'Shine (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:02',
  'ET DEAUX',
  'SEALAB 2024 feat. Knox Ketchum & Houses At Nigh',
  'Adult Swimming II',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:05',
  'Knox Ketchum',
  'Operator',
  'Operator (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/18A0p7kaYPQcLruiXPCU5g',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:06',
  'Knox Ketchum',
  'Trending Topic',
  'Knox Machina',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/3DuN6Prk2YpfslmMbA0SOC',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:23',
  'Aisha Raquel',
  'Astral Project',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/5cTlu8YS4kEiOFUB9Ep0MJ',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:23',
  'ET Deaux',
  'FTR (feat. Knox Ketchum, BJE'')',
  'Adult Swimming III',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:23',
  'Good News Bas',
  'Get Paid feat. Mac Infinity',
  'Get Paid (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:25',
  'SkiiWii',
  'Ni9',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/1eYWUENU1BEntiWg6nLFZF',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:27',
  'Vega Heartbreak & Indiana Rome',
  'Flowers',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/5UrIYCPzWkWCp6qRwI7QJZ',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '01:29',
  'Apbeatz, Concepts',
  'Woes ( feat. Apollo Black)',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '02:04',
  'Robert Glasper Experiment',
  'Dillalude #2',
  'Black Radio Recovered The Remix EP',
  'neo soul, jazz rap',
  'Overnight Music - Thursday',
  NULL,
  'https://open.spotify.com/track/28nRXN4A40t56B7FjaG0NB',
  'found',
  79.6,
  '2026-02-19 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '02:05',
  'Nine Yards',
  'Always Find A Way (ft.J Dilla)',
  NULL,
  '',
  'Overnight Music - Thursday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-19 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '02:06',
  'Slum Village',
  'Look Of Love (remix)',
  NULL,
  'jazz rap',
  'Overnight Music - Thursday',
  NULL,
  'https://open.spotify.com/track/5LOGLuUInD0YuOn9wdkhYV',
  'found',
  100,
  '2026-02-19 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '02:07',
  '9th Wonder',
  'ONe More (ft. Eli Tha Don)',
  'Zion XI',
  '',
  'Overnight Music - Thursday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-19 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '02:07',
  'SALIMATA',
  'Jackpot & Foil - A COLORS SHOW',
  'Jackpot & Foil - A COLORS SHOW - Single',
  'experimental hip hop',
  'Overnight Music - Thursday',
  NULL,
  'https://open.spotify.com/track/3fMtAAd4ZIWxHIv4ahEdHt',
  'found',
  71.8,
  '2026-02-19 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '02:08',
  'Nubiyan Twist',
  'Red Herring',
  NULL,
  'indie jazz, jazz rap, nu jazz',
  'Overnight Music - Thursday',
  NULL,
  'https://open.spotify.com/track/3IpC0acr0nUhVtyud4Obj5',
  'found',
  74.8,
  '2026-02-19 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '04:31',
  'Allen Toussaint',
  'Electricity',
  'The Complete Warner Bros. Record',
  'cajun',
  'Overnight Music - Thursday',
  NULL,
  'https://open.spotify.com/track/3CFOzOwsYW0U8xnvVsAwVR',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '06:01',
  'Mike Dillon',
  'Waltz While You Sleep',
  'Mike Dillon',
  'jam band, cajun',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2NKjAkLZQq2ysa4Oq427kH',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '06:04',
  'redrawblak',
  'In The West',
  'redrawblak',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '06:15',
  'Alice Coltrane',
  'Shiva-Loka',
  'The Carnegie Hall Concert',
  'free jazz, jazz, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/79Z9rj7XAOHpsQ4Ep7Dq6s',
  'found',
  87.7,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '06:33',
  'Jeff Parker',
  'Freakadelic',
  'The Way Out Of Easy',
  'bluegrass, christian bluegrass, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/32tkzMaROMJN9Adl2Wu86V',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '06:57',
  'Sam Gendel, Sam Wilkes',
  'GBTC',
  'The Doober',
  'ambient jazz, nu jazz, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/65GFsgPvRGPJUpShEQ1v5s',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:08',
  'Duke Ellington',
  'Blue Pepper',
  'Far East Suite',
  'jazz, big band, swing music',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/506xNpMVd0yiRu4huAFNtM',
  'found',
  74.5,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:09',
  'Brendan Buckley/ Earl Harvin',
  'Brendan + Earl',
  'DrummerPlusDrummer Vol. 3',
  'jazz fusion',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1rM7QEObFs1BpRE81GmSJM',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:12',
  'Karl Hector and the Malcouns',
  'Dege Dub',
  'Ka Rica-TYar',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:16',
  'Azymuth',
  'Unknown Jam',
  'Demos (`1973-1975)',
  'brazilian jazz, jazz funk, jazz fusion',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5TTnesU4FqO8b377ZENaqM',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:18',
  'Salah Ragab & The Cairo Jazz Band',
  'Neveen',
  'Egyptian Jazz',
  'ethiopian jazz, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1rU5TrPEoGHRjopPaefAb9',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:28',
  'Ahmed Malek',
  'Maya',
  'Habibi',
  'ethiopian jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2HIMlOV55G5S11mWcMyQ23',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:32',
  'Mike Reed',
  'Rahsaan In The Serengetti',
  'The Separtist Party',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:36',
  'Ryo Fukui',
  'Early Summer',
  'Scenery Of Japaneese Jazz',
  'jazz, jazz fusion, bebop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0MR3s9hsGHPuKmdQjwZUvb',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '07:47',
  'Charles Earland',
  'Morgan',
  'Kharma',
  'jazz funk, soul jazz, hard bop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/4XWFne46R9jA9du1a8vwz0',
  'found',
  77.9,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:03',
  'Alan Evans/ Neal Evans/ Eric Krasno/ Karl Denson',
  'Nubian Lady',
  'Spark!',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:18',
  'BadBadNotGood',
  'Juan''s World',
  'Mid Spiral',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0utrPWRDKtuavrLD2HKcGi',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:19',
  'Jahari Massamba Unit',
  'Massamba Afundance',
  'Massamba Afundance',
  'nu jazz, experimental hip hop, alternative hip hop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3NRY5U5HwXk1xP43Hd5cJj',
  'found',
  73.7,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:21',
  'Dee Dee Bridgewater',
  'Compared to What',
  'Red Earth--A Malian Journey',
  'vocal jazz, french jazz, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1xtmkrd0PG8BrdQjJz21u6',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:27',
  'Eddie Henderson',
  'Dr. Mganga',
  'Heritage',
  'jazz funk, jazz fusion, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/13mxG4lI2FguVdBkPbmpUr',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:36',
  'Galt MacDermot',
  'Coffee Cold',
  'Shapes of Rhythm/Woman Is Sweeter',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/6MN6yRVriszuyAVlyF8ndB',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:40',
  'Dave Alexander',
  'That Cold Feeling',
  'The Dirt on The Ground',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '08:45',
  'Phil Ranelin`',
  'How Do We End All Of This Madness',
  'A Message From The Tribe',
  'free jazz, jazz funk, soul jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7EvgVkW9KnXydA4gdx7x3w',
  'found',
  72,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:04',
  'Kermit Ruffins',
  'Good Morning New Orleans',
  NULL,
  'brass band, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/09LHgBX7qtVQtFsZufi6vx',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:07',
  'Kevin Louis and The Palm Court Jazz Band',
  'Tin Roof Blues',
  'Last Chance To Dance',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/68fj2As1gWz88c5GgvwAQ7',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:15',
  'Classic Jazz Trio',
  'Si Tu Vois Ma Mere',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/6U8DLPukYAmyL2OZXhe9TQ',
  'found',
  74.7,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:20',
  'Ernie Elly',
  'Oh, Lady Be Good',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:25',
  'Mari Watanabe',
  'Stompin'' At The Savoy',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:31',
  'Sidney Bechet',
  'Limehouse Blues',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:33',
  'Mark Braud',
  'Alabamy Bound',
  'Hot Sausage Rag',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:38',
  'Royal Roses',
  'Blue Horizon',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:43',
  'Louis Armstrong',
  'Wrap Your Troubles In Dreams',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:47',
  'Lucien Barbarin & he Palm Court Swingsters',
  'Blues My Naughty Sweetie Gives Me',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:51',
  'Frank Oxley''s Louisiana Moonshine Band',
  'Pretty Baby',
  NULL,
  'ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4y3LHFnK4pzC2S24Qh1mBJ',
  'found',
  75.3,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '09:56',
  'Lionel Ferbos',
  'Five Minutes More',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:01',
  'Louis Armstrong',
  'Jelly Roll Blues',
  NULL,
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0EbfKbfwlptVJYuSB0tu6d',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:03',
  'Wilbur De Paris',
  'Shreveport Stomp',
  NULL,
  'ragtime, swing music',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2EvWjX5KaIWBwRQvArOqBN',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:06',
  'Dr. Michael White',
  'Martinique',
  NULL,
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0HOrVYvCuYaXPcHudzrrlX',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:16',
  'Colossus Brass Band',
  'By And By',
  'Sing On',
  'brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0REXDReqM7YDt8DYqHwxee',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:16',
  'Topsy Chapman, Koen De Cauter',
  'Nobody Knows When You''re Down And Out',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/28IgWfIWPUtgQwcDM4oREx',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:19',
  'Calvin Johnson, Jr.',
  'Hotter Than That',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/77axVyIE9mPSmvrRoumGuM',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:26',
  'Tuba Fats',
  'Didn''t He Ramble',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:26',
  'Willie Humphrey',
  'All Of Me',
  NULL,
  'brass band, ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0b3h3ZdOrxEcImaqy9M3Lz',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:30',
  'Olympia Brass Band',
  'Back Home In Indiana',
  NULL,
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/69yw2D1NXCgL45h3fZMzXE',
  'found',
  79.2,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:36',
  'DeDe Pierce and His New orleans Stompers',
  'Coquette',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:40',
  'Basin Street Six',
  'I''m Going Home',
  NULL,
  'ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/395dfUegkWdLgxhfcHyY3B',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:42',
  'Louis Nelson',
  'Muskrat Ramble',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/66idwbXeb1WeglnGpmPTIq',
  'found',
  71.3,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:47',
  'Magnolia Jazz Band w/ Lillian Boutte',
  'Down By The River',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:56',
  'Allen Toussaint',
  'On The Sunny Side Of The Street',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '10:56',
  'Preservation Hall Jazz Band',
  'Lady Be Good',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:05',
  'james booker',
  'on the sunny side of the street',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1J7N2A9TacvffOGYY3AGA5',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:06',
  'james booker',
  'keep on gwine',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/727aecJcYKGOXDmlrGtA5n',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:10',
  'james booker',
  'people get ready',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0uljHhGl4lbKNGxtjyvhim',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:13',
  'Craig Klein',
  'I`ll Fly Away',
  'New Orleans Trombonism',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1zpE9lAV9ktZsvXXoEgHXR',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:13',
  'Preservation Hall Jazz Band',
  'I`ll Fly Away',
  'St. Peter & 57th St',
  'bluegrass, newgrass, christian bluegrass',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5ynHigy4SOle0alSQRDp9y',
  'found',
  78.6,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:19',
  'james booker',
  'angel eyes',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2Y27YH2oghEdi9gF4gzfJ6',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:20',
  'james booker',
  'lonely avenue',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1CiowmuO4yVXLgO7Yq2htI',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:28',
  'james booker',
  'three keys/amen',
  'classified',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:33',
  'Zion Harmonizers',
  'I`ll Fly Away',
  'The Best of New Orleans Gospel,',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:40',
  'Irma Thomas',
  'Ruler of My Heart',
  'Time Is On My Side',
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2W9cyvOHeC26mSy96802Kk',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:42',
  'sarah quintana',
  'everybody''s on the mend now',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:42',
  'sarah quintana',
  'new orleans',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:43',
  'Irma Thomas',
  'I''ve Been Loving You',
  'Something Good: The Muscle Shoal',
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7zZq7VSs4uBJ9ybDBXH0Ec',
  'found',
  91,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:43',
  'harry connick, jr.',
  'new orleans',
  NULL,
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2wO37xCW3vzgVgEH85BmXm',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:48',
  'HARRY CONNICK, JR.',
  'THE FIRST TIME EVER I SAW YOUR FACE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:53',
  'PERCY SLEDGE',
  'COME SOFTLY TO ME',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1hpO42JggRwEeF0yq96Y4E',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:56',
  'PERCY SLEDGE',
  'WHAT AM I LIVING FOR?',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3yjuIBV7rnHvoPlMRjgis1',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '11:58',
  'PERCY SLEDGE',
  'THAT''S HOW STRONG MY LOVE IS',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/75sJMuYaqm7HCrMQF1qXvb',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '12:01',
  'PERCY SLEDGE',
  'LOVE ME TENDER',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5fK4wYEwuDxwnq4FQgpMis',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '12:04',
  'JOHNNY ADAMS',
  'LOVE ME TENDER',
  NULL,
  'soul blues, blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1ZRmqtq8Sogctz1gpZCB47',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '12:08',
  'JOHNNY ADAMS',
  'THE TENDER SIDE OF ME',
  NULL,
  'soul blues, blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0GiBeoUoH6FlmNcQACIZHy',
  'found',
  86.5,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '12:26',
  'NOLATET',
  'SWITCHBACK',
  'SOMETHIN'' TO RELAX WITH',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '12:47',
  'Irma Thomas',
  'Love is the Foundation',
  'Love is the Foundation',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '12:55',
  'Irma Thomas',
  'I Need Your Love So Bad',
  'Time Is On My Side',
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2ykaQGOB0YE3oF4S5J4E6Q',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:03',
  'NOLATET',
  'BLACK PENCIL',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:05',
  'NOLATET',
  'SOMETHIN'' TO RELAX WITH',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:06',
  'Irma Thomas',
  'Medley Coming From Behind (Monol',
  'A Woman`s Viewpoint The Essentia',
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7lUEHNxrfYU2WtzIMzPksW',
  'found',
  78.1,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:19',
  'Irma Thomas',
  'Good To Me',
  'Something Good: The Muscle Shoal',
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5DAWBCuEUbhJQgqp424IU9',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:23',
  'LAZY LESTER',
  'I DONE GOT OVER IT',
  NULL,
  'blues, classic blues, modern blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/77ji4UVW8Y1q1xrCS1A0sy',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:24',
  'GUITAR SLIM',
  'THE THINGS I USED TO DO',
  NULL,
  'classic blues, country blues, blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0Lfswb6Q4EfG1Rzlunmj3v',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:29',
  'BOBBY MARCHAN',
  'THE THINGS I USED TO DO PARTS 1 & 2',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:34',
  'BOBBY MARCHAN',
  'IT''S WRITTEN ALL OVER YOUR FACE PARTS 1 & 2',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:45',
  'BOBBY MARCHAN',
  'SNOOPIN'' AND ACCUSIN''',
  NULL,
  'northern soul, doo-wop, motown',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0vdlkJgzpMjTFBNKltCPjj',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:45',
  'BOBBY MARCHAN',
  'THERE''S SOMETHING ON YOUR MIND? PARTS 1 & 2',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '13:47',
  'THE TREME BRASS BAND',
  'FOOD STAMP BLUES',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5Kp97BdhHY8CFC01OmAB89',
  'found',
  86.1,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:00',
  'Dr. John',
  'Eleggua',
  'Locked Down',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5zbKKnn0Ar6EMkP9q7nzd9',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:03',
  'Betty Wright',
  'Clean Up Woman',
  'The Platinum Collection',
  'classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6uqTETWok9npbL4c9cuLVh',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:06',
  'BILL WITHERS',
  'KISSING MY LOVE',
  'STILL BILL',
  'soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/262qk9k0LTyMXmjH9YT2xU',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:09',
  'Johnny Guitar Watson',
  'Ain`t That A Bitch',
  'The Best Of The Funk Years',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5tcrRMV4ibCLHx8s2yp2O3',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:14',
  'STEVIE WONDER',
  'THAT GIRL',
  'ORIGINAL MUSIQUARIUM',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5oNi6zJgIcGh8pv3XlmZb3',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:19',
  'Bobby Blue Bland',
  'Members Only',
  'Members Only',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4wvKPOCiOlZh6xwwympC8c',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:23',
  'L.T.D.',
  '(EVERY TIME I TURM AROUND) BACK IN LOVE AGAIN',
  'L.T.D. GREARTEST HITS',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:28',
  'Earth, Wind And Fire',
  'On Your Face',
  'Spirit',
  'funk, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1364cfVtDUV74zIeMl6ydQ',
  'found',
  89.5,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:33',
  'SHIRLEY BROWN',
  'WOMAN TO WOMAN',
  'WOMAN TO WOMAN',
  'classic soul, soul, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4vrOAcjaNkGkV2ZswUZHC1',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:36',
  'Marvin Gaye',
  'I Want You (Vocal)',
  'Great Songs and Performances [19',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:41',
  'october london',
  'make me wanna',
  'the rebirth of marvin',
  'retro soul, neo soul, contemporary r&b',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7aTcdBz0stpZqhqbnDCXBI',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:44',
  'Freddie King',
  'Big Legged Woman',
  'The Shelter Records Years',
  'blues, classic blues, blues rock',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/37RtOpFMu0i0wzjtK7c1bn',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:48',
  'THE STAPLE SINGERS',
  'I''ll Take You There/Fire',
  'THE BEST OF THE STAPLE SINGERS',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:52',
  'Dr. John',
  'Food For Thot',
  'The Best Of The Parlophone Years',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0pS0ArJxesOWbEbRBDKKBh',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '14:57',
  'MAZE & FRAKIE BEVERLY',
  'GOLDEN TIME OF DAY',
  'THE GREATEST HITS: LIFELINES, VOL. 1',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:09',
  'Chuck Carbo',
  'Meet Me With Your Black Draws On',
  'with Ed Frank''s N.O. R& B Band',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:14',
  'Johnny Adams',
  'Bulldog Break His Chain',
  'Man of My Word',
  'soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6Lds5HNnNUUezB9XNtw0Kt',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:19',
  'Etta James',
  'A Sunday Kind of Love',
  'Ultimate Diva Collection- The Di',
  'soul, soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0zGLlXbHlrAyBN1x6sY0rb',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:24',
  'Luther Kent',
  'I Wouldn`t Treat A Dog',
  'The Bobby Bland Songbook',
  'ragtime',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1Vun1rw5qKLKa2w7xKV7dO',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:28',
  'Luther Vandross',
  'Never Too Much',
  'Never Too Much',
  'quiet storm, soul, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3nFJbZCHP4d9vduKjJLdBL',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:34',
  'STEVIE WONDER',
  'BOOGIE ON REGGAE WOMAN',
  'FULFILLINGNESS'' FIRST FINALE',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7wOKVOhqghB6rCyaPWVegJ',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:37',
  'Koko Taylor',
  'Don`t Put Your Hands On Me',
  'Force of Nature',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2WX1Opbc92E3zwBThDJUAb',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:40',
  'FRANK MCMOMB',
  'GOTTA FIND A WAY',
  'LOVE STORIES',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:45',
  'Aretha Franklin',
  'Until You Come Back To Me (Tha',
  '30 Greatest Hits [Disc 2]',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3iX0BMs9dX9CsgrHhiB173',
  'found',
  81.5,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:49',
  'GLADYS KNIGHT& THE PIPS',
  'NEITHER ONE OF US',
  'NEITHER ONE OF US',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3QgSJ9CqgLPk9B4xLdwLrS',
  'found',
  77.9,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '15:53',
  'Etta James',
  'If You Want Me To Stay',
  'Life, Love & The Blues',
  'soul, soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3ux4SABKVVgyXzB0A4D2zQ',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '16:12',
  'Ellis Marsalis',
  'Swinging At The Haven',
  'The Classic Ellis Marsalis',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0DBIYyONtffnfzghtKeOV6',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '16:13',
  'Kermit Ruffins',
  'Song For My Father',
  'Livin'' A Treme Life',
  'brass band, cajun',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5i19UHS02oiAFq0zQOf08T',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '16:15',
  'Harold Batiste',
  'marzique dancing',
  'Next Generation',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '16:30',
  'Dr. John',
  'In a Sentimental Mood',
  'In a Sentimental Mood',
  'cajun, zydeco',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/3kIdqliyG5S2LohVySPqUh',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '16:30',
  'Wynton Marsalis',
  'Hickory Dickory Dock',
  'The Majesty Of The Blues',
  'jazz, latin jazz, big band',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/1WADBO07rBnRGs9d2HwwXz',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '16:31',
  'Bernard Purdie',
  'Moanin''',
  'Soul Trian',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '16:47',
  'Karen Shiraishi',
  'Now I Know',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:08',
  'Jimmy Scott',
  'I''m Through With Love',
  'Dream',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0yMUOh6rkkXcPB41hV4asp',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:08',
  'Joe Henderson',
  'Take The A Train',
  'Lush Life',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5kLeN0CtYwMuaon1SMZ54R',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:12',
  'Theo Croker & Dee Dee Bridgewater',
  'i can''t help it if i''m still in love with you',
  'Afro Physicist',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:16',
  'Dexter Gordon',
  'The Girl With The Purple Eyes',
  'More Than You Know',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0Y5b1eRD9UVtLEKwTpY6Dd',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:20',
  'Terrence Martin',
  'Community Research',
  'PEACE',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:26',
  'Theo Croker, Sullivan Fortner',
  'A Prayer for Peace',
  'Play',
  'nu jazz, soul jazz, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5R3e5tMI5Ugr2HCzH90hpx',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:29',
  'Lonnie Listen Smith',
  'A Garden Of Peace 2025',
  'A Garden Of Peace 2025',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:43',
  'Eddie Harris',
  'Listen Here',
  'The Electrifying Eddie Harris',
  'soul jazz, jazz funk, hard bop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/54cxEkH90CHuDMe3dfiWOl',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '17:53',
  'Mongo Santamaria',
  'Sofrito',
  'Sofrito',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0FpBO0Pyoh4MZVmNO3zwnc',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:04',
  'Audrey LeCrone',
  'Hot Nuts',
  'single',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4xfJJxQPTZgE3hmaaGbltM',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:04',
  'Dayramir Gonzales',
  'El Manosero',
  'V.I.D.A.',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:09',
  'Russell Gunn',
  'You Don''t Know What Love Is',
  'Jazz For Quiet Times',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5RjAkeG9u32FvRsy3JyUgN',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:14',
  'john coltrane',
  'giant steps',
  'giant steps',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0gCKwy3YmhKc9rzjYjTQKx',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:19',
  'Lee Morgan',
  'Hocus-Pocus',
  'The Sidewinder',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4oLmztYOcw02rDTUe7dfNO',
  'found',
  71,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:27',
  'wayne shorter',
  'black nile',
  'night dreamer',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0Dfpbbbwi2MW7o6fGPJnNr',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:33',
  'Joe Sample & The Soul Commite',
  'THE SIDEWINDER',
  'Did You Feel That?',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:40',
  'The Marsalis Family',
  'Syndrome',
  'Music Redeems',
  'brass band, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4dDsI8FAm4RolLBRdQIfZO',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:47',
  'Herlin Riley',
  'Borders Without Lines',
  'Perpetual Optimism',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5mrtCmMRDHNyfaqssLLAtW',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '18:52',
  'Miles Davis',
  'Footprints',
  'Miles Smiles',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/2wjHWYJVAs5TYSRP83JLmc',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:02',
  'DIRTY DOZEN BRASS BAND',
  'JOHN THE REVELATOR',
  'Funeral For A Friend',
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2YDUeulONtt8IFIsZfmRst',
  'found',
  90.3,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:07',
  'the dave brubeck quartet',
  'when the saints go marching in',
  NULL,
  'jazz, cool jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3eeT0t6MxHUDYiSZcqCiq1',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:14',
  'roosevelt sykes',
  'hangover.',
  NULL,
  'blues, classic blues, boogie-woogie',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4eLOvMKyA4tPO76yeEyijY',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:17',
  'leyla mccalla',
  'too blue',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6dihaTlhmgp3AeId9CFABA',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:20',
  'slim harpo',
  'blues hangover.',
  NULL,
  'classic blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6AZRFJd8iLkhHBNafAjdBQ',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:23',
  'Ahmad Jamal Trio',
  'Volga Boatman',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4qnvL2jtPBFzQ3W3u8JphU',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:24',
  'madeleine peyroux',
  'tango till theyre sore',
  NULL,
  'french jazz, vocal jazz, jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1A9DYyFtMlzHfxuiw6qYWa',
  'found',
  86,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:31',
  'hank thompson',
  'hangover tavern',
  NULL,
  'classic country, honky tonk, traditional country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6PGwCYugiMElOKisqRCQJv',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:31',
  'una mae carlisle',
  'hangover blues',
  NULL,
  'swing music, vocal jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2MXrmvq2RltO8Rr8JuJun6',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:36',
  'dinah washington',
  'the blues ain''t nothin'' but a woman cryin for her man',
  NULL,
  'vocal jazz, jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/11HamG7mirnNVVTRuwPNse',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:42',
  'the harlem hamfats',
  'you drink too much',
  NULL,
  'swing music, ragtime, electro swing',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1NHClzSnO9FfRsMPAM0u7a',
  'found',
  86,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:43',
  'bob dylan',
  'moonshiner',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:48',
  'buddy knox',
  'i think i''m gonna kill myself',
  NULL,
  'rockabilly, doo-wop, rock and roll',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2AJoUAh4ViufVpeJZq84xK',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:48',
  'sister rosetta tharpe',
  'god don''t like it',
  NULL,
  'traditional gospel, blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5jz86OQYMMXfo8XNZGogT4',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:49',
  'ahmad jamal trio',
  'on green dolphin street',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6DqM5cWUuuEDpQlrB6eHIl',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:53',
  'dave van ronk',
  'last call',
  NULL,
  'folk, traditional folk, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7geEJH4dCkV3QVOMxmK60i',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '19:54',
  'bessie smith',
  'moan you moaners',
  NULL,
  'classic blues, blues, ragtime',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/14WjlQCK50CiurEjy6YuM0',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:01',
  'LOS LOBOS',
  'JOCKEY FULL OF BOURBON',
  NULL,
  'roots rock',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0TC94QE55ZWSHxZQp3JIwu',
  'found',
  87.3,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:01',
  'the harlem hamfats',
  'hallelujah joe ain''t preachin no more',
  NULL,
  'swing music, ragtime, electro swing',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5IVOcuHHLJSTWFzdCECmwu',
  'found',
  86,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:04',
  'truckstop honeymoon',
  'walk of shame',
  NULL,
  'bluegrass, alt country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0qC1iWcjoOoI3cDb40G4Tg',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:07',
  'harlem hamfats',
  'weed smoker''s dream',
  NULL,
  'swing music, ragtime, electro swing',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/30vlYkT6mzbwlS3gp1XSs8',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:10',
  'ahmad jamal trio',
  'maryam',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/28KLUr9xteoLXkB1a3cP36',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:14',
  'lil green',
  'why don''t you do right',
  NULL,
  'blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3RWSq4TNReOQtOsXk1myyM',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:16',
  'alvin youngblood hart',
  'sunday mornin comin down',
  NULL,
  'blues, modern blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/13thmREHjJ17QnoNRY1ekr',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:22',
  'swamp dogg',
  'i was born blue',
  NULL,
  'retro soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4f3yeyj1ZVpzQfbrNcVQdi',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:24',
  'junior wells and buddy guy',
  'early in the morning.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:28',
  'snooks eaglin',
  'let me go home whiskey',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/22UVizCSSrqVfXJ1o1jVQx',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:34',
  'andre williams',
  'my last dance with you',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3A7kvgZwv8j0b9zEgZUOsC',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:36',
  'ahmad jamal trio',
  'i just can''t see for lookin''',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2BF0THIU6pBVbwcvBt05N7',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:36',
  'della reese',
  'leftover wine',
  NULL,
  'cha cha cha',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2AMrtYt1mMMLy2ykcOeL4z',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:39',
  'abner jay',
  'depression',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0VwLW92oo8DpDPsn4Jld8r',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:41',
  'etta james',
  'don''t get around much anymore',
  NULL,
  'soul, soul blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2uwsVhs7pgu8kNcxRT3WqO',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:48',
  'champion jack dupree',
  'failing health blues',
  NULL,
  'blues, classic blues, boogie-woogie',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0n6Y6a4ayO2XozZOgUv0ds',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:48',
  'rickie lee jones',
  'one for my baby...',
  NULL,
  'singer-songwriter',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4jJmwvdkZVOxu8mapPwW3w',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:49',
  'jerry lee lewis',
  'good time charlie''s got the blues',
  NULL,
  'rockabilly, rock and roll, boogie-woogie',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7Jkq9XdZb1dLTeXwUuP414',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:53',
  'nina simone',
  'just like tom thumb''s blues',
  NULL,
  'vocal jazz, soul jazz, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5pYoVsL8N5h8gO7dGqs2q7',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '20:57',
  'ahmad jamal trio',
  'how about you.',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/49nD4jdvCvvX80zIcoc8VP',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:03',
  'james brown',
  'that''s life',
  NULL,
  'funk, soul, motown',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2ypFEmLB5q5j2l34bFxF8Y',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:07',
  'aaron neville',
  'for the good times',
  NULL,
  'classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6afPuR3pUo2zrVlmpBNX3n',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:09',
  'oscar brown,jr.',
  'but i was cool',
  'sin and soul',
  'vocal jazz, soul jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1UXRfEt0nDsoXAnpKeNBNS',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:12',
  'eartha kitt',
  'lilac wine',
  NULL,
  'christmas',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0kJ3enCNnfnsHXzAbfbYKY',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:17',
  'ahmad jamal trio',
  'spring will be a little late this year',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/22YpaeCulbxOoGo6nD3h6Y',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:20',
  'big maybelle',
  'don''t let the sun catch you crying',
  NULL,
  'blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1MLrtjEvPooOwisEfSVFF8',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:27',
  'taj mahal',
  'mind your own business',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6MogZKDqwPROGFksZYGVs1',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:31',
  'etta jones',
  'fine and mellow.',
  NULL,
  'vocal jazz, jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2LppzNdnjnE3i7VH0hMuko',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:31',
  'hurray for the riff raff',
  'look out mama',
  NULL,
  'americana, alt country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7AHoCClLCJHYgbgYSvrKED',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:31',
  'lightnin hopkins',
  'trouble in mind..,',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2QkmNNiHM9e3R8oT2yGeVo',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:34',
  'ahmad jamal trio',
  'jim loves sue',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6ltgatpNYao471J42ilohI',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:35',
  'dayna kurtz',
  'invocation',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1bhG1T6J0qXEgWqdYOyUnH',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:47',
  'billie holiday',
  'good morning heartache',
  NULL,
  'jazz, vocal jazz, big band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5jGqJTsejbAy7QdhAH2Qwp',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:47',
  'ray charles',
  'hard times (no one knows better than i)',
  NULL,
  'soul, soul blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4ADzk9oX44sCGJPE5OjNcW',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:48',
  'otis redding',
  'nobody''s fault but mine',
  NULL,
  'motown, soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/70UtqJue6sAuuc0yn3tDaj',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:52',
  'memphins minnie',
  'ain''t no use trying to tell on me',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:54',
  'ahmad jamal trio',
  'beat out one',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6KsuFpHMncbrdCPcSbXZ5H',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '21:54',
  'lucinda williams',
  'the end of the world',
  NULL,
  'alt country, americana, outlaw country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3DnXjzVixxHsjmHT7fNyJf',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:08',
  'Jill Scott',
  'It''s Love (Live)',
  'Experience: Jill Scott 826+ (Live)',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:11',
  'A Tribe Called Quest',
  'Jazz (We''ve Got)',
  'The Anthology',
  'jazz rap, east coast hip hop, old school hip hop',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7AgMX97ljLm9BzszyyXEYZ',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:14',
  'Chaka Khan',
  'Like Sugar',
  'Like Sugar - Single',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0lWEatZXBBYUzEQX5aMeSj',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:23',
  'Meshell Ndegeocello',
  'Who Is He and What Is He to You',
  'Soul Music - EP',
  'neo soul, indie jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2OdtM5DtnEuMYPUGzkmNR7',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:23',
  'Pastor T.L. Barrett and The Youth for Christ Choir',
  'Nobody Knows',
  'Like a Ship (Without a Sail)',
  'funk gospel, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2TM24qZOOgsmA94g6Ovy48',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:31',
  'Etta James',
  'Fire',
  'Tell Mama',
  'soul, soul blues, blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7AOWYNfEB86AgkIc9NN3qm',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:36',
  'R.L. Burnside',
  'Sitting On Top of the World',
  'Sound Machine Groove',
  'blues, country blues, modern blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1Vi9TLYIBoI4tc2qZaCEz1',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:38',
  'Willie Dixon',
  'You Shook Me',
  'I Am the Blues',
  'blues, classic blues, soul blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1xns0tyPRpOrODwND6ELTF',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:42',
  'Lottie Kimbrough',
  'Rolling Log Blues',
  'Country Blues Outlaws',
  'country blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7rTLnEjs92rVjBfraf3Nut',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:46',
  'Shirley Brown',
  'I Ain''t Gonna Tell (Nobody)',
  'Funky Tales',
  'classic soul, soul, blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/01s2dlvPFIh3gu4fA7CgLl',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:55',
  'Roberta Flack',
  'Compared to What',
  'First Take',
  'adult standards, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3ZTEMmFm3FzfEtjqJN32c1',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '22:56',
  'Taj Mahal',
  'Frankie & Albert',
  'In Progress & In Motion (1965-1998)',
  'blues, classic blues, country blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2EP9sayfivcag8HyOUNAoh',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:00',
  'Odetta',
  'Baby, I''m In the Mood for You',
  'Odetta Sings Dylan',
  'folk, traditional folk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/50ZHlDg707OUDn61nba1gy',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:02',
  'Teta Lando',
  'Muato Wa N'' Ginjila',
  'Pebbles Vol. 3, Africa Pt. 1, Originals Artifacts from the Psych',
  'kizomba',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0fh3Fz8fMUtI1LRABB4n4G',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:06',
  'Zap Mama',
  'African Sunset',
  '[7]',
  'afropop, neo soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5yKIICLO05zCPoiUX5TytK',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:10',
  'Les Nubians',
  'Les gens (feat. Blitz the Ambassador)',
  'Nu Revolution',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:15',
  'Phirpo Y Sus Caribes',
  'Comencemos',
  'Black Man'' s Cry: The Influence and Inspiration of Fela Kuti',
  'afrobeat, afro soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/43z8P5XtmwqzzKxOEQMDCe',
  'found',
  98,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:27',
  'Jurassic 5',
  'Canto de Ossanha',
  'Feedback',
  'hip hop',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2Mw9lHRbSkcIgSk0DZUzeY',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:31',
  'Calexico',
  'Cumbia de Donde',
  'Edge of the Sun (Deluxe Edition)',
  'alt country, americana, roots rock',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5nnqQF4uBfulDbM7Tae4kN',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:37',
  'Khruangbin',
  'Evan Finds the Third Room',
  'Con Todo El Mundo',
  'neo-psychedelic',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2nIhVeiF7vlUmPyevRKrKV',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:38',
  'Valerie June',
  'You Can'' t Be Told',
  'Pushin'' Against a Stone',
  'folk, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4afYc6b90xaA04w6Cm8Xa2',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:41',
  'Lee Fields',
  'Without a Heart',
  'Sentimental Fool',
  'retro soul, soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5zCAzCihjhSIKHfH9VYshI',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:47',
  'Sly & The Family Stone',
  'In Time',
  'Fresh (Deluxe Edition)',
  'funk, motown, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/21SHzZ1qsXzJ5Socuuyo8w',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:51',
  'Edwin Starr',
  '25 Miles',
  'The Very Best of Edwin Starr',
  'northern soul, motown, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6X7Ey60HxS5J2SC4k6pJj8',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:54',
  'Betty Davis',
  'Anti Love Song',
  'Betty Davis (Bonus Track Version)',
  'funk rock, funk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0dgfS9OaA9GJwCFjZrU3aT',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-19',
  '23:59',
  'Yvonne Fair',
  'Funky Music Sho Nuff Turns Me On',
  'The Bitch Is Black',
  'classic soul, motown, northern soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2vSNNXAcXcfANa8AJ3Z1Tw',
  'found',
  100,
  '2026-02-20 07:25:22'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-20';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '00:56',
  'Coco Robicheaux',
  'Back Around Blues',
  'Yeah, U Rite!',
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '01:03',
  'Lee Dorsey',
  'Can You Hear Me',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/1bUJTomj0LymQPYOraAwI4',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '04:29',
  'Leroy Jones',
  'Two Five One',
  'I''m Talkin'' Bout New Orleans',
  'brass band, ragtime',
  'Overnight Music - Friday',
  NULL,
  'https://open.spotify.com/track/3MQNczTJ3Q17IEQ9l827CT',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:02',
  'Mingus Big Band',
  'Goodbye Pork Pie Hat',
  'The Essential Mingus Big Band',
  'big band, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/317FdhJgt48gtopOwixZox',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:12',
  'Junior Cook',
  'Illusion Of Grandeur',
  'Somethin`s Cookin`',
  'hard bop, soul jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5DZaiG42dD4M4WhZ2WdML9',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:21',
  'Kenny Garrett',
  'Qing Wen',
  'Beyond The Wall',
  'jazz, jazz fusion',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7ypjD2wNz3o5a3wnfI4JfS',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:32',
  'Herbie Hancock',
  'Actual Proof',
  'This Is Jazz, Vol. 35',
  'jazz, jazz fusion, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1Aix42Q7mxGLMDglHhIOg3',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:42',
  'Lee Konitz',
  'Thingin''',
  'Gracefullee',
  'cool jazz, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2vCZ52C9glIWP38YVGvUH8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:52',
  'Branford Marsalis',
  'B.B.`S Boogie',
  'I Heard You Twice The First Time',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:06',
  'Fats Waller',
  'St. Louis Blues',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/34VGrMR1FkMHnUOfNn8Dvo',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:08',
  'Louis Jordan',
  'Louie`s Blues',
  'The Aladdin X And Vik Recordings',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:11',
  'Randy Weston',
  'Babe`s Blues',
  'Earth Birth',
  'hard bop, gnawa, free jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2h0tIuCseoWgga7SKZdPAn',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:14',
  'Billy Eckstine',
  'Here Comes The Blues',
  'Everything I Have Is Yours-The B',
  'vocal jazz, big band, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/6TuhfI3t5WlvxC6O1rtaz8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:18',
  'Art Tatum',
  'Mr. Freddie Blues',
  'The Definitive Art Tatum',
  'jazz, ragtime, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/3daUe5N6yZ7vXYcYDqwtjk',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:21',
  'Wes Montgomery',
  'West Coast Blues',
  'Movin` Wes',
  'jazz, hard bop, cool jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4zgOHE23pzKltkcLzIwQDz',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:24',
  'Thelonious Monk',
  'Blues Five Spot',
  'Monk`s Dream [Expanded]',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/61ieytawm4bscc4GDE8nqq',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:27',
  'Barry Martyn',
  'Legends Funky Blues',
  'Barry Martyn`s Legends of Jazz',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:31',
  'Freddie Hubbard & Jimmy Heath',
  'Bluesville',
  'Jam Gems',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:42',
  'Kenny Burrell',
  'Bluescape',
  'Lucky So And So',
  'hard bop, jazz, cool jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7fRPPyg14gKkHrPU81AYo8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:47',
  'Blue Mitchell',
  'Blue Funk',
  'Graffiti Blues [Bonus Track]',
  'hard bop, bebop, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/202VvQBKI2lDzL2FZjjojG',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:52',
  'Wessell Anderson',
  'Baton Rouge Blues',
  'Ways Of Warmdaddy',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:57',
  'Roy Haynes',
  'Limehouse Blues',
  'True Or False',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5xeAiN54RCnG6ys0XeXnd2',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:02',
  'Count Basie Orchestra',
  'The James Bond Theme',
  'Basie Meets Bond',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:06',
  'Roland Alphonso',
  'From Russia With Love',
  'Something Special- Ska Hot Shots',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:10',
  'David Fathead Newman',
  'Goldfinger',
  'Cityscape',
  'hard bop, bebop, soul jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5ygVEOHtQ5R3Yllb4Y45Mz',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:16',
  'Thomas Marriott',
  'You Only Live Twice',
  'Flexicon',
  'hard bop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1NnAAZIzOs8es85DGDEvnA',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:24',
  'Chaka Khan',
  'Diamonds Are Forever',
  'Classikhan',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1RcqQbe5Hrkf9VFI4oUFkJ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:27',
  'Tony Allen',
  'Secret Agent',
  'Secret Agent',
  'afrobeat',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4IKFqkY2q7b98PI7L5Lias',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:33',
  'Prysm',
  'Secret World',
  'Second Rhythm',
  'dubstep, french jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0aUW40VLG4pCp28qAN1oMa',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:37',
  'World Saxophone Quartet',
  'Spy On Me Blues',
  'Political Blues',
  'free jazz, avant-garde, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0TRt7qL2puUHmpEcr3T5mA',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:43',
  'Delfeayo Marsalis',
  'Lone Warrior',
  'Minions Dominion',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:55',
  'Terence Blanchard',
  'Cosmic Warrior',
  'Breathless',
  'jazz, latin jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/79TvWpGgRDtuIwyBd0tSsl',
  'found',
  70.9,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:07',
  'Louis Armstrong',
  'All That Meat And No Potatoes',
  'Satch Plays Fats - A Tribute To',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4rfxu3vOUWRaOx8YwUEpbi',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:12',
  'Fats Waller And His Rhythm',
  'When Somebody Thinks You`re Wond',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:16',
  'Billie Holiday',
  'On The Sunny Side Of The Street',
  'The Complete Commodore Recording',
  'jazz, vocal jazz, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/16ARXAJAcL8ubHDpBLcqDQ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:19',
  'Boswell Sisters, The',
  'We Just Couldn''t Say Goodbye',
  'The Boswell Sisters 1931-1935',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7aQfeMpFntQuvAY7pE27yV',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:21',
  'Louis Armstrong',
  'Big Butter And Egg Man',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1u92L2GbWf2x9CZPpi0HN1',
  'found',
  88.6,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:24',
  'Billie Holiday',
  'Fine And Mellow',
  'The Complete Commodore Recording',
  'jazz, vocal jazz, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1QdQ4r05QWhtcTTXOgRtyA',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:28',
  'Fats Waller And His Rhythm',
  'I Got Rhythm',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:31',
  'Billie Holiday',
  'It`s A Sin To Tell A Lie',
  'Jazz Portrait (CD02)',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:34',
  'Boswell Sisters',
  'Roll On, Mississippi, Roll On',
  'Riverboat Shuffle',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2TKplQR3KJt0UvflZpmXri',
  'found',
  84.4,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:37',
  'Louis Armstrong',
  'Lazy River',
  'Essential Louis Armstrong 2',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4iWVckKLpNVsudGsYuh5t1',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:40',
  'Billie Holiday',
  'All Of Me',
  'Jazz Portrait (CD02)',
  'jazz, vocal jazz, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1LGqJ3nvxpVXDWpEzq4DJD',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:44',
  'Ella Fitzgerald',
  'I Want To Be Happy',
  'Hallelujah!',
  'jazz, vocal jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2PNY6w3rlyAey9YPfI67v4',
  'found',
  73.4,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:48',
  'Louis Armstrong',
  'Potatohead Blues',
  'The Essential Louis Armstrong [S',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:51',
  'Ma Rainey',
  'See See Rider Blues',
  'Ma Rainey (1924 - 1928)',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5IaL2keUnZoNf1qcp9NdiQ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:55',
  'Bessie Smith',
  'Need A Little Sugar In My Bowl',
  'Martin Scorsese Presents The Blu',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6qRvnXftofjYJm1Mg98UWL',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:58',
  'Ella Fitzgerald',
  'A Tisket A Tasket',
  'Hallelujah!',
  'jazz, vocal jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5935p4F2K5crvwdc6mBLPg',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:00',
  'Bessie Smith',
  'A Good Man Is Hard To Find',
  'Martin Scorsese Presents The Blu',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/579uSl7H3qVFkPBalLlwi8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:03',
  'Fats Waller',
  'Sweet Sue, Just You',
  'I`m Gonna Sit Right Down- The Ea',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0vq2rpC3M1D896W77nMjQ2',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:06',
  'Louis Armstrong',
  'Black And Blue',
  'The Essential Louis Armstrong [S',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2f886TYxWwiRDwfopPseYS',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:09',
  'Ella Fitzgerald',
  'Bei Mir Bist Du Schon',
  'Hallelujah!',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:13',
  'Fats Waller And His Rhythm',
  'Spreadin` Rhythm Around',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:15',
  'Louis Armstrong',
  'Dinah',
  'St. Louis Blues Volume 6',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2ZvvGC5aVeFtF390cDXN9L',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:19',
  'Sidney Bechet Noble Sissle Orch.',
  'Basement Blues',
  'Memphis Town',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:22',
  'Bessie Smith',
  'Squeeze Me',
  '1925-1927',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7sZSCA3zr8s8Rh5vNwqP2L',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:25',
  'Jelly Roll Morton',
  'Sweet Subsitute',
  'Last Sessions- The Complete Gene',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:28',
  'Sidney Bechet',
  'E Flat Blues (Margarent Johnson,',
  'Volume 1 -- 1923',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:31',
  'Billie And DeDe Pierce',
  'Eh La Bas',
  'Gulf Coast Blues',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0DUlro5NRZ4lu3B9T5m8eq',
  'found',
  86.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:34',
  'Jelly Roll Morton',
  'Doctor Jazz',
  'Great Original Performances- 192',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4X0XLqn7JlDtsciNc44XkO',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:38',
  'Louis Armstrong',
  'Basin Street Blues',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5Jf9KnZKBTmaFDmSwWSawU',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:41',
  'Billie And DeDe Pierce',
  'Get A Working Man',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2UtoxMiITEc70DHUA4r4Og',
  'found',
  83.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:45',
  'Louis Armstrong',
  'Chimes Blues',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/52qpj8CmP0gdmGaJiCBC1f',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:47',
  'Sidney Bechet',
  'Atlanta Blues (Sarah Martin, Blu',
  'Volume 1 -- 1923',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:51',
  'Papa Celestin`s New Orleans Band',
  'Marie LaVeau',
  'Marie LaVeau',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:58',
  'Louis Armstrong',
  'Weather Bird',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2hlOBnSPiXLTigIMlxyvt0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:05',
  'louis armstrong',
  'When You''re Smiling',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0aAdPAlrBJqqqkkhttZIKU',
  'found',
  84.5,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:10',
  'papa celestin',
  'Jambalaya',
  NULL,
  'ragtime, brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4Y8BqDIeat59a8qnzVXmv0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:13',
  'danny barker',
  'Bill Bailey',
  NULL,
  'ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5qjJwKmqp5XgliRChUsG2m',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:17',
  'dirty dozen brass bandw',
  'dark shadow',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:21',
  'irma thomas',
  'CAN''T GET ENOUGH',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:22',
  'john boutte',
  'god bless the child',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:27',
  'james booker',
  'pop''s dilemma/ irene goodnight',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4D1s4J92zUqnVMVL1jS5Bb',
  'found',
  73.9,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:38',
  'jon cleary',
  'tww nah nah',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:47',
  'john gros',
  'Ain''t No Use',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:59',
  'funk monkey',
  'break the road',
  'pre-roll',
  'jazz funk',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7jYKCBjzTH48S5LrDLltr5',
  'found',
  91,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:28',
  'funk monkey',
  'Mojo HAnnah',
  'pre-roll',
  'jazz funk',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2D9x5BXmaEpgkOSMdmsbR1',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:29',
  'craig klein',
  'Redemption Song',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3xLGjIB3S6sed4jlaKgbuZ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:34',
  'panorama brass band',
  'blue stars',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:38',
  'michot''s melody makers',
  'coyote sur les chemins',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0XFFKWMzWs5I2uKTNbDTEB',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:41',
  'sweet crude',
  'porkupine',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2OenaoPWpHYcwD7kjFjwBa',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:44',
  'Big Freedia',
  'Celebration',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/723J8TT1MrywSg66aIqZio',
  'found',
  73.5,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:49',
  'stanton moore, ben ellman, skerik, charlie hunter, matt perrine',
  'nalgas',
  NULL,
  'jazz funk, acid jazz, jam band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1YHpwbDiidY3zc8Vahlav0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:53',
  'meyers',
  'hot sex',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3EN7chspTQbvOTGSy35vrA',
  'found',
  72.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:56',
  'new orleans nightcrawlers',
  'tchfuncta/ on that day',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0wFgcJWyGXKriyzuYjie02',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:09',
  'camile baudoin',
  'oh lonesome me',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:12',
  'loose cattle',
  'birthday cake',
  NULL,
  'americana',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3opLOajfZ9hghv8mLGHDbu',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:16',
  'subdudes',
  'time for the sun to rise',
  NULL,
  'cajun, zydeco, roots rock',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2Vb3vkXP4RYMeEitBBUSJY',
  'found',
  72.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:22',
  'magnolia beacon',
  'mariachi waltz',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:28',
  'dash rip rock',
  'mean mr mustard',
  NULL,
  'psychobilly, roots rock, rockabilly',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1RApR37a0etFBp1yJOGP7q',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:31',
  'malevitus',
  'night of the dog',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1RFrOEVu12z9P35VRlCdJ7',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:36',
  'Bas Clas',
  'Elvis In Las Vegas',
  'Fortune''s Told',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4XvKTS6FNNP9kZwLTNgMwV',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:42',
  'bonerama with johnny sansone',
  'derelict junction',
  'so much love',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:47',
  'tab benoit',
  'little queenie',
  NULL,
  'blues, cajun, modern blues',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0BFcpB2VOfFlGjBVybLmmK',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:51',
  'Earl King',
  'Always A First Time',
  'Sexual Telepathy',
  'classic blues, new orleans bounce, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1X5GbFPXclCnG7R16CUFTl',
  'found',
  72.6,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:55',
  'Snooks Eaglin',
  'Can You Hear Me',
  'The Way It Is',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:04',
  'hound dog taylor',
  'dont blame me',
  'the best of',
  'classic blues, blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1ZItohuFi2ck8eOf7j5rVA',
  'found',
  79.3,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:05',
  'floyd dixon with johnny guitar watson',
  'let''s go smitty',
  'rare 60s electric blues',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:07',
  'eddie clearwater',
  'let''s boogie',
  'chicago blues nights vol 2',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:08',
  'little walter',
  'just your fool',
  'complete chess recordings',
  'blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4Dxe3Y8MPu7ffNrBFPNzRL',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:09',
  'don covay',
  'why did you put shoes under my bed',
  'different strokes for different strokes',
  'northern soul, classic soul, philly soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/26zfmjKW6CycTvYk5I3uQ0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:10',
  'james booker',
  'FEEL SO BAD',
  'lost paramount tapes',
  'boogie-woogie, cajun, ragtime',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4h8T5R9HDhH1X35VEuSfj7',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:11',
  'pee wee clayton',
  'you were wrong',
  'things i used to do',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:14',
  'furry lewis',
  'John Henry',
  '4th and beale',
  'country blues, blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3htW4Ky3zoDU1KZGxVLfhz',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:24',
  'como mamas',
  'he''s calling me',
  'move upstairs',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:24',
  'the staple singers',
  'swing down chariot',
  'faith and grace',
  'soul, motown, classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4kCFsz1nop35J5xNpdR0MI',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:25',
  'snooks eaglin',
  'i''ve been walking',
  'imperial recordings',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:26',
  'junior wells',
  'i could have had religion',
  'southside blues jam',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5SsZtlhqcZlD5vZUcFwfWw',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:32',
  'paul butterfield blues band',
  'Mellow Down Easy',
  'paul butterfield blues band',
  'blues, blues rock, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3w7JOstC58U7VxTQcm7GIN',
  'found',
  90.4,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:34',
  'eagle park slim',
  'going back to eugene',
  'northwest blues',
  'modern blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6UY7TEIsy4sQR6U0kajjuW',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:34',
  'lightnin slim',
  'hoodoo blues',
  NULL,
  'classic blues, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/61W3GaQEBDUMljwuXWbMYK',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:35',
  'skip james',
  'drunken spree',
  'early sessions',
  'blues, country blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0LnA4Rd9YISzNFfup5cCF3',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:03',
  'al ferrier',
  'yard dog',
  'swampland jewels',
  'rockabilly, cajun, psychobilly',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0Q5mpXGf3afDH6AWiQTz7g',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:03',
  'johnny guitar watson',
  'lover jones',
  'a real mother for ya',
  'blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0FBi9BKrbCGZpvAxqF9IYx',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:09',
  'bilyy bizor',
  'she stays drunk all the time',
  'top collection',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:10',
  'big mama thornton',
  'im feeling alright',
  '1966 with muddy waters blues band',
  'blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2oBuD0bsCutoNh1gbVuBPn',
  'found',
  83.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:15',
  'jimmy reed',
  'high and lonesome',
  'complete veejay recordings',
  'blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7h4Q4ZaEAQJZfj6vjGpV18',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:19',
  'mickey champion',
  'my little boy blue',
  'what you want',
  'boogie-woogie, blues, modern blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6KXh2YXSV09H9sTtu7bFUt',
  'found',
  77.6,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:20',
  'johnny lee hooker',
  'bang bang bang bang',
  'live at soledad prison',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:25',
  'john lee hooker and canned heat',
  'burnin hell',
  'hooker n heat',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:26',
  'fred mcdowell',
  'dankins farm',
  'this aint no rock n roll',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:43',
  'gabe carter',
  'anything you need',
  NULL,
  'modern blues, blues rock, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2ejOQnSditWLlMXZApbOhw',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:43',
  'ranie burnette',
  'gone dead on you',
  'ranie burnette''s hill country blues',
  'country blues, blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2RVm99Mg3om1YBxcppoekD',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:44',
  'odell harris',
  'before you accuse me',
  'searching for odell harris',
  'classic blues, blues, footwork',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/669jAiOOlVEcgd40e0C38J',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:02',
  'Lafayette Harris Jr',
  'Long Hot Summer Blues',
  'All In Good Time',
  'jazz, jazz ballads, soul jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/79B66RInJQJ5qcRcLocHk5',
  'found',
  70.7,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:07',
  'Nicole Glover',
  'The Fox',
  'Nicole Glover Plays',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2ONZE0FG9CkmclhyXtsa2s',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:11',
  'Samara Joy',
  'Autumn Nocturne',
  'Portrait',
  'vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4mF1CkkNkg1TR9NhtzuRGU',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:18',
  'Bill Evans Trio',
  'Nardis',
  'Explorations',
  'jazz, jazz ballads, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/37vEa9sfgAqEZuqX8AX0Zk',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:22',
  'Christopher McBride & The Whole Proof',
  'The Hang The Hustle The Path',
  'The Hang The Hustle The Path',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:36',
  'Anthony Stanco',
  'Just A Moment',
  'In The Groove Live At The Alluvion',
  'spoken word',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7eO56Ygo3mZnJKeHSgm1SK',
  'found',
  90.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:38',
  'Louis Hayes',
  'Tour De Force',
  'Artform Revisted',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/37wT6iYQQfrWmD1aTz1Lob',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:40',
  'Brandon Sanders',
  'Until You Come Back To Me',
  'Lasting Impression',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:45',
  'Eric Alexander',
  'MARIA',
  'Like Sugar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6HgVtVXPkM1HLpcCBVoUpB',
  'found',
  79.3,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:50',
  'Jeremy Pelt',
  'Picking Up The Pieces',
  'Sound Track',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5sp5Yg2JnnDBUbLF9Fjxtc',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:01',
  'Lee Morgan',
  'The Sidewinder',
  'The Sidewinder',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0jGh2myWgeSSuj0bXeYZn0',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:10',
  'Houston Person',
  'Back In New Orleans',
  'Moment To Moment',
  'jazz, jazz ballads, soul jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2rFj1BoQ8J4l7LR1qXBNUh',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:18',
  'Branford Marsalis Quartet',
  'As Long As You Know You''re Living Yours',
  'Belonging',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/53BIMABrBFMit1BUprSHnB',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:25',
  'Jason Stewart',
  'Wailing Jane',
  'Cyclicality',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1p9RW6MQEHGg2SuzlfzNiG',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:33',
  'Victor Goines',
  'Body And Soul',
  'Morning Swing',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:37',
  'The Session',
  'Peace Is Broken Again',
  'The Session Live@Snug Harbor',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6ts5x2OePjSd76nDpTe6I6',
  'found',
  90.9,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:42',
  'John Coltrane',
  'Bags & Trane',
  'The Heavyweight Champion- The Co',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6JfWlP0wKOuG46Tj6xEEJ2',
  'found',
  72.7,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:50',
  'Bobby Hutcherson',
  'Jitterbug Waltz',
  'For Sentimental Reasons',
  'hard bop, jazz, free jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2Zs9T5QAFwRPZeoVFRymsg',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:00',
  'Pat Bianchi',
  'Midnight Mood',
  'Back Home',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1tU26yUrac5LA3fyHDpEZ6',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:07',
  'Brother Jack McDuff',
  'I''m Getting Sentimental Over You',
  'Ain''t No Sunshine Live In Seattle',
  'soul jazz, jazz funk, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4EOE5mIBfeaDFa3qSdgPFC',
  'found',
  74.8,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:14',
  'Mike LeDonne',
  '11 Years',
  'You''ll See The Anniversary Quartet Live At The Cellar',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:26',
  'Joey DeFrancesco',
  'Lift Every Voice And Sing',
  'Project Freedom',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6GNNzZz4fs5Djxz116lFUJ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:34',
  'JD Allen',
  'Don''t Go To Strangers',
  'Love Letters (The Ballad Sessions)',
  'hard bop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2b9qr9lAmrTJOe2mOC2b3D',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:39',
  'Roderick Harper',
  'Confidence',
  'Confidence',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2qQ8ZR8AjkGFutIzHa4Wji',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:41',
  'Michael Dease',
  'Willow Walks In',
  'City Life Music of Gregg Hill',
  'jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5vpMOR80JyEExpXTYu2BGl',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:54',
  'Cyrille Aimee',
  'Being Alive',
  'Move On: A Sondheim Adventure',
  'french jazz, vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0bQ0AgBETvjk6PqyOGsH92',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:57',
  'Thelonious Monk',
  'Thelonious',
  'The Best of Thelonious Monk- The',
  'jazz, bebop, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5yc2APVVniRhfzEEdhVh7x',
  'found',
  100,
  '2026-02-21 07:38:58'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-21';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '02:28',
  'Art Neville',
  'What`s Going On',
  'His Specialty Recordings',
  'blues',
  'Overnight Music - Saturday',
  NULL,
  'https://open.spotify.com/track/4N0wDSschgunusYDgJmKhI',
  'found',
  100,
  '2026-02-21 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '04:27',
  'Smiley Lewis',
  'If You Ever Loved A Woman',
  'Gumbo Blues (Disc-1) New Orleans',
  'boogie-woogie, doo-wop, blues',
  'Overnight Music - Saturday',
  NULL,
  'https://open.spotify.com/track/2tBVGLmDv2PuWi5wtRKJMb',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '05:28',
  'Lee Dorsey',
  'Great Googa Mooga',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Overnight Music - Saturday',
  NULL,
  'https://open.spotify.com/track/7dinE4vfJC5KfQLvuZX0tJ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Louis Jordan And His Tympany Five',
  'Inflation Blues',
  'Louis Jordan And His Tympany Five',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Original Prague Syncopated Orchestra',
  'Five Foot Two, Eyes of Blue',
  'Crazy Years--Happy Music',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Teddy Wilson aho',
  'I Can''t Believe That You''re in Love with Me',
  'Chronological 1937-1938 - Classics 548',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Zenith Hot Stompers',
  'Oriental Strut',
  '25th Anniversary Album',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4RzEsVGbIa52Ce0IKDi85O',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:42',
  'Red Roseland Cornpickers (D-1984)',
  'I''ll See You In My Dreams',
  'Double Talk',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:50',
  'Red Roseland Cornpickers (D-1984)',
  'I''m A Ding Dong Daddy From Dumas',
  'Double Talk',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:50',
  'Royal Society Jazz Orchestra',
  'Sing You Sinners',
  'Harlem to Hollywood',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:54',
  'Royal Society Jazz Orchestra',
  'The Golddigger''s Song (We''re in the Money)',
  'Harlem to Hollywood',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:05',
  'Kentucky Ramblers',
  'Good Cocaine (Mama Don''t Allow It)',
  'The Rise and Fall of Paramount Records, Volume 2 (1928-1932)',
  'cajun',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6XwKkSj6P7Ogj71fZhd5a8',
  'found',
  84.8,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:08',
  'Kentucky Ramblers',
  'Everybody Works But Father',
  'The Rise and Fall of Paramount Records, Volume 2 (1928-1932)',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:11',
  'Kid Ory',
  'Farewell To Storyville',
  'Chronological 1945-1950',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6EqaCMtMDQWzhBKcRYmyYk',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:14',
  'Kid Ory',
  'Joshua Fit De Battle Of Jericho',
  'Chronological 1945-1950',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6V8KYsKi0hwCiyyq2EE8NQ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:18',
  'Louis Armstrong',
  'On A Little Bamboo Bridge',
  'The Complete Louis Armstrong Decca Sessions (1935-46), Disc 2',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:21',
  'Louis Armstrong',
  'When Ruben Swings The Cuban (Alt Tk-B)',
  'The Complete Louis Armstrong Decca Sessions (1935-46), Disc 2',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:24',
  'Golden Eagle Jazz Band',
  'Goin'' Crazy with the Blues',
  'Young Woman''s Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:27',
  'Golden Eagle Jazz Band',
  'Good Old New York',
  'Young Woman''s Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:32',
  'Dick Cathcart''s Dixielanders',
  'I Want A Girl',
  'Dynamic Directional Dixieland',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:35',
  'Dick Cathcart''s Dixielanders',
  'Somebody Stole My Gal',
  'Dynamic Directional Dixieland',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:37',
  'Jelly Roll Morton And His Orchestra',
  'Pretty Lil',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 010',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2ReuvcuHUfb0hHhns0z0Xp',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:41',
  'Jelly Roll Morton And His Orchestra',
  'BurninÂ´ The Iceberg',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 010',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:44',
  'Lars Edegran',
  'South',
  'Triolian String Band',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:50',
  'Lars Edegran',
  'That Old Gang of Mine',
  'Triolian String Band',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:52',
  'Bix Beiderbecke',
  'In A Mist',
  'Volume I - Singing The Blues',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5Bk13n28rlG7GYCKDshsQM',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:55',
  'Bix Beiderbecke',
  'Clarinet Marmalade',
  'Volume I - Singing The Blues',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5H4bQ14RjOVM4eKtaIpn3B',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:00',
  'olympia brass band',
  'down by the riverside',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/6Erhozn8ac6VwaV9HHZ4Zn',
  'found',
  80.8,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:03',
  'george lewis',
  'Sing On',
  NULL,
  'ragtime, free jazz, boogie-woogie',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/4gdYqjNGZNBsS0HhiuH4SH',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:10',
  'Jellyroll Morton',
  'wildman blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:12',
  'Colossus brass band',
  'royal street parade',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:25',
  'paul barbarin',
  'paul barbarin second line',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:30',
  'Paul barbarin',
  'give it up',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:34',
  'Paul Barbarin',
  'We',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:39',
  'Paul Barbarin',
  'Dookys Doing His DAnce',
  NULL,
  'ragtime',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/68zbRMWcHU3nwiiNRMhzdw',
  'found',
  86,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:42',
  'Lucien BArbarin',
  'Ballin the Jacks',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:54',
  'papa french',
  'GO TO NEW ORLEANS',
  'Albert Papa French',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:59',
  'Geeorge French and Bob French',
  'NEW ORLEANS',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:00',
  'frog joseph',
  'lazarus trombone',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:09',
  'Louis Armstrong ane Duke Ellington',
  'I''m Just A lucky so and so',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:12',
  'Lillian Boutte',
  'Somethings Got A Hold Of Me',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:16',
  'David Lastie and A TAste Of New Orleans',
  'Make Me A Pallet On the Floor',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:26',
  'Allen Toussaint',
  'Bono',
  'The Wild Sounds of Allan Toussan',
  'cajun',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/7LKF3oRri1OqWfITsViAHI',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:27',
  'ChuckCarbo',
  'The Barbers Blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:28',
  'Alvin Shine Robinson',
  'Oh Red',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:32',
  'Dr John',
  'mama don''t allow',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:43',
  'George Porter',
  'Break in The Road',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:45',
  'June GArdner',
  '99 plus one',
  NULL,
  'northern soul',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/7yo5HJjQfG5BXy5LrC3BAs',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:48',
  'Johnny Adams',
  'never alone',
  NULL,
  'soul blues, blues',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/1GcJx48953NOkD4GBXN2F6',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:56',
  'Alvin Shine Robinson',
  'wake up and face the music',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:56',
  'DAVE BARTHOLEMEW',
  'SHRIMP AND GUMBO',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:06',
  'Ruben Gonzalez',
  'Cumbanchero',
  'Introducing ... Ruben Gonzalez',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/6pZYhibuXUulNR6SBDzb5a',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:09',
  'Ruben Gonzalez',
  'Mandinga',
  'Introducing ... Ruben Gonzalez',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3prslnZsGiNplP2ZB5QP3a',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:11',
  'Ruben Gonzalez',
  'Almendra',
  'Introducing ... Ruben Gonzalez',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1QeZkp17cGygfRmmedpWad',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:18',
  'Quinto Mayor',
  'Pa'' Gozar Contigo',
  'Salsa con Golpe',
  'salsa, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4Pt6EMPE8ZiU3xVhIVi7Al',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:19',
  'Quinto Mayor',
  'Catalina La O',
  'Salsa con Golpe',
  'salsa, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1SVJlXoSGDFQLaFtQtjtCC',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:21',
  'Quinto Mayor',
  'El Nazareno',
  'Salsa con Golpe',
  'salsa, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/7zeTQcmOxjNES9VoL0qOMX',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:33',
  'Orquesta La Moderna Tradicion',
  'Su Majestad el Danzon',
  'Danzonemos',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:34',
  'Orquesta Moderna Tradicion',
  'Cuerdas de Amor',
  'Danzonemos',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:36',
  'Orquesta La Mooderna Tradicion',
  'Circunstancia',
  'Danzonemos',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:52',
  'Richie Ray & Bobby Cruz',
  'Los Fariseos',
  'Un Sonido Bestial',
  'salsa',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1qkmMCJrI8J8ySZatTd7h6',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:55',
  'Richie Ray & Bobby Cruz',
  'Richie''s Jala Jala',
  'Un Sonido Bestial',
  'salsa',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4xIfAQygRlpW2OF4AKnNi8',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:57',
  'Richie Ray & Bobby Cruz',
  'Juan en La Ciudad',
  'Un Sonido Bestial',
  'salsa',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4pY88GD3ucG4pZbTSJfJKo',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:10',
  'Larry Harlow',
  'Yo Soy Latino',
  'Yo Soy Latino',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:11',
  'Larry Harlow',
  'Mango del Monte',
  'Yo Soy Latino',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:12',
  'Larry Harlow',
  'Yo Soy Asi',
  'Yo Soy Latino',
  'salsa, latin jazz, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/0CYpc8mPpVSXgw2ronvVQ1',
  'found',
  73,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:37',
  'Charlie D''Cali y su Salsa',
  'Baila Mi Piano',
  'Salsa Dance',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:39',
  'Sonora Carruseles',
  'Este es mi Son',
  'Salsa Dance',
  'salsa, merengue, mambo',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/2bS5OzRkjInNkC7lgtbGZs',
  'found',
  74.8,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:41',
  'Jimmy Bosch',
  'El Avion de La Salsa',
  'Salsa Dance',
  'latin jazz, salsa, mambo',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1lYXzZApPSpLv5qgn4Ysph',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:00',
  'Mamhy Claudia',
  'Na Langwe L''Amour',
  'L''imperatrice (the empress)',
  'zouk',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0LLQBz2SR0ftJhm015x9yY',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:05',
  'Les Etoiles du Zaire',
  'Zouke Zouke',
  'Sonodisc Congo Collection',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:13',
  'Tshala Muana',
  'Kalume',
  'Sonodisc Congo Collection',
  'rumba congolaise, ndombolo, coupé décalé',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3IYQoJ0TWqO9TeoiZAGKzs',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:19',
  'Tshala Muana',
  'Mbanda Matiere',
  'Tshala Muana',
  'rumba congolaise, ndombolo, coupé décalé',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1WxyyYaukt2Cb7rwI2wD7O',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:24',
  'Mav Cacherel feat Dally Komoko and Bongo Wende',
  'Bikeno Ba YaYa',
  'Mav Cacherel',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:29',
  'Mav Cacherel feat Dally Komoko and Bongo Wende',
  'Mayi Ya Moungwa',
  'Mav Cacherel',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:40',
  'Le Leuple',
  'Banque Ya Ba Soucis',
  'Le peuple',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:31',
  'Monique Seka',
  'Cafe Cacao',
  'Okiman',
  'zouk, rumba congolaise, ndombolo',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/05JaBEvFslkHHNjKPST3Td',
  'found',
  79.3,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:42',
  'Soukous Stars',
  'Tatina',
  'Gozando',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:50',
  'Meiway',
  'Aie bebou',
  'Melodie Afrique Parade',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:54',
  'Tabu Ley and Faya Tess',
  'Tien An Men',
  'Siegneur Tabu Ley',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:13',
  'Seprock',
  'Track 37',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:14',
  'Jonathan Richman and the Modern Lovers',
  'Egyptian Reggae',
  'Rock N Roll With',
  'proto-punk',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/27lIgIDPyApD9F6rC2gUaT',
  'found',
  81.7,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:15',
  'Exuma',
  'Fame Is The Name Of The Game',
  'Universal',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:18',
  'Rickie Clark Company',
  'Time To Throw Down',
  NULL,
  'soul jazz',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/0A4PStLLHevmpO1GyArEXL',
  'found',
  87.1,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:19',
  'Mos Def',
  'Umi Says',
  NULL,
  'east coast hip hop, old school hip hop, hip hop',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/5Ru9OjtEw5htfnVKpYsIcv',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:24',
  'Ojeda Penn',
  'Happiness Is Having You Near',
  'Happiness',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:30',
  'Stanley Cowell',
  'Here I Am',
  'Talkin Bout Love',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:40',
  'Les McCann',
  'The Harlem Buck Dance Strut',
  'Layers',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:42',
  'Archie Shepp',
  'Back Back',
  'Kwanza',
  'free jazz, jazz, avant-garde',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/0XNcHHeBqmrqyaIdCw6DZ8',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:53',
  'Gil Scott-Heron and Brian Jackson',
  'A Lovely Day',
  'From South Africa To South Carolina',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:54',
  'Bo Diddley',
  'Pollution',
  'Another Dimension',
  'blues, classic blues, rock and roll',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6gZDY2QjNDZPQxXkdaU9I8',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:56',
  'Little Milton',
  'Don''t Turn Away',
  'Friend Of Mine',
  'blues, soul blues, classic blues',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/1mqroFpFdZACr3DqELoI8C',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:05',
  'The Pyramids',
  'Indigo',
  'Lalibela',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:21',
  'Sir Victor Uwaifo',
  'Ekassa 34',
  'Talk Of The Town Ekassa Vol 2',
  'highlife, afrobeat, fújì',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6GwxJqoXvBelEWSQ8eMHuU',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:32',
  'Coryell',
  'Morning Sickness',
  's/t',
  'jazz fusion, smooth jazz, jazz',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6YDFh7faxYD9WmJtiDaAfN',
  'found',
  74.5,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:40',
  'Cymande',
  'Dove',
  's/t',
  'funk, afrobeat',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/4xnyBIfiVgT7ZjrHGdrHtw',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:51',
  'Jimi Hendrix',
  'Somewhere Over The Rainbow',
  'Crash Landing',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:53',
  'Sly and the Family Stone',
  'Dance To The Medley',
  'Dance To The Music',
  'funk, motown, classic soul',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/3CVrWjBV6NtYFyQ93BOVjA',
  'found',
  88.5,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:59',
  'Ike & Tina Turner',
  'Bold Soul Sister',
  'Bold Soul Sister: The Best of th',
  'motown, northern soul',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6g2RtR71Qj12dKQIwPpFJc',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:02',
  'Fred Wesley & The J.B.''s',
  'Same Beat Pts. 1, 2 & 3',
  '45 single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:10',
  'Fatback Band',
  'All Day',
  'Raising Hell',
  'funk, post-disco, jazz funk',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5ExF7rCGsIqzfR50vJlyjz',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:15',
  'Brief Encounter',
  'We Want to Play for You',
  'We Want to Play',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:19',
  'Jean Carn',
  'We Got Some Catchin'' Up to Do',
  'Sweet and Wonderful',
  'philly soul, post-disco, classic soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/1SA5Nrwu1mAf4b2xeDuZ6k',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:24',
  'Loleatta Holloway',
  'All About the Paper',
  'Loleatta Holloway',
  'philly soul, disco, chicago house',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/7IN51r8swM1RAAHRaVireJ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:30',
  'Syl Johnson',
  'Ms. Fine Brown Frame',
  'Ms. Fine Brown Frame',
  'soul, soul blues, northern soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/2RIGZwkq06ulhOyZBYRSYX',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:36',
  'Enchantment',
  'Dance to the Music',
  'Enchantment',
  'quiet storm, classic soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/3jGQ6lhHte4v3hjKUqRLXJ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:40',
  'Kay-Gee''s',
  'Good Feel',
  'Kilowatt',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:46',
  'Cameo',
  'I Like It',
  'Knights of the Sound Table',
  'funk',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5dWh3XErsEExZC5mFSxDnZ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:50',
  'Parliament',
  'Funkentelechy',
  'Funkentelechy vs the Placebo Syndrome',
  'funk, funk rock',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5uQ9lDKORWOuaXkiYQ1AtC',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:05',
  'Michael Henderson',
  'Riding',
  'Do it All',
  'post-disco, quiet storm',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/0HodbMp1sIBY0HTG0gBSK7',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:10',
  'Sun',
  'Dance (Do What You Wanna Do)',
  'Sunburn',
  '',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/0WxWZ0H9y6RIUToRkE5xYQ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:16',
  'Freedom',
  'Get Up and Dance',
  '12 inch single',
  'post-disco',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5jHoV1o7W5GhUGWV19dDlo',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:23',
  'Wood, Brass & Steel',
  'Funkanova',
  'Wood, Brass & Steel',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:28',
  'Platypus',
  'Street Babies',
  '12 inch single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:35',
  'Willie Hutch',
  'Soul Strut',
  'Havin a House Party',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:39',
  'Faze-O',
  'Good Thang',
  'Good Thang',
  '',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5ZC1fRFFI9ENQYaXShYBmI',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:48',
  'James Brown',
  'You Can''t Keep a Good Man Down',
  'Bring it On',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:53',
  'Hugh Masekela & Company',
  'Ashiko',
  'Live in Lesotho',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);