-- WWOZ Database Export
-- Generated: 2026-02-19T08:00:35.904Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-19 07:59:40
-- Days: 4
-- Tracks: 392

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-16',
  'https://open.spotify.com/playlist/4rKoWqLrfcYvLV1mTam8S2',
  '{"totalTracks":137,"successfullyFound":84,"notFound":53,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-16 07:05:51',
  '2026-02-19 08:00:34'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-17',
  'https://open.spotify.com/playlist/1nknFfvGcMmzTdKkhhxN1H',
  '{"totalTracks":96,"successfullyFound":56,"notFound":40,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-17 10:30:06',
  '2026-02-19 08:00:34'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-18',
  'https://open.spotify.com/playlist/1Y5JIHB4AyHrjRVRdLRdP0',
  '{"totalTracks":137,"successfullyFound":89,"notFound":48,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-19 07:59:39',
  '2026-02-19 08:00:34'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-19',
  NULL,
  '{"totalTracks":16,"successfullyFound":6,"notFound":10,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-19 07:59:39',
  '2026-02-19 08:00:34'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-16';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '00:01',
  'Al Johnson',
  'Carnival Time',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '00:02',
  'The Meters',
  'Mardi Gras Mambo',
  'Fire On The Bayou',
  'funk, soul, jazz funk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3KfmYf7PTtFNYFNNhsdLZt',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '00:04',
  'Dixie Cups',
  'Iko Iko',
  'VA Mardi Gras in New Orleans, Vol II',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/21x7g5Nd6bsjmelDUlZ6Mv',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '05:55',
  'James Booker',
  'Junco Partner',
  'Rhapsody In Blue',
  'boogie-woogie, cajun, ragtime',
  'Overnight Music - Monday',
  NULL,
  'https://open.spotify.com/track/6h42FqekL3vp5Hm3zbuSVK',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:05',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans [Mardi',
  'cajun, zydeco, classic blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:08',
  'Wild Tchoupitoulas',
  'Hey Hey (Indians Comin`)',
  'Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4R0nZY6w8JVWUjzKCZ8TMm',
  'found',
  84.7,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:12',
  'Anna Quinn',
  'Forget Regret + I Thank You',
  'The Unmentionables EP',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:13',
  'Margie Perez and The King Cake B',
  'Mardi Gras Carnival',
  'Mardi Gras Carnival',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:19',
  'Meters',
  'People Say (Single Version)',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2fkmrMW5eV3VvHeUicem25',
  'found',
  73.9,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:22',
  'John Papa Gros',
  'Yes We Can',
  'Giants',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:31',
  'Harry Connick Jr.',
  'Mardi Gras In New Orleans',
  'Chanson Du Vieux Carre',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/14era6xqyLlqPC72zLqYTg',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:38',
  'Harry Connikc Jr',
  'Trouble',
  'She',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:41',
  'Ajeanette',
  'Come On Down To New Orleans',
  'Come On Down To New Orleans',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:44',
  'Robin Barnes',
  'Hey Na',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:47',
  'Dr. John',
  'Big Bass Drum (On A Mardi Gras D',
  'On A Mardi Gras Day',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:55',
  'Cha Wa',
  'Hey Baby',
  'Spyboy',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0wDdVQbY1mKW6EX1Pnjr1J',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '11:56',
  'Doreen Ketchens',
  'Mardi Gras Iko',
  'Doreen`s Jazz New Orleans Vol. V',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:08',
  'Colossus Brass Band',
  'Go ''Head, Fred!',
  'Sing On',
  'brass band',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/35pvI86gL1sSh7BEHXFCHz',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:14',
  'Johnette Downing',
  'Who Got da Baby in the King Cake',
  'Swamp Romp',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:19',
  'Jon Cleary',
  'Zulu Coconuts',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:24',
  'Big Chief Monk Boudreauxn, Spyboy Jwan Boudreaux & The Golden ea',
  'Mardi Gras Morning',
  'Slip Don''t Fall',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:32',
  'Red Hot Brass Band',
  'Go To The Mardi Gras',
  'Hot Off The Press',
  'brass band',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4i66nbKrkrQARH8RPCouHe',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:36',
  'Wild Magnolias',
  'New Suit',
  'They Call Us Wild',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/48gaRnJBOc3xNp7UoV7cOX',
  'found',
  82.1,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:41',
  'The Radiators',
  'Deep In My Voodoo',
  'The Radiators',
  'jam band, cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/72yeyY4kKVapem7lWPXoMq',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:46',
  'Camille Baudoin',
  'Ain''t Ready For It',
  'Mardi Gras Extra',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:49',
  'Trombone Shorty',
  'Gettin'' Ready For The Mardi Gras',
  'Orleans & Claiborne',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:52',
  'Trumpet Black',
  'Street Parade',
  'The New Beginning',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '12:58',
  'Schatzy',
  'Every Day Is Mardi Gras',
  'Macaroni and Bees',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4IlLbR8eBdJRUnkENDXtRb',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:09',
  'Down',
  'Right Place, Wrong Time',
  'Right Place, Wrong Time',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:12',
  'Lil Rascals Brass Band',
  'Knock With Me-Rock With Me',
  'Buck It Like A Horse',
  'brass band, new orleans bounce, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/05Dx432oTmHFfAqDSqdDbY',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:20',
  'Rebirth Brass Band',
  'Do Whatcha Wanna',
  'Ultimate',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5UqzRN9qi2oxmKWff9oIRC',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:29',
  'Shamarr Allen',
  'Dance With Me',
  'SINGLE',
  'brass band, cajun, new orleans bounce',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4Gv57iJK8tmMkDbbeyIMEa',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:36',
  'Big Chief Romeo Bougere, Dawn Ri',
  'I''m Feeling Good (Vocal)',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:40',
  '79rs Gang',
  'Bout To Blow (w Vela Vada)',
  'Expect The Unexpected',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:43',
  'Ivan Neville',
  'This Must Be The Place',
  'Touch My Soul',
  'jam band, soul blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0recPimKvrGzvi3Fr6x1fj',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:45',
  'Big Freedia',
  'Celebration',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/723J8TT1MrywSg66aIqZio',
  'found',
  73.5,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:48',
  'Original Pin Stripe Brass Band',
  'Dancin` At The Mardi Gras',
  'I Wanna Go Back To New Orleans',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '13:56',
  'Coolbone Brass Band',
  'Mardi Gras In New Orleans',
  'Brothers In Swing',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/56dClQBELtjR6Bbzr5wqr8',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:05',
  'Professor Longhair',
  'Big Chief',
  'Big Chief',
  'cajun, zydeco, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3ipsm3j6cWBCELjv9GhAlR',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:05',
  'THE WILD MAGNOLIAS',
  'NEW SUIT',
  'THEY CALL US WILD',
  'cajun, zydeco, brass band',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/48gaRnJBOc3xNp7UoV7cOX',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:09',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:12',
  'Baby Dodds Trio feat. Danny Barker',
  'Tootie Ma Is A Big Fine Thing',
  'Jazz A''La Creole',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:14',
  'bo dollis, monk boudreaux, and the REBIRTH BRASS BAND',
  'LET''S GO GET ''EM',
  'bury the hatchet',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:23',
  'spirit of fi yi yi & the mandingo warriors',
  'healing process',
  NULL,
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1xYxD2TkyNBybJTlR8bVCL',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:26',
  'EB SKIPPER & SHOTGUN JOE REVUE',
  'SHOTGUN JOE',
  'SHOTGUN JOE REVUE 2000',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:32',
  'Kermit Ruffins',
  'Do the Fat Tuesday',
  'SINGLE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:37',
  'dave bartholomew',
  'carnival day',
  'THE 50S SINGLES',
  'cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6JHF4NG2PeyzL7AFa4VOID',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:39',
  'huey piano smith',
  'don''t you just know it',
  'THE COSIMO MATASA STORY',
  'boogie-woogie, doo-wop',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2JnmWxBSfe7YaOrGxOMjD2',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:43',
  'The Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Right)',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:54',
  'YA! YOUNG AUDIENCES RAPS',
  'Mardi Gras',
  'YA! YOUNG AUDIENCES RAPS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '14:57',
  '79ERS GANG',
  '79ERS BOUT TO BLOW',
  'EXPECT THE UNEXPECTED',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:06',
  'LOS HOMBRES CALIENTES',
  'New Second Line',
  'SINGLE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:12',
  'CHAMPION JACK DUPREE',
  'YELLA POCAHONTAS',
  'BURY THE HATCHET',
  'classic blues, blues, boogie-woogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0zjRHNKTTUOpKl46EQ9C32',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:16',
  'James and Troy Andrews',
  '(Talkin'' About The) Zulu King',
  '12 & Shorty',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:23',
  'SUGARBOY CRAWFORD',
  'JOCK A MO',
  'THE CHESS BLUES SONGBOOK',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:26',
  'Dr John',
  'Iko Iko',
  'GUMBO',
  'cajun, zydeco',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1vhlVbHnbKJPD7pqCC0cE7',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:30',
  'Wild Tchoupitoulas',
  'BROTHER JOHN',
  'WILD TCHOUPITOULAS',
  'cajun, zydeco, brass band',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0RYad80nMcq0XY9xHO6FBq',
  'found',
  84.7,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:36',
  'The Band',
  'Life Is A Carnival',
  'cahoots',
  'folk rock, roots rock, southern rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5DIpRdhi9OZv3VnCg0EWVK',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:40',
  'The Wild Magnolias',
  'Two Way Pak e Way',
  'OUTTAKES AND LIVE 1973-74',
  'cajun, zydeco, brass band',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2IBkpOi1Oou2zSXWbkJmge',
  'found',
  98,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:47',
  'Bobby MG And The Creeps',
  'Mardi Gras Creep (SINGLE)',
  NULL,
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:52',
  'Big Sam',
  'Mardi Gras in New Orleans',
  'SINGLE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '15:57',
  'Allen Toussaint',
  'We The People',
  NULL,
  'cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0nYip8A2BmutrnMvNdMfeg',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:03',
  'Fats',
  'Im Walkin',
  'Million sellers',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:03',
  'Galactic',
  'Its carnival time',
  'Carnivale',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:06',
  'Wingy Malone',
  'Goody Goody',
  'comp',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:09',
  'Shirley & Lee',
  'Let The Good Times Roll',
  'Big Ol'' Box Of New Orleans [Disc 3]',
  'doo-wop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2F9rEI6woMPDLlBg3ZkiS4',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:12',
  'kermit ruffins and rebirth brass band',
  'Its Later Than You Think',
  'Throwback',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:17',
  'Joe Liggins & His Honeydrippers',
  'Goin'' Back To New Orleans',
  'The Chronological Joe Liggins 1948-1950',
  'swing music, boogie-woogie',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1XLyJykFFZKQUNKD1FJiPe',
  'found',
  81.1,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:21',
  'Warren Lee',
  'Star Revue',
  'Allen Toussaint - Saint Of New Orleans',
  'northern soul',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2qix7XXcExsu0BwZghMAtH',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:24',
  'Henry Butler',
  'Some Iko',
  'Mardi Gras 2008 Basin Street Sampler',
  'cajun, zydeco, blues',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1uNlKv4BLBohKl5TXdOJWJ',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:29',
  'Big Freedia',
  '$100 Bill (feat. Ciara)',
  '2023 single',
  'new orleans bounce, bounce, ballroom vogue',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4SqCnKpBBNmGbhDQHV8s1h',
  'found',
  84.2,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:32',
  'Dr. John',
  'Back By The River',
  'Mos'' Scocious: The Dr. John Anthology [Disc 2]',
  'cajun, zydeco',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/63RwNfb8twoOhH5w4lasjv',
  'found',
  93.5,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:38',
  'Toots ANd The Maytals',
  'Got To Be There',
  'Funky Kingston',
  'reggae, rocksteady, ska',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1fofuJN2TDl2kqIRAUbywC',
  'found',
  86.5,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:41',
  'Treme Brass Band',
  'Grazing In The Grass',
  'New Orleans Music!',
  'brass band, cajun, zydeco',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/67yKiRDxMbVYEWmJHL5o8s',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:46',
  'Treme Brass Band',
  'Grazin In The Grass',
  'New Orleans Music',
  'brass band, cajun, zydeco',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/67yKiRDxMbVYEWmJHL5o8s',
  'found',
  88.8,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:47',
  'Wild Tchop',
  'jock-a-mo',
  'New Orlens 77 Tipitinas',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:52',
  'Kermit Ruffins With The Rebirth Brass Band',
  'All On A Mardi Gras Day',
  'Mardi Gras 2008 Basin Street Sampler',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:56',
  'Buckwheat Zydeco',
  'Zydeco la Louisannne',
  'New Orleans Mix From Claire',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '16:56',
  'Wilbur De Paris and his New Orleans Jazz',
  'Marchin and Swingin',
  'Wilbur De Paris and his New Orleans Jazz',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:05',
  'Paul McCartney',
  'My Carnival',
  'Venus And Mars Extended',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:09',
  'Baby Dodds Trio',
  'Chocko Me Feendo Hey',
  NULL,
  'ragtime',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6QE7ArLBZCgfBu7uSZJSH1',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:15',
  'Bayou Renegade Indians',
  'Mardi Gras Time',
  'New Orleans Second Line Mardi Gras Party 2008',
  'cajun, zydeco, brass band',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4YZbrlP49dmg8mp0tnnD7m',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:21',
  'ST. PETERSBURG SKA-JAZZ REVIEW',
  'Policy of Truth',
  NULL,
  'ska, rocksteady',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4sI9Gv3Mi2Yw3XLC10vUS3',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:30',
  'Flaming Arrows',
  'Sew Sew Sew',
  NULL,
  'brass band, cajun, zydeco',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/51bIEIvIeVVH2kvDYwLjvo',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:33',
  'Galactic',
  '03. Tchompitoulas feat. Eric Gordon',
  'Tchompitoulas EP',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:34',
  'Fats Domino',
  'Mardi Gras In New Orleans',
  'They Call Me The Fat Man: The Legendary Imperial Recordings [Dis',
  'rock and roll, doo-wop, rockabilly',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5H3qo1FT7xx4bObjjZqDPL',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:35',
  'Jon Cleary & The Absolute Monster Gentlemen',
  'Zulu Strut',
  'Mardi Gras 2008 Basin Street Sampler',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:41',
  'Mighty Sparrow',
  'How You Jammin So',
  'Sparrow vs the rest',
  'calypso, soca, parang',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/56LcrSqtej2RTJN3zRjbGU',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:45',
  'Donald Harrison feat DR. JOHN',
  'BIG CHIEF',
  'Indian Blues',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '17:49',
  'DONALD HARRISON, JR.',
  'HU TA Nay',
  'INDIAN BLUES',
  'brass band, cajun, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1KEPPeYcTFwOOrhU0bwKZu',
  'found',
  82.7,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:02',
  'Shannon Powell',
  'Shannon Powell at the The George and Joyce Wein Jazz & Heritage',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:12',
  'The Meters',
  'Here Comes The Meter Man',
  'Funkify Your Life: The Meters Anthology [Disc 1]',
  'funk, soul, jazz funk',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1mvsBRtgjW7sxKRNguQtz4',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:15',
  'The Meters',
  'Cardova',
  'The Meters',
  'funk, soul, jazz funk',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0h2xiysQLgkfu6S8U5tBkN',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:21',
  'Irma Thomas',
  'Never Gonna Stop New Orleans EQ2',
  'The Big Uneasy Soundtrack',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:28',
  'Big Chief''s Mardi Gras Party',
  'Mardi Gras Mambo acapella',
  'Big Chief''s Mardi Gras Party',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:28',
  'The Band',
  'Life Is A Carnival Live',
  'The Last Waltz',
  'folk rock, roots rock, southern rock',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2Cka97c0vvkMQTJadQqqNv',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:32',
  'Professor Longhair',
  'Cuttin Out',
  'Comp',
  'cajun, zydeco, classic blues',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/59nbbvSwhHUOC1VcRyBT0N',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:38',
  'Captain Beefheart & The Magic Band',
  'Click Clack V2',
  'The Spotlight Kid',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:41',
  'The Soul Rebels',
  'Blow The Horns (CLEAN)',
  'Poetry In Motion',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:47',
  'Tabou Combo',
  'Yo Gaye',
  'Aux Antelles',
  'kompa, zouk',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6VlUiHnCsfPUUwC1mq3XoG',
  'found',
  80.5,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '18:55',
  'Joe Krown',
  'Big Chief / Mess Around',
  'Just the Piano...Just the Blues 1997',
  'zydeco',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1Ef8kuYOywj1yIICDxfrI3',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:04',
  'Gypsyphonic Disko',
  'New Suit Phonic',
  'Gypsyphonic Mardi Gras Mixtape',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:08',
  'Gypsyphonic Disko',
  'They All Asked 4U Phonic',
  'Gypsyphonic Mardi Gras Mixtape',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:10',
  'Cheikh Lo, Les Nubians & Manu Dibango',
  'Shakara / Lady, Pt. 2 (feat. Chateau Flight)',
  'Red Hot + Riot',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:16',
  'Ebo Taylor & The Pelikans',
  'If You Care',
  'Ebo Taylor and The Pelikans',
  'highlife, afrobeat, afropop',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4JCjGVuCYNfUgYFbCDTueQ',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:22',
  'Too Many Zooz',
  'Brasshouse Vol. 7',
  'Subway Gawdz',
  'brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1EY165ZgmhMzAJ7xk6JZHN',
  'found',
  86.4,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:25',
  'Zap Mama',
  'Getaway',
  'Eclectic Breath',
  'afropop, neo soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/49dZ3vEncoYkmDzxrx5iDq',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:30',
  'Luscious Jackson',
  'Energy Sucker',
  'Natural Ingredients',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5bsGxu0Qx3VYDPb2YVtLdb',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:34',
  'Grace Jones',
  'Feel Up',
  'Nightclubbing',
  'art pop',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5mZAIkOc7gvRX0ycrzRZBX',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:36',
  'Luscious Jackson',
  'Pele Merengue',
  'Natural Ingredients',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7Hf2XAx7HZKA4JJ8ByAgXz',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:39',
  'Talking Heads',
  'Road to Nowhere',
  'Little Creatures',
  'new wave, post-punk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5gS8whHdcpbkdz0qonQZF8',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:42',
  'The Wild Tchoupitoulas',
  'Indian Red',
  'The Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5lAA2A2nEUCYYWfKCJhvGP',
  'found',
  98,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:50',
  'Flagboy Giz',
  'Gentri Fire in the City',
  'Flagboy of the Nation',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:53',
  'big chief monk boudreaux',
  'monk''s mardi gras',
  'Won''t Bow Down',
  'cajun, zydeco, brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3ts8VLXkDDZhjXYTSOKB0J',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '19:57',
  'Cha Wa',
  'Ooh Na Nay',
  'Funk N'' Feathers',
  'brass band, cajun',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6pTSr40iRZoh1BO9AzjXo7',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:01',
  'Big Audio Dynamite II',
  'Rush',
  'The Globe',
  'new wave, alternative dance',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4gTMIyJJlSuB5BOhbMri6B',
  'found',
  89.5,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:07',
  'Dead Prez, Jorge Ben Jor, Talib Kweli, Bilal & Positive Force',
  'Shuffering & Shmiling',
  'Red Hot + Riot',
  'east coast hip hop, old school hip hop, hardcore hip hop',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6IFChwuAxR3aMooPADcN7L',
  'found',
  98,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:10',
  'Los Hombres Calientes: Irvin Mayfield & Bill Summers',
  'New Second Line',
  'Basin Street Records Mardi Gras 2005',
  'latin jazz, brass band, cajun',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1kau4mcPkmY7dBFaNEsKux',
  'found',
  79.4,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:16',
  'James Booker',
  'Papa Was A Rascal',
  'Live At Monterux - The James Boo',
  'boogie-woogie, cajun, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0bFM5oCeze31HiJPbA4BoJ',
  'found',
  84.3,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:19',
  'Meters',
  'Tippi-Toes',
  'Funkify Your Life- The Meters An',
  'funk, soul, jazz funk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4IC87geBnjbgduIfAz5xbd',
  'found',
  73.9,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:22',
  'Bobby Charles',
  'The Mardi Gras Song (edit)',
  'Homemade Songs',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:27',
  'Curtis Mayfield',
  'Move On Up (Extended Version)',
  'The Very Best of Curtis Mayfield',
  'classic soul, soul, funk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/01gDLZsi0j5fWC28FLPNO8',
  'found',
  98,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:36',
  'Gypsyphonic Disko',
  'Iko Phonic',
  'Gypsyphonic Mardi Gras Mixtape',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:38',
  'The Dixie Cups',
  'Iko Iko',
  'Chapel of Love',
  'doo-wop',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0hc44Di7G79vgVhwEwgZbJ',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:43',
  'james andrews, Dr. John, Donald Harrison',
  'zulu king',
  'James Andrews & Trombone Shorty',
  'brass band, cajun, zydeco',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6qAU4NkGPWzgOTJmgcsI4q',
  'found',
  75,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:46',
  'JDawg',
  'Rolling in the Deep (Bounce Mix)',
  'Definition of Bounce Sound Track',
  'new orleans bounce, bounce, baltimore club',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3GZIuS8yclkM3d2VXWuVz4',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '20:57',
  'Wild Tchoupitoulas feat. Neville Bros',
  'Meet da Boys at the Battlefront',
  'Wild Tchoupitoulas feat. The Neville Brothers New Orleans ''77',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:00',
  'Wild Tchoupitoulas featuring The Neville Brothers',
  'Here Dey Come',
  'The Wild Tchoupitoulas featuring The Neville Brothers',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:05',
  '79rs Gang',
  '79rs Bout to Blow',
  'Expect the Unexpected',
  'brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7x36IqgZgNSpHJ5cINswBn',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:10',
  '79rs Gang',
  'Culture Vulture',
  'Expect the Unexpected',
  'brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7o0m4nI7c4q6dEAYEn43vv',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:12',
  '79RS GANG',
  'BRAND NEW DAY',
  'Expect the Unexpected',
  'brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1HTNRS4MsuuOyGxo9xjChv',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:18',
  'Cymande',
  'The Message',
  'Cymande',
  'funk, afrobeat',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2bGrfkV1IYY0nUUJO53xtG',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:26',
  'Willie Dixon',
  'I Can''t Quit You Baby',
  'I Am the Blues',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2PcbVKT28p9mOlWBDL371J',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:29',
  'Lee Dorsey',
  'give it up',
  'The New Lee Dorsey',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4dUOAFN1Yk2TuslROwZcdX',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:34',
  'rebirth brass band',
  'cassanova',
  'ultimate street parade:New Orleans',
  'brass band, zydeco, new orleans bounce',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6ejv6MUEHrh0WetjCuB4K1',
  'found',
  100,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:44',
  'Original Pinettes Brass Band',
  'Mardi Gras in New Orleans',
  'Finally',
  'brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7hSPvTeI58xKi7KjVFcJil',
  'found',
  90.4,
  '2026-02-17 07:22:32'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '21:51',
  'Cha Wa',
  'Geechie Boom Boom',
  'Spy Boy',
  'brass band, cajun',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0sVSAf7WgUpAxQtxqfp2md',
  'found',
  100,
  '2026-02-17 07:22:32'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-17';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '03:29',
  'Golden Eagles',
  'SHOO FLY',
  'Lightning and Thunder',
  '',
  'Overnight Music - Tuesday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-17 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '03:32',
  'Indians of the Nation',
  'Mardi Gras Day',
  'United We Stand/Divided We Fall',
  '',
  'Overnight Music - Tuesday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-17 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '03:47',
  'The Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Right)',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  100,
  '2026-02-17 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '03:47',
  'The Wild Magnolias',
  'Two Way Pak e Way',
  'OUTTAKES AND LIVE 1973-74',
  'cajun, zydeco, brass band',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/2IBkpOi1Oou2zSXWbkJmge',
  'found',
  98,
  '2026-02-17 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '03:53',
  'dave bartholomew',
  'carnival day',
  'THE 50S SINGLES',
  'cajun',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/6JHF4NG2PeyzL7AFa4VOID',
  'found',
  100,
  '2026-02-17 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:01',
  'The Jones and Taylor Experience',
  'Mardi Gras, Down In New Orleans, Its Carnival (Mardi Gras Rap)',
  'Single',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:07',
  'Big Chief Monk Boudreux and the Golden Eagles',
  'Indian Red',
  'Live At The H & R Bar',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:12',
  'THE WILD MAGNOLIAS',
  'NEW SUIT',
  'THEY CALL US WILD',
  'cajun, zydeco, brass band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/48gaRnJBOc3xNp7UoV7cOX',
  'found',
  100,
  '2026-02-18 07:36:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:17',
  'Monogram Hunters',
  'Ooh Nah Nay',
  'Blood, Sweat and Tears',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/77hSzkA8ypU30kGcIAjP0z',
  'found',
  100,
  '2026-02-18 07:36:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:20',
  'Golden Eagles',
  'Shallow Water, Oh Mama',
  'Lightning and Thunder',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:29',
  '79rs Gang',
  '79rs Bout to Blow',
  'Expect the Unexpected',
  'brass band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7x36IqgZgNSpHJ5cINswBn',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:40',
  'Professor Longhair',
  'Big Chief',
  'Fess at Home',
  'cajun, zydeco, classic blues',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4m81OxfastAUtWN6wZpI7M',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:40',
  'Quintron, Miss Pussycat',
  'Ring The Alarm',
  'Sucre Du Sauvage',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:42',
  '79rs gang',
  'drama',
  NULL,
  'brass band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6BF1FcKDZu35Vys6beKuJu',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:47',
  'Wild Tchoupitoulas',
  'Meet da Boys at the Battlefront',
  'Wild Tchoupitoulas',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '06:51',
  'Bobby Mardi Gras and the Qreeps',
  'Mardi Gras Creep',
  'Don''t Be A Mardi Gras Creep!',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '07:01',
  'Feufollet',
  'Baby''s on Fire',
  'Prends Courage',
  'cajun, zydeco',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3gMOuky0mjkPToiickhRHm',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '07:42',
  'Rebirth Brass Band',
  'Do Whatcha Wanna',
  '25th Anniversary',
  'brass band, zydeco, new orleans bounce',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5UqzRN9qi2oxmKWff9oIRC',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '07:42',
  'THE WILD MAGNOLIAS',
  'HANDA WANDA',
  NULL,
  'cajun, zydeco, brass band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2dq0Tb2mJLTxJKg0Q49CBu',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '07:43',
  'Al Johnson',
  'Carnival Time',
  'Single',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:03',
  'Dixie Cups',
  'Iko Iko',
  'VA Mardi Gras in New Orleans, Vol II',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/21x7g5Nd6bsjmelDUlZ6Mv',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:05',
  'Allen Tousaint',
  'Mr Mardi Gras',
  'Mr Mardi Gras - Love a Carnival Ball',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:09',
  'Lakou Mizik, 79rs Gang',
  'IKO KREYOL (79rs Version)',
  'Iko Kreyol',
  'afro house, tribal house, brass band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0S0HXPoyyZnhAcJbxsnBDM',
  'found',
  82.4,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:14',
  'Henrietta',
  'Throw Me Something, Mister!',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7tLbkB2d7B4aakjile5n4l',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:16',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:20',
  'Louis Prima',
  'Basin Street Blues',
  'the Wildest!',
  'swing music, big band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7GLLjdVKP3zCsZvqFdl0Vc',
  'found',
  75,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:25',
  'Keith Frank, Lil Boosie',
  'Haterz',
  'Haterz',
  'zydeco, cajun',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/28Wqhzvb0cNm1BaMStzKXw',
  'found',
  73.9,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:35',
  'Big Freedia',
  'Explode',
  NULL,
  'new orleans bounce, bounce, ballroom vogue',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7CMfPwodyj6K2Envg1qxWa',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:37',
  'Sarah Quintana, Leyla McCalla, Louis Michot',
  'Laisse le bon temp rouler',
  NULL,
  'cajun, zydeco',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7knKvPZnfGVmSotZJ79ZkQ',
  'found',
  90.7,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:39',
  'The Hawkettes',
  'Mardi Gras Mambo',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:42',
  'Voices of a Nation',
  'Let''s Go Get Em',
  'Voices of a Nation',
  'brass band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2s8p9OYJXdfxd4ezZdWu0h',
  'found',
  77.2,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '08:45',
  'BUCKWHEAT ZYDECO',
  'HOT TAMALE BABY',
  'ON A NIGHT LIKE THIS',
  'zydeco, cajun',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6weNMs1Lms9cUz3xqan0mu',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:06',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:10',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:14',
  '101 Runners',
  'Sew Sew Sew',
  'New Orleans Funk 101',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:28',
  'Steve Conn',
  'Mardi Gras Morning',
  'SINGLE',
  'zydeco, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0lMW1wERB9bx2KvymdZl6R',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:33',
  'Anders Osborne',
  'Meet The Boyz On The Battlefront',
  'Bury The Hatchet',
  'modern blues, jam band, blues rock',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3smcXyZUC6IuGjsrCCWcto',
  'found',
  73.5,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:38',
  'Bo Dollis & The Wild Magnolias',
  '(Big Chief Like Plenty of) Fire',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:41',
  'Wild Magnolias',
  '(My Big Chief Has A) Golden Crow',
  'The Wild Magnolias',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:48',
  'Magnificent Seventh`s Brass Band',
  'Down By The Riverside',
  'Authentic New Orleans Jazz Funer',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '09:59',
  'Dr. John',
  'Big Bass Drum (On A Mardi Gras D',
  'On A Mardi Gras Day',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:05',
  'Pete Fountain',
  'I`ve Found A New Baby',
  'Do You Know What It Means To Mis',
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3h41mgBsrb9nd3IwmTeINR',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:09',
  'Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Ri',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  72.5,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:18',
  'Meters',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  'funk, soul, jazz funk',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3KfmYf7PTtFNYFNNhsdLZt',
  'found',
  73.9,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:22',
  'Radiators',
  'Let`s Radiate',
  'Snafu 10-31-`91',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:28',
  'Rumble',
  'New Suit',
  'Live At The Maple Leaf',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:36',
  'Kermit Ruffins',
  'Happy Birthday',
  'World On A String',
  'brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2wb3E4RNj4W7eq4p242uVw',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:43',
  'Olympia Brass Band',
  'As We Danced At Mardi Gras',
  'New Orleans Mardi Gras',
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/5sFEBaxj9rnQNbiIuLAjkI',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:52',
  'Serabee',
  'The Greatest Party Of All',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1r7ag4sDWm3a8z0dzWFc4K',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '10:56',
  'Little Queenie',
  'If Ever I Cease To Love',
  'Purple Heart',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/42X7UAxXvRPg8JigOwrmYh',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '11:26',
  'Irma Thomas w Cyril,George,Ivan',
  'Carnival Time',
  'Take Me To The River:New Orleans',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '11:34',
  'Dr. John',
  'My Indian Red',
  'Goin` Back To New Orleans',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1W1k05Mz0NZuuRh6OltsCH',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '12:10',
  'Rumble',
  'My People',
  'Live At The Maple Leaf',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '12:24',
  'Corey Henry & The Treme Funkte',
  'Slip Into Darkness/HeyPockeyWa',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '12:36',
  'Hot 8 Brass Band',
  'We Are One',
  'Rock With The Hot 8',
  'brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0i0RRGHGL0XPx4kyoD5QRc',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '12:50',
  'Cyril Neville And The Uptown All',
  'Big Chief Jolly',
  'For The Funk Of It',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '13:04',
  'Galactic Feat. Big Chief Juan',
  'Ha Di Ka',
  'Carnivale Electricos',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '13:15',
  'Original Pinettes Brass Band',
  'Mardi Gras in New Orleans',
  'Finally',
  'brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7hSPvTeI58xKi7KjVFcJil',
  'found',
  90.4,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '13:38',
  'Jon Cleary',
  'Zulu Coconuts',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '13:56',
  'Trumpet Black',
  'Trumpet Not Guns',
  'The New Beginning',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:20',
  'DR. JOHN',
  'ON A MARDI GRAS DAY',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:34',
  'WILD MAGNOLIAS',
  'TWO WAY PAK E WAY',
  'THE WILD MAGNOLIAS OUTAKES 1973-1974',
  'cajun, zydeco, brass band',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2IBkpOi1Oou2zSXWbkJmge',
  'found',
  80.5,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:35',
  'WILD MAGNOLIAS',
  'ON A MARDI GRAS DAY',
  'LIFE IS A CARNIVAL',
  'cajun, zydeco, brass band',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  76.5,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:38',
  'Galactic Feat. Kipp Renaissanc',
  'Karate',
  'Carnivale Electricos',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:48',
  'STANTON MOORE',
  'CARNIVAL',
  NULL,
  'jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6mc3zgwx7wqUpOJ9Yeq8Lz',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:49',
  'GALACTIC',
  'CARIVAL TIME',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:53',
  'PROFESSOR LONGHAIR',
  'GOING TO THE MARDI GRAS',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '16:56',
  'PROFESSOR LONGHAIR WITH EARL KING',
  'BIG CHIEF PART 1 AND PART 2',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:04',
  'ST. AUGSTINE MARCHING 100',
  'ZARATHUSTA',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:06',
  'Big Chief Romeo Bougere, Dawn Ri',
  'I''m Feeling Good (Vocal)',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:10',
  '79rs Gang',
  'Iko Kreyol (w Lakou Mizik)',
  'Expect The Unexpected',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:16',
  'Ricky B',
  'Shake It Fo Ya Hood (Radio)',
  'B Is For Bounce',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:20',
  'Shamarr Allen',
  'House of Dance and Feathers',
  'Nine Lives - Vol I',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:25',
  'Kermit Ruffins With The Rebirth',
  'Up In Tha Hood',
  'Throwback',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:31',
  'OTIS REDDING',
  'SHAKE',
  NULL,
  'motown, soul, classic soul',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2cp12vHQXoMtKNthtxHnna',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:34',
  'THE NEVILLE BROTHERS',
  'SHAKE YOUR TAMBOURINE',
  NULL,
  'cajun, zydeco',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6gNcTEnlzyO1aodscUbGcD',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:39',
  'CASA SAMBA',
  'BAHON: CONNECTION FROM BAHIA TO NEW ORLEANS',
  NULL,
  'samba',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4872g6agQUoMiApDlYhaco',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:41',
  'DIZZY GILLESPIE',
  'BARBADOS CARNIVAL',
  NULL,
  'bebop, jazz, afro-cuban jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3xEAi7Bh10Epnj9TobPqwu',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:46',
  'Dirty Dozen Brass Band',
  'Oop Pop A Dah',
  'This Is The Dirty Dozen Brass Ba',
  'bebop, jazz, afro-cuban jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/1T8ndLNRm75cZRZXEsPLp7',
  'found',
  77.8,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:54',
  'MAX WOISKI JR.',
  'DON''T STOP THE CARNIVAL',
  NULL,
  'hollands, nederpop',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/1180qBoW4rVHUeaiy35l1z',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '17:55',
  'HARRY BELAFONTE',
  'DON''T STOP THE CARNIVAL',
  NULL,
  'calypso',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3yXT9GVjKmjjUuVa2utG57',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:00',
  'Herbie Hancock',
  'Watermelon Man',
  'The Best of Herbie Hancock- The',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2zQl59dZMzwhrmeSBEgiXY',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:01',
  'SONNY ROLLINS',
  'DON''T STOP THE CARNIVAL',
  NULL,
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2zouJaQeIIjnWzFgVwNIOC',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:03',
  'SONNY ROLLINS',
  'JOHN S.',
  NULL,
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2yBTPQI8BhF2T4q3QEbtem',
  'found',
  98,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:18',
  'LINCONLN CENTER JAZZ ORCHESTRA',
  'MAIN STEM',
  'SWINGIN'' WITH DUKE',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:22',
  'TITO PUENTE',
  'TING-A-LING',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:22',
  'TITO PUENTO',
  'SHING-A-LING',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:25',
  'TITO PUENTE',
  'DANCE OF THE HEADHUNTERS',
  NULL,
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3IlYZGgsHt80SBNc7zx48Z',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:28',
  'WILLIE BOBO',
  'JUICY',
  NULL,
  'latin jazz, afro-cuban jazz, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2pJeJTkhr8EE2KXR2ERx40',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:31',
  'LA LUPE WITH TITO PUENTE',
  'JUGANDA MAMA',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:33',
  'CELIA CRUZ',
  'LA VIDA ES UN CARNIVAL',
  NULL,
  'salsa, son cubano, bolero',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/1BwrMGGhPA6GarWIYaFrW8',
  'found',
  90.7,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:38',
  'WILLIE BOBO',
  'SPANISH GREASE',
  NULL,
  'latin jazz, afro-cuban jazz, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4FOFC3YNvDgLesoVqRthZh',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:43',
  'SHIRLEY BASSEY',
  'LIGHT MY FIRE',
  NULL,
  'easy listening',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3gBL7kYrPRLw12Mgon4vpW',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:43',
  'WILLIE BOBO',
  'MERCY, MERCY, MERCY',
  NULL,
  'latin jazz, afro-cuban jazz, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/0JPTBGMeIyIwH9Qq1KNuxE',
  'found',
  100,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:50',
  'JOLLY BOYS',
  'PERFECT DAY',
  NULL,
  'calypso, rocksteady',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6yMz9JBwuX1Gq82IcKB0hH',
  'found',
  80.6,
  '2026-02-18 07:36:35'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-17',
  '18:53',
  'TOM WAITS',
  'TANGO TILL THEY''RE SORE',
  'RAIN DOGS',
  'singer-songwriter, southern gothic',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4bUApAX6GWx9NUloSh64za',
  'found',
  94.5,
  '2026-02-18 07:36:35'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-18';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:06',
  'John Coltrane',
  'Welcome',
  'The Gentle Side of John Coltrane',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6875x2ACym3agd95Ma677q',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:08',
  'Ben Allison',
  'The Truth Is Stranger Than Fiction',
  'Quiet Revolution',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2A93GTiwZvzxYpBBk7bA49',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:12',
  'Linda May Han Oh',
  'Strange Heavens',
  'Strange Heavens',
  'jazz, experimental jazz, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0izAvuYpXzncuyc1rU8FMj',
  'found',
  71,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:17',
  'Brandee Younger',
  'Gadabout Season',
  'Gadabout Season',
  'experimental jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5Z4YeqJLy2Ik0NYr0xlfh7',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:22',
  'Eric Alexander',
  'Song of No Regrets',
  'Song of No Regrets',
  'hard bop, jazz, jazz ballads',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3Tyb6VnHeumI7eSn1Yda5o',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:28',
  'Abdullah Ibrahim',
  'Mississippi',
  'Mukashi',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2g2aNAhS4zQH8aXzz7Wz7n',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:33',
  'Jason Marshall',
  'Fallen Feathers',
  'New Beginnings',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6IYIh0ElJxJwabcszaAgpy',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:38',
  'Jim Snidero',
  'You Go to My Head',
  'For All We Know',
  'jazz, smooth jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6ZD0Og7seHqnu6Di5wcBzM',
  'found',
  98,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:48',
  'Chris Potter',
  'Rest Your Head',
  'There Is a Tide',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7ukiRHpfUx7xhMQXMq7m3e',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:51',
  'Harold Mabern',
  'Hittin'' the Jug',
  'To Love and Be Loved',
  'hard bop, jazz, vocal jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6z35thB1AUEPjgUpJECC4O',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '06:56',
  'Tommy Flanagan',
  'West Coast Blues',
  'Something Borrowed, Something Blue',
  'jazz, hard bop, jazz ballads',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5PCuMBiFhrK36wK6QZMph2',
  'found',
  89.8,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:01',
  'Ginger Baker',
  'Mountain Time',
  'Horses & Trees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:05',
  'Eric Scott Reed',
  'The Wierdos',
  'Out Late',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:17',
  'Phil deGruy',
  'Mask and You Shall Deceive',
  'Mask and You Shall Deceive',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:18',
  '3Now4',
  'Time Ebbing',
  'Time Ebbing',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:27',
  'Danny Grissett',
  'The Long Way Home',
  'Travelogue',
  'jazz, smooth jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6auBDjNQVUCoVKp9s5csoT',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:27',
  'Johannes Wallmann',
  'What Now?',
  'Day and Night',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:31',
  'Bill Frisell & Fred Hersch',
  'My Little Suede Shoes',
  'Songs We Know',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5fBkc5nB7civN72h0vANdq',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:34',
  'John Scofield',
  'Hangover',
  'Past Present',
  'jazz fusion, jazz, jazz funk',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1Fz13YdlXH2K30WWFMG8de',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:40',
  'Larry Coryell',
  'No More Booze, Minor Blues',
  'Major Jazz, Minor Blues',
  'jazz fusion, smooth jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0yXlAElpUtHfMlgZ04xEs9',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:47',
  'Django Festival All Stars 2012',
  'El Dorado',
  'Live at Birdland',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:51',
  'Hiromi and The Trio Project',
  'Indulgence',
  'Spark',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '07:59',
  'Lisa Hilton',
  'Getaway',
  'Getaway',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6mxNrCbQNO64yS8rClyfa7',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:02',
  'Dee Dee Bridgewater',
  'Going Down Slow',
  'Memphis . . . Yes, I''m Ready',
  'vocal jazz, french jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4RnvKt2IuIUh0JaxLcUq4Y',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:07',
  'Bill Frisell',
  'Goin'' Out of My Head',
  'Beautiful Dreamers',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4GqdfY2c3QEwaosGC8YsBO',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:09',
  'Claire Martin and Jim Mullen',
  'Going Out of My Head',
  'Bumpin'': Celebrating Wes Montgomery',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:14',
  'John Zorn, George Lewis, Bill Frisell',
  'News for Lulu',
  'News for Lulu',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:20',
  'Christian Sands',
  'Can''t Find My Way Home',
  'Be Water',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5I15qgYqjyaVAE5c6UIaa2',
  'found',
  98,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:27',
  'Robert Walter''s 20th Congress',
  'Get Thy Bearings',
  'Get Thy Bearings',
  'jam band, jazz funk, acid jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3kRdDJpP904g6hqByeMUrJ',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:30',
  'Idris Muhammad',
  'Soulful Drums',
  'Black Rhythm Revolution!',
  'jazz funk, soul jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2PdsfY1Rf9q9hq9OhQBSo3',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:35',
  'Walter',
  'What a Diff''rence a Day Makes',
  'My Future Is My Past',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:39',
  'Nate Smith',
  'Spinning Down',
  'KINFOLK: Postcards from Everywhere',
  'jazz fusion, indie jazz, nu jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1Z5GLc7up9e79lHMUHw9tc',
  'found',
  98,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:48',
  'GoGo Penguin',
  'Everything Is Going to Be OK',
  'Everything Is Going to Be OK',
  'nu jazz, ambient jazz, experimental jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4JPj5HzPn5sRfwzqH9HMgX',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:52',
  'Leo Kottke',
  'A Child Should Be a Fish',
  'Ice Water',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7qv9Jd4axVqRiwNHqKWHCB',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '08:57',
  'Art of Time Ensemble',
  'After Mardi Gras',
  'Ain''t Got Long',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1rOMhjn0eoSbO0EEwA9sRj',
  'found',
  81.8,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:05',
  'FATS WALLER',
  'BABY BROWN ETC.. MEDLEY',
  'FATS WALLER VOLUME ONE HITHTERTO UNPUBLISHED....',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:30',
  'JACK TEAGARDEN AND HIS ORCHESTRA',
  'THAT''S WHAT I LIKE ABOUT YOU',
  'FATS WALLER PLAYS, SINGS ALONE AND WITH VARIOUS GROUPS',
  'big band, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/051QQVQkW8HVIngcPIbhkr',
  'found',
  94.4,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:30',
  'THOMAS WALLER WITH MORRIS''S HOT BABIES',
  'GEECHEE',
  'FATS WALLER 1927-29',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:31',
  'MA RAINEY',
  'SLAVE TO THE BLUES',
  'GERTRUDE',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0tGs8feVlnuw2HiEITqVZI',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:31',
  'WYNN''S CREOLE BAND',
  'DOWN BY THE LEVEE',
  'GEET EASY BLUES',
  'ragtime, big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/21edYdtDusUZXoGLGmmOa5',
  'found',
  89.2,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:38',
  'HARRY DIAL''S MUBLUSICIANS',
  'WHEN MY BABY STARTS TO SHAKE THAT THING',
  'THAT''S MY STUFF',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:39',
  'ALPHONSE TRENT AND HIS ORCHESTRA',
  'CLEMENTINE',
  'THE TERRITORY BANDS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:40',
  'FLETCHERHENDERSON AND HIS ORCH',
  'WILD PARTY',
  'FLETCHERHENDERSON WILD PARTY',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:43',
  'DON REDMAN AND HIS ORCHESTRA',
  'UNDERNEATH THE HARLEM MOON',
  'DON REDMAN AND HIS ORCHESTRA 1932-33',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2hWDVzHnTf4d1ENv4Rgp4t',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:57',
  'JELLY-ROLL MORTON AND HIS RED HOT PEPPERS',
  'WILD MAN BLUES',
  'JELLY-ROLL MORTON 1926-28',
  'ragtime, jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/4KU3t4BYYX1M5JLZkG64ER',
  'found',
  93.6,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '09:57',
  'VICTORIA SPIVEY',
  'IDLE HOUR BLUES',
  'VICTORIA SPIVEY VOL. 1',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7wbmAwMbn2rR4Gd0wRZspH',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:09',
  'JOE HAYMES & HIS ORCHESTRA',
  'LULLABY OF THE LEAVES',
  'JOE HAYMES & HIS ORCHESTRA',
  'electro swing',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0gBT1SK5w90L7TNkL7db1s',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:09',
  'NEW ORLEANS BOOTBLACKS',
  'FLAT FOOT',
  'JOHNNY DODDS 1926-28',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0L5iqNWp5upei0ReU12R8t',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:10',
  'INA RAY HUTTON AND HER MELODEARS',
  'WITCH DOCTOR',
  'HARRISON RECORDS C LET''S START WITH JACKK TEAGARDEN',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2t5RtU6r0IJyhqz31HR3ZQ',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:14',
  'BERT LOWN AND HIS HOTEL BILTMORE ORCHESTRA',
  'LOVING YOU THE WAY I DO',
  'BERT LOWN AND HIS ORCHESTRA',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1XtPGsofKSI7wUJufHBO2U',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:23',
  'CAB CALLOWAY AND HIS ORCHESTRA',
  'IT LOOKS LIKE SUSIE',
  'CAB CALLOWAY 1931-32',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:23',
  'SAVOY BEARCATS',
  'BEARCAT STOMP',
  'HOT NOTES',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/75Tn3mgaZOGykIpM2gIhik',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:25',
  'THE RHYTHMMAKERS',
  'OH PETER',
  'THE RHYTHMAKERS 1932',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:35',
  'ERSKINE TATE''S VENDOME ORCHESTRA',
  'STATIC STRUT',
  'CHICAGO JAZZ 1923-29',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6PT06as9INpvXzyZa3YC6o',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:36',
  'HOCIEL THOMAS',
  'PUT IT WHAERE I CAN GET IT',
  'ADAM AND EVE HAD THE BLUES',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:39',
  'NEW ORLEANS WANDERERS',
  'PERDIDO STREET BLUES',
  'JOHNNY DODDS 1926-28',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6kAuMdjkDFuJHiHrkI07KM',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:49',
  'KING OLIVER AND HIS ORCHESTRA',
  'STEALING LOVE',
  'KING OLIVER AND HIS ORCHESTRA',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5oPy8S7rKFYjbQzLRRxy6L',
  'found',
  90.5,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:50',
  'MARGARET JOHNSON ac by the Black and Blue Trio',
  'WHEN A GATOR HOLLERS',
  'THOMAS MORRIS 1926',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '10:53',
  'THE MISSOURIANS',
  'OZARK MOUNTAIN BLUES',
  'CAB CALLOWAY AND THE MISSOURIANS',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/35LcehxC67UHtWFNSjXnCV',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:07',
  'Joe Krown Trio',
  'Feels So Good',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:11',
  'Galactic',
  'Ash Wednesday Sunrise',
  'Carnivale Electricos',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6u7v0PNFfnj8aXwRGTFwZv',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:17',
  'Charlie Miller',
  'Daybreak',
  'Peace Horn from New Orleans',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6PpLXkdnGpgBRZgn0jSjH5',
  'found',
  84.2,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:26',
  'ellington/armstrong',
  'In My Solitude',
  'Blue Gardenia',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:32',
  'Cristina Perez',
  'Am I Blue',
  'Cristina Perez',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:35',
  'Irma Thomas',
  'Make Me A Pallet On Your Floor',
  'After The Rain',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7EvdUNEWvLBoFYENLk1lcN',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:38',
  'marcia ball',
  'the power of lovee',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:38',
  'smoking time',
  'Am I Blue',
  'Cristina Perez',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2S2wXkSE6dmx3khlvdZRme',
  'found',
  71.6,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:42',
  'johnny adams',
  'one foot in the blues',
  NULL,
  'soul blues, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3ShhKUWOeBTsVLaCuzkBRX',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:46',
  'Jon Cleary',
  'When The Party`s Over',
  'Occapella!',
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6xHprWYU0XMbCNtXmL0NEw',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '11:52',
  'Big Chief Monk Boudreaux',
  'Bloodstains and Teardrops',
  'Bloodstains & Teardrops',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6innUXmLEMJRp84di1z5Ib',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:02',
  'Anders Osborne',
  'Ash Wednesday Blues',
  'Ash Wednesday Blues',
  'modern blues, jam band, blues rock',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6aq4YUgoPAoDtu2uIelP5L',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:04',
  'bob marley',
  'Redemption Song',
  NULL,
  'reggae, roots reggae',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7MKcM6TfaGKQVFfhstCbOw',
  'found',
  72.6,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:13',
  'Allen Toussaint',
  'Bright Mississippi',
  'The Bright Mississippi',
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2E67aumg38tRDk5vFN2FGX',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:19',
  'harry connick jr',
  'ash wednesdsy',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:25',
  'steve conn',
  'morning light',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/23CTEZ4adceUIVNLprWQix',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:33',
  'happy talk band',
  'ash wednesday',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6RwS0kK1LU36zGPek9xIQ6',
  'found',
  88,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:37',
  'jumbo shrimp',
  'in the land of beginning again',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6Q5O6IUc56lZrpCGPArtBe',
  'found',
  74.2,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:42',
  'Spencer Bohren',
  'The Party''s Over',
  'Seven Birds',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:50',
  'camile baudoin and brian seeger',
  'song for nananne',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:50',
  'the radiators',
  'party til the money runs out',
  NULL,
  'jam band, cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0BWaXZzAWCFqHn6DEBSi3c',
  'found',
  92,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '12:52',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:09',
  'alex mcmurray',
  'the day after mardi gras day',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7lEFZE42cxZyOTv3UY597p',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:10',
  'allison kraus',
  'down to the river to pray',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:25',
  'nevillel brothers',
  'amazing grace -down by the riverside',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:26',
  'Allen Toussaint',
  'When The Party''s Over',
  'The Complete Warner Bros. Record',
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/310bnLAyaLJYcWnNB1OC7O',
  'found',
  89.2,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:26',
  'subdudes',
  'sugar pie',
  NULL,
  'cajun, zydeco, roots rock',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5Q8toRmf6IzYrC14MoXPiA',
  'found',
  72.2,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:30',
  'DGB',
  'Sleepin'' On The Levee',
  'Doussan,Garrett, Benoit',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:34',
  'betty wright',
  'clean up woman',
  NULL,
  'classic soul, soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6uqTETWok9npbL4c9cuLVh',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:40',
  'WALTER WOLFMAN WASHINGTON',
  'YOU CAN STAY BUT THE NOISE MUST GO',
  NULL,
  'soul blues, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4tqT8X8t0hrZDnLgodafSt',
  'found',
  96.9,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:43',
  'mel waiters',
  'your kitchen was closed',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:51',
  'Mahmoud Chouki',
  'St James Infirmary',
  'Caravan From Marrakech to New Or',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6846zwjK2dIYMyMTyDkLEn',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '13:58',
  'dr john',
  'do you call that a buddy',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0Nx6f36lldRSpc2LWFJV0r',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:52',
  'BESSIE SMITH',
  'FOOLISH MAN BLUES',
  'THE EMPRESS',
  'classic blues, blues, ragtime',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1hdwzJrHX8mwNWW2jqw0nJ',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:52',
  'FLETCHER HENDERSON AND HIS ORCHESTRA',
  'HOP OFF',
  'FLETCHER HENDERSON AND HIS ORCHESTRA ON COLUMBIA VOL. 3',
  'big band, swing music, ragtime',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6gHerfTkZ02OKcZKBkQbm0',
  'found',
  91.6,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:52',
  'SIDNEY BECHET AND HIS ORCHCESTRA',
  'LAY YOUR RACKET',
  'MASTERM MUSICIAN SIDNEY BECHET',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:53',
  'lonnie liston smith and the cosmic echoes',
  'desert nights',
  'expansions',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:54',
  'derrick gardner and the jazz prophets',
  'the melting pot',
  'echoes of ethnicity',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:55',
  'the sounds of blackness',
  'the drum',
  'africa to america',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:56',
  'clark terry',
  'swahili',
  'clark terry',
  'hard bop, latin jazz, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3XcolyPDfgNsoEUyucOPrL',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:57',
  'yusef lateef',
  'nubian lady',
  'gentle giant',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2XZxc4jd7QJQqXEZCMkV3y',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '16:59',
  'gregory porter',
  'black nile',
  'water',
  'vocal jazz, jazz pop, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5OvgMUiEBEaNeX11ViFg5x',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '17:00',
  'duke ellington',
  'my people',
  'my people',
  'jazz, big band, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3z9cnkh2lBrYHT17V0GH7r',
  'found',
  73.4,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '17:28',
  'art blakey and the jazz messengers',
  'moanin''',
  'moanin''',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4Vkk3iD1VrENHJEACNddvt',
  'found',
  90.1,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '17:31',
  'billie holiday',
  'strange fruit',
  'lady sings the blues',
  'jazz, vocal jazz, big band',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1CTex49P0iWwzUGsMNjgaV',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '17:33',
  'duke ellington and mahalia jackson',
  'come sunday',
  'black,brown and beige',
  'jazz, big band, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0pdo83CccNjQ33THdSXXuv',
  'found',
  71,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '17:44',
  'clifford brown and max roach',
  'joy spring',
  'clifford brown and max roach',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2oMaXY0yiWhAEWD7SutXh2',
  'found',
  91.6,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '18:25',
  'hannibal lokumbe',
  'victor nelson''s cotten field,elgin,tx.,1940',
  'african portraits',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '18:32',
  'steve turre',
  'volunteerde slavery',
  'the spirits up above',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '18:34',
  'paul robeson',
  'no more auction block for me',
  'the odyssey of paul robeson',
  'traditional gospel',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1vua7l2MjQSfpt8MnL8qh2',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '18:35',
  'louis armstrong',
  'black and blue',
  'ken burns''jazz:louis armstrong',
  'jazz, swing music, vocal jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2f886TYxWwiRDwfopPseYS',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '18:36',
  'ahmad jamal',
  'one',
  'digital works',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0Q7N3ZAO7Iu1mJfgaQtMAN',
  'found',
  98,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '18:38',
  'dexter gordon',
  'i''m a fool to want you',
  'clubhouse',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4EaNQXQIuiBlQe5fe5fae6',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '18:55',
  'randy weston',
  'african village bedford stuyvesant',
  'the spirits of our ancestors',
  'hard bop, gnawa, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5M19Q9hdJznK3uKD0K90kJ',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '19:03',
  'Lloyd Lambert',
  'Hop & Jump',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '21:58',
  'Dave Bartholomew',
  'Jax Beer Boogie',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:01',
  'Soul Creole',
  'Trois rangs dub',
  'Single',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7fXLuuwv8fVJSVUNzrUl8W',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:01',
  'Weather Warlock',
  'Path To Complete Totality',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:13',
  'Loretta Lynn',
  'Don''t Come Home A Drinkin''',
  'Don''t Come Home A Drinkin''',
  'classic country, honky tonk, country',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1Ch2cPleHoVVXLVRRrGF6o',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:15',
  'Maddy Kirgo',
  'Try Harder',
  'Shadow On My Light',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1K1KYwt4P3FwtkNAGjxiPF',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:19',
  'Ester Rose',
  'Wanton Way of Loving',
  'This Time Last Night',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:22',
  'Lily Unless & The If Onlys',
  'Talkin Sh*t',
  'Lily Unless & The If Onlys',
  'outlaw country',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/01zP6LIHn5LksJhTGSPBE6',
  'found',
  79,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:26',
  'Blaze Foley',
  'If I Could Only Fly',
  'Sittin By The Road',
  'folk, outlaw country, americana',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3AJI3lyZLADSaFjG2wQoFp',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:31',
  'Leyla McCalla and the Special Men',
  'Eh La Bas',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:34',
  'Little Bob & the Lollipops',
  'I Got Loaded',
  'NOBODY BUT YOU',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:38',
  'The White Stripes',
  'The Denial Twist',
  'Get Behind Me Satan',
  'garage rock, blues rock, rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4Hzg7Hcqo2aUooTQ0pnBYC',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:40',
  'Dead Moon',
  'Fire In The Western World',
  'Strange Pray Tell',
  'garage rock, proto-punk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/5PKZDsqt91GGAzFhxhpxP2',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:42',
  'King Louie One Man Band',
  'Headed For The Big City Lights',
  'Jesus Loves My One Man Band',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:47',
  'King Britt',
  'Let''s Make A Record',
  'King Britt Presents Sister Gertrude Morgan',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '22:50',
  'LCD Soundsystem',
  'Freak Out / Starry Eyes',
  'Single',
  'alternative dance, new rave',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2JQvPTSytFoEyIKex62ZSJ',
  'found',
  98,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:06',
  'The Givers',
  'Noche Nada',
  'In Light',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:10',
  'Heatherhead',
  'Eutropius (Give Me Lies)',
  'Heatherhead',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:15',
  'Brass Bed',
  'Pop Mission',
  'Melt White',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:18',
  'Bernie Worrell',
  'I''ll Be With You',
  NULL,
  'funk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3VFxSZmfyyP0rUshVbHNry',
  'found',
  98,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:25',
  'D''Angelo',
  '1000 Deaths',
  'Black Messiah',
  'neo soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/5Zvp0QO5e9cGhYHywdrfyQ',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:31',
  'Frank Ocean feat. John Mayer',
  'White',
  'Channel Orange',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:32',
  'Wilco',
  'Misunderstood',
  'Being There',
  'alt country, americana, indie rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/5YrxjEpjSTGgum00liiB3w',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:38',
  'The Strangeloves',
  'I Want Candy',
  '45',
  'garage rock, proto-punk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7JoPxqrnT3eq02AnflBSiN',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:41',
  'Quintron',
  'Mouth Of Harahan - The Ballad of King Louie Bankston',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:45',
  'Kajun SS',
  'German Kajun',
  '45',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:48',
  'Sick Thoughts',
  'Another Piece of Plastic',
  'Sick Thoughts',
  'egg punk, punk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6xQASrI3lT6S5i69czTfrc',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:50',
  'Jim Traham',
  'J'' Ai Laisser Mon Couer',
  'Houma Records - 1966-1974',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:53',
  'Whip Appeal',
  'No Cowboys In Texas',
  'Shimmering Seed',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4irggfuME2CxWDnnxkfOlf',
  'found',
  100,
  '2026-02-19 07:59:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-18',
  '23:57',
  'Irma Thomas',
  'Time Is On My Side',
  NULL,
  'classic soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6IpxLzChgCbFSJwso2Q84D',
  'found',
  100,
  '2026-02-19 07:59:39'
);

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