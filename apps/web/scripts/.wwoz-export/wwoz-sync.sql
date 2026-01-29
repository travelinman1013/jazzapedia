-- WWOZ Database Export
-- Generated: 2026-01-29T08:08:37.102Z
-- Mode: INCREMENTAL
-- Last export: 2026-01-29 08:07:25
-- Days: 4
-- Tracks: 507

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-26',
  'https://open.spotify.com/playlist/4lMHnqvrbOeCBpr3eoNbnI',
  '"{\"totalTracks\":170,\"successfullyFound\":115,\"notFound\":55,\"lowConfidence\":0,\"duplicates\":0}"',
  'https://wwoz.org/programs/playlists',
  '2026-01-26 13:13:15',
  '2026-01-29 08:08:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-27',
  'https://open.spotify.com/playlist/3XIEyydAz2r3ymWpQUS9cj',
  '"{\"totalTracks\":141,\"successfullyFound\":100,\"notFound\":41,\"lowConfidence\":0,\"duplicates\":0}"',
  'https://wwoz.org/programs/playlists',
  '2026-01-27 07:58:51',
  '2026-01-29 08:08:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-28',
  'https://open.spotify.com/playlist/7JvoJW4fi1lmyemPkruwfq',
  '"{\"totalTracks\":183,\"successfullyFound\":95,\"notFound\":88,\"lowConfidence\":0,\"duplicates\":0}"',
  'https://wwoz.org/programs/playlists',
  '2026-01-28 22:40:47',
  '2026-01-29 08:08:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-29',
  NULL,
  '"{\"totalTracks\":5,\"successfullyFound\":2,\"notFound\":3,\"lowConfidence\":0,\"duplicates\":0}"',
  'https://wwoz.org/programs/playlists',
  '2026-01-29 08:07:21',
  '2026-01-29 08:08:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-01-26';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:01',
  'Rahsaan Roland Kirk',
  'No Tonic Press',
  'Rip, Rig, and Panic',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:05',
  'Chaise Lounge',
  'A Cold, Cold Day in New Orleans',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4Yn6WvchJg4ypKRmwVRTV0',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:09',
  'Charlie Hunter',
  'Creole',
  NULL,
  'jazz funk, acid jazz, east coast hip hop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2W1wZG52PIlXihmHnNXE1G',
  'found',
  73.4,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:15',
  'Terri Lyne Carrington',
  'Crayola',
  'The Mosaic Project',
  'jazz, vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2AKMhLvnfdN8Tdj4RdKDUh',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:20',
  'Blake Amos',
  'Check the Sound',
  'The Manifesto',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4pm30RHmwEDLdAdGUjdYHt',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:24',
  'Wycliffe Gordon',
  'Amazing Grace',
  NULL,
  'christian jazz, jazz, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5od5oPheZa2w57PR7oeQee',
  'found',
  72.4,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:29',
  'Bud Shank',
  'Blue Jay Way',
  NULL,
  'cool jazz, jazz, brazilian jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5t6fWpcaVdFqGXc4LiFWCj',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:33',
  'Sariyah Idan',
  'Winter in America',
  'Live in Berlin, Vol. 2',
  'native american music, indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5SxWOapL7jZH6VWyvuypPx',
  'found',
  91,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:40',
  'Sariyah Idan',
  'What a Wonderful World',
  'Live in Berlin, Vol. 1',
  'native american music, indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3keBTuxXuG1YHlQ034NMbu',
  'found',
  92.8,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:45',
  'Fred Ho & the Afro Asian Jazz Ensemble',
  'Absolute Solo!',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5hIplPskIcpFldASvjX3uU',
  'found',
  94.7,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '00:54',
  'Sariyah Idan',
  'I''m a Warrior',
  NULL,
  'dub, dubstep, native american music',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/01WD3nMWzHuKl0QrtCEGHA',
  'found',
  70.4,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '01:11',
  'Elliot Caine Sextet',
  'Defiance',
  'Hippie Chicks on Acid (Live at Alvas)',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/70OA7zYYUIgl59TRgDeYnx',
  'found',
  77.4,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '01:21',
  'Live in Berlin, Vol. 1',
  'Feeling Good',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '01:27',
  'Not Missing Drums Project',
  'After the Battle',
  NULL,
  'avant-garde',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/488vPhWEEggIsMBPAipjQ7',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '01:32',
  'Charles Lloyd',
  'Defiant, Tender Warrior',
  'The Sky Will Still Be Here Tomorrow',
  'jazz, free jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2KCuOB6Kqn0bt72iC7wh40',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '01:40',
  'Kenny Barron',
  'Blue Moon',
  'Live at Bradley''s',
  'jazz, hard bop, cool jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6ae7xpbnZ2KuQuwhetwEvm',
  'found',
  80.9,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '01:49',
  'Stan Getz & Kenny Barron',
  'Soul Eyes',
  'People Time',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '01:55',
  'Stan Getz & Kenny Barron',
  'Blood Count',
  'Live in Copenhagen 1987',
  'bossa nova, jazz, brazilian jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0oiWUPDEzcU5VlUVp1GaTR',
  'found',
  71.3,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:00',
  'Jane Monheit & Kenny Barron',
  'Blame It On My Youth',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:04',
  'Archie Shepp',
  'The Girl From Ipanema',
  NULL,
  'free jazz, jazz, avant-garde',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1YABokGRPm1EphUCZnEaig',
  'found',
  98,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:12',
  'Al Jarreau',
  'Agua de Beber',
  'Glow',
  'yacht rock, smooth jazz, vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7hqPKFEptAMWTmT5VoOMiz',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:16',
  'Sarah Vaughan',
  'Triste',
  NULL,
  'vocal jazz, jazz, jazz ballads',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/591mqYOhHhpYyvcOSBHL5g',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:19',
  'Fred Hersch',
  'Meditacao',
  NULL,
  'jazz, jazz ballads',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4KK8DNULwiJ9shfcpgauQv',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:24',
  'Esperanza Spalding',
  'Inutil Paisagem',
  'Chamber Music Society',
  'vocal jazz, jazz, jazz pop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6XJ6yGbQufstGi2ccJSgiU',
  'found',
  78,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:29',
  'Marisa Monte w/David Byrne',
  'Waters of March',
  'Colecao',
  'mpb, new mpb, art rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1NBYnSivYVaYRWcATQaGaN',
  'found',
  90.4,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:32',
  'Vince Guaraldi Trio',
  'Samba de Orfeu',
  'Jazz Impressions of Black Orpheus',
  'christmas',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1R5NOOXkio8hdRmDCCIQLL',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:38',
  'Bill Withers',
  'Lonely Town, Lonely Street',
  NULL,
  'soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3oiVJNFAQQ77Yp3rXWGsVp',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:41',
  'The Neville Brothers',
  'Fire on the Bayou',
  'Live at Warfield Theatre, San Francisco, 2/27/89',
  'cajun, zydeco',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4nsC2PG5fF4dWu2P9isR4m',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:49',
  'Art Farmer',
  'Heat Wave',
  'Brass Shout',
  'hard bop, jazz, cool jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5Var9u3HiST1r8BTSyjdw9',
  'found',
  80,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:52',
  'Jimmy Smith',
  'When The Saints Go Marching In',
  'Prayer Meetin''',
  'hard bop, soul jazz, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0K36rOCWNC7qSCrGCHxqfg',
  'found',
  95.2,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:54',
  'Aretha Franklin',
  'Blue Holiday',
  'The Electrifying Aretha Franklin',
  'soul, motown, classic soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6eMJNUOi5lvvbaR2FsKMBq',
  'found',
  100,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '02:57',
  'Louis Prima',
  'Buona Sera',
  'Treme- Music From The HBO Origin',
  'swing music, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0DXm5n7SBxCED9ssTvrx2J',
  'found',
  81.7,
  '2026-01-26 13:13:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '06:53',
  'Ellis Marsalis',
  'Halluncinations',
  'Piano In E-Solo Piano',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '07:54',
  'Nancy Wilson',
  'My Shining Hour',
  'Hollywood- My Way',
  'vocal jazz, jazz, jazz ballads',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/51MPgJB3MAdVsVhFhIs6Xv',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '08:42',
  'Art Farmer',
  'Out Of The Past',
  'Out Of The Past',
  'hard bop, jazz, cool jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/0v4a3kqt6m2iQsbFoC3PQi',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '08:48',
  'Horace Silver',
  'The Jody Grind',
  'The Jody Grind',
  'hard bop, jazz, bebop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2gK90iDN9ggQoECv4494mb',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '08:54',
  'Organissimo',
  'Within You Without You',
  'B3tles - A Soulful Tribue To The',
  'jazz funk, soul jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1Q87gRSJzNxGzCi62sUwSF',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:04',
  'Aaron Neville',
  'Singing You A Prayer',
  'Devotion',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:09',
  'Aaron Neville',
  'Angola Bound',
  'The Very Best Of Aaron Neville',
  'classic soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/65FwuI4NQEneyelkyRU2Pg',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:13',
  'Aaron Neville',
  'Money Honey',
  'My True Story',
  'classic soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4b1IrBAcz8sGf0Cjd43rjr',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:16',
  'Aaron Neville',
  'Hercules',
  'Ultimate Collection',
  'classic soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0wRejfFXjZa1TGeJ7kDPCT',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:20',
  'Neville Brothers',
  'Will The Circle Be Unbroken',
  'Yellow Moon',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/45C0YKXo83t4DFywtbwxGv',
  'found',
  86,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:25',
  'Neville Brothers, Ivan Nevile, I',
  '(Hey Mama) Wild Tchoupitoulas',
  'Take Me To The River: New Orle',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:41',
  'Daphne Parker Powell',
  'Scorched Earth & The Flood',
  'SINGLE',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2esJGyfgKKNCfazYapkBgW',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:44',
  'Ted Hefko And The Thousandaires',
  'Tell Me The Truth',
  'Gas Station Guru',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5v2WqoabwPDqvLgn6mI4cU',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:49',
  'Irma Thomas with Galactic',
  'Puppet On Your String',
  'Audience With The Queen',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/3TZvgDK4BNmaAUGX6Ik90R',
  'found',
  81.5,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '11:55',
  'Galactic Feat. Cyril & Ivan Ne',
  'Out In The Street',
  'Carnivale Electricos',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:02',
  'Connie Price & The Keystones with Apani B Fly Mc Bo Dollis Jr',
  'Uptown Rulers',
  'Uptown Rulers',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:17',
  'Big Chief Bo Dollis And The Wild',
  'Chip Off the Old Block',
  'Chip Off The Old Block',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:20',
  'Trombone Shorty & The New Breed',
  'Good Time',
  'Second Line Sunday',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:23',
  'Kermit Ruffins With The Rebirth',
  'Mardi Gras Day',
  'Throwback',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:28',
  'Big Sam''s Funky Nation',
  'Carnival Thing',
  NULL,
  'brass band, jazz funk, funk',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/45JUrvSaTjTL6Cjg842shE',
  'found',
  72.4,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:35',
  'Connie Price & The Keystones',
  'Under Attack!',
  'Under Attack',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5acMEsFwpOYJlFZmmaKeo5',
  'found',
  81.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:36',
  'Loche Robinson Raso',
  'Lights Out',
  'The International Guitar Trio',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:47',
  'Loche Robinson Raso',
  'Grave Robbin'' Son',
  'The International Guitar Trio',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:48',
  'The Afrodiziac''s Jazz',
  'Killer',
  'Immigration',
  'jazz funk, latin jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2Ds4ZcKwB06xVBMHtITa8W',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '12:56',
  '007',
  'Revival Reggae',
  'The Return Of Bendlow',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1q9c7fb74edY3onQ9WpJCh',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:01',
  'Charlie And The Tropicales',
  'mad scientist',
  'Jump Up',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:06',
  'Roderick Harper',
  'Lonely Heart Detour',
  'Confidence',
  'vocal jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/7bcRU5BDkHHZwQXfhrxnW0',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:09',
  'James Evans And The Kindred Swingers',
  'Doodle',
  'James Evans And The Kindred Swingers',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:11',
  'Colossus Brass Band',
  'Go ''Head, Fred!',
  'Sing On',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/35pvI86gL1sSh7BEHXFCHz',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:17',
  'Drew Landry',
  'Cowboys And Indians',
  'Exiles The Dockside Tapes Vol. 1',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:20',
  'Mark Carroll',
  'Pieces Of Me',
  'Fringe Dweller',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/63bJoqbDTku0udrAkcTMHL',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:23',
  'DGB',
  'Breaux Bridge Rag',
  'Doussan, Garrett, Benoit',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:27',
  'Tyron Benoit',
  'Start Again',
  'Mid City',
  'cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6GNJDyrDgYrbKxw9XbApyr',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:40',
  'Huey Piano Smith',
  'Baby You Hurt Me',
  'Snag-A-Tooth Jeanie',
  'zydeco, modern blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0hGweLY9JYzlKha3w0nUM7',
  'found',
  79.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:43',
  'Huey Piano Smith',
  'More Girls',
  'Snag-A-Tooth Jeanie',
  'boogie-woogie',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1GaQ6KMrMlsFGmNBvxBnwX',
  'found',
  79.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:46',
  'Huey And Curley',
  'Second Line',
  'In Session 1951-1962',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:50',
  'Huey Piano Smith',
  'At The Mardi Gras',
  'In Session 1951-1962',
  'zydeco, modern blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5PmbQFTCQUqA8CxQyYyKTs',
  'found',
  79.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '13:53',
  'New Orleans Nightcrawlers',
  'Funky Liza',
  'Funknicity',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4RotEf5oCe7uK9xt2Plhbz',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:05',
  'tuts washington',
  'miss lucy''s blues',
  'live at tipitina''s 78',
  'boogie-woogie, classic blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4DmSgXLHLCvbvgLUAfZX4s',
  'found',
  93.3,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:06',
  'BOBBY BLUE BLAND',
  'I''LL TAKE CARE OF YOU',
  'ANTHOLOGY',
  'blues, classic blues, soul blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4Nxid85fmQidPAY1ZD8Bo1',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:07',
  'BOBBY BLUE BLAND',
  'YIELD NOT TO TEMPTATION',
  'ANTHOLOGY',
  'blues, classic blues, soul blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6XXLLZSEsi5v6NOJmc6sXj',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:10',
  'EDDIE TAYLOR',
  'FEEL SO BAD',
  'MASTERS OF MODERN BLUES',
  'blues, classic blues, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0GrgzKfRCVe3qJnosQe5ug',
  'found',
  91.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:13',
  'WHISPERIN SMITH',
  'looking the world over',
  'SWAMP BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:17',
  'MISSISSIPPI MATILDA POWELL',
  'hard working woman',
  'FOUR WOMEN BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:19',
  'TINY WEBB',
  'TINY''S DOWN HOME',
  'THE TRAVELING RECORD MAN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:27',
  'lucinda williams',
  'we''ve come too far to turn around',
  'WORLD GONE WRONG',
  'jazz, free jazz, alt country',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5rA6lBZ4gbbMRnS5b0a5pn',
  'found',
  73.4,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:28',
  'LOS LOBOS',
  'SAINT BEHIND THE GLASS',
  'ACOUSTIC EN VIVO',
  'roots rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3KbHmZ1abHM3uy7QfrzVmW',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:31',
  'NEKO CASE',
  'JOHN SAW THAT NUMBER',
  'FOX CONFESSOR BRINGS THE FLOOD',
  'alt country, southern gothic, americana',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/08nhxjVxAq9Q37qiskGKlW',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:35',
  'BLIND ARVELLA GRAY',
  'STAND BY ME',
  'THE SINGING DRIFTER',
  'country blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/24DcSQ2DB71XVVYCp8f4x9',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:38',
  'PAUL GAYTEN AND HIS ORCHESTRA',
  'COW COW BLUES',
  'SOUTHERN BRED VOL.14',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0Syy6hNSTgxZBZkXwMXTEz',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:42',
  'COWBOY JUNKIES',
  'I DON''T GET IT',
  'THR TRINITY SESSIONS',
  'alt country',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1zK7VIP5S2DMM78MUxALLx',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:45',
  'Aaron Neville',
  'I Shall Be Released',
  'Devotion',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:49',
  'Elmore James',
  'The Sky Is crying',
  'THE COMPLETE FIRE & ENJOY RECORDINGS',
  'blues, classic blues, blues rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7mW3XmWeDUo02M4GbO0fiC',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:53',
  'LITTLE MAC SIMMONS',
  'MY WALKING BLUES',
  'CHICAGO BLUES FROM CJ RECORDS VOL.1',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '14:56',
  'TERRY HARMONICA BEAN',
  'Pretty Baby',
  'MISTAKES WERE MADE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:06',
  'BUDDY MOSS',
  'HEY LAWDY MAMA',
  'THE GEORGE MITCHELL COLLECTION',
  'country blues, ragtime, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4H8XWS5eJNdMGsNTzEbMa9',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:09',
  'SMOKEY HOGG',
  'I WANT MY BABY (BUT MY BABY DON''T WANT ME)',
  'ORIGINAL FOLK BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:11',
  'WILL BATTS',
  'HIGHWAY NO. 61 BLUES',
  'MEMPHIS JAMBOREE 1927-36',
  'country blues, ragtime',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5QfKO7123q9MtHfkbDkhyL',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:14',
  'SALLY BABY''S SILVER DOLLAR',
  'I''VE GOT NO MORE TEARS LEFT TO CRY',
  'SALLY BABY''S SILVER DOLLAR',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6EBd5o2zLYEoX5D4Jyqx17',
  'found',
  86,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:23',
  'ALVIN YOUNGBLOOD HART',
  'I''M WATCHING BRIAN JONES',
  'SINGLE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:23',
  'KENNY BROWN',
  'Skinny Woman',
  'MEET YA IN THE BOTTOM',
  'modern blues, country blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/47vDgJtNcRvluhNv7GB3py',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:28',
  'Big Chief Monk Boudreaux and Spyboy Jwan Boudreaux',
  'Low Down Dirty Blues',
  'Slip Don''t Fall',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:34',
  'SONNY BOY WILLIAMSON',
  'TEMPERATURE 110',
  'THE ESSENTIAL SONNY BOY WILLIAMSON',
  'blues, classic blues, country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/43DQTEdkIIAAtG4q3oGqiM',
  'found',
  89.5,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:35',
  'BETTYE LAVETTE',
  'I DO NOT WANT WHAT I HAVEN''T GOT',
  'I''VE GOT MY OWN HELL TO RAISE',
  'soul blues, northern soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1ChyjMLu75ApL8Xmqmw3a3',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:37',
  'ETTA JAMES',
  'i''d rather go blind',
  'TELL MAMA',
  'soul, soul blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1kPBT8S2wJFNAyBMnGVZgL',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:40',
  'TAMI LYNN',
  'Light My Fire',
  '45',
  'northern soul, motown, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4cki1TEwQdsm7Z5IXx54za',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:46',
  'Preservation Hall Jazz Band',
  'Short Dressed Gal',
  'NEW ORLEANS PRESERVATION VOL.1',
  'brass band, swing music, ragtime',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6fwSCdkHyA1Gp2G0sPIQxv',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:49',
  'little freddie king',
  'tough frog to swallow',
  'YOU MAKE MY NIGHT',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6UFFAZohSJh8Ayt1BXboer',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '15:54',
  'JR KIMBROUGH',
  'I CRIED LAST NIGHT',
  'GOD KNOWS I TRIED',
  'blues, country blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0bQdSJ7D0VPrjcRp8QxhyO',
  'found',
  70.5,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
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
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:01',
  'Benny Golson',
  'Jam For Bobbie (Curtis Fuller)',
  'Gone With Golson Remastered 2025',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:10',
  'Benny Golson',
  'Brown Immortal',
  'Brown Immortal',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/495h4FxouWTkBJPSOzIwT5',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:21',
  'JAY JAY JOHNSON',
  'IT COULD HAPPEN TO YOU',
  'THE EMINENT JAY JAY JOHNSON: VOLUME 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:25',
  'Clifford Brown',
  'I Get A Kick Out Of You',
  'The Definitive Clifford Brown',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6VLWsrfTql3CGDGC1T5Zf9',
  'found',
  72.7,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:34',
  'JAY JAY JOHNSON',
  'GET HAPPY',
  'THE EMINENT JAY JAY JOHNSON; VOLUME 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:39',
  'Kenny Clarke- Francy Boland Big',
  'Extravagances',
  'Changes of Scenes',
  'big band, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7dBcAZzZ525FRXa5K6L2oG',
  'found',
  77.5,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:48',
  'DEXTER GORDON QUARTET',
  'BENJI''S BOUNCE',
  'BOUNCIN'' WITH DEX',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '16:55',
  'Billy Higgins Quintet',
  'Hot House',
  'Billy Higgins Quintet',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '17:05',
  'PAPA DON''S ;NEW ORLEANS JAZZ BAND',
  'DO YOU KNOW WHAT IT MEANS TO MISS NEW ORLEANS',
  'PAPA DON''S NEW ORLEANS JAZZ BAND',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '17:08',
  'DON VAPPIE AND THE CREOLE JAZZ SERENADERS',
  'CREOLE BLUES',
  'CREOLE BLUES',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '17:35',
  'DON VAPPIE AND THE CREOLE JAZZ SERENADERS',
  'JAZZ BATTLE',
  'CREOLE BLUES',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '17:43',
  'DONALD BYRD',
  'FLIGHT TIME',
  'BLACK BYRD',
  'hard bop, jazz funk, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1XPfk40ydaHjxLcl4999Ci',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '17:51',
  'DONALD BYRD',
  'WHERE ARE WE GOING',
  'BLACK BYRD',
  'hard bop, jazz funk, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3E26XqV2an7iMYoEcUVdj4',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '17:56',
  'DONALD BYRD',
  'LOVE''S SO FAR AWAY',
  'BLACK BYRD',
  'hard bop, jazz funk, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2bSEu2bC76Wyj9hszTTFrh',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '18:02',
  'ROGER GLENN',
  'CONGO SQUARE',
  'MY LATIN HEART',
  'jazz funk, jazz fusion, latin jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1FX0eXVsksQnTXEmDpmGXi',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '18:11',
  'Donald Byrd',
  'A City Called Heaven',
  'A City Called Heaven',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '18:24',
  'JOE HENDERSON',
  'IF EVER I WOULD LEAVE YOU',
  'THE COMPLETE JOE HENDERSON BLUE NOTE STUDIO SESSIONS - DISC 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '18:32',
  'JOE HENDERSON',
  'OUT OF THE NIGHT',
  'THE COMPLETE JOE HENDERSON BLUE NOTE STUDIO SESSIONS - DISC 1',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1j6CVgPT4DpCrGmGVKZYVU',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '18:37',
  'BOBBY HUTCHERSON',
  'SUBTLE NEPTUNE',
  'CLASSIC BOBBY HUTCHERSON BLUE NOTE SESSIONS 1963 -1970',
  'hard bop, jazz, free jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/779cjuV6ROxANnbJ6q6mKp',
  'found',
  85.2,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '18:48',
  'Pharoah Sanders',
  'You`ve Got To Have Freedom',
  'Live',
  'free jazz, ambient jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1v6w5EA8iNF0Bvqdwt4npI',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:05',
  'Les Getrex & His All Star Band',
  'Hey Babe',
  '300 Miles',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5rLt07ES6caLXmMPVzYDhd',
  'found',
  94,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:09',
  'Erica Falls',
  'Good Time',
  'Emotions',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2CWRPpDUTs6hpRmQJnkI46',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:13',
  'Mem Shannon',
  'I Love The Way You Love',
  'Memphis In The Morning',
  'soul blues, blues, retro soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7dUa9ibGLTjF0aC60kaU9P',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:16',
  'Sierra Green',
  'Can You Get To That',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/24jgODdEWCUCVxjbmjIA3m',
  'found',
  75.4,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:21',
  'Luke Winslow-King',
  'I''m Glad Trouble Don''t Last Alwa',
  'I''m Glad Trouble Don''t Last Alwa',
  'blues rock, blues, modern blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3vV8nrwMDQQl5KIEQeEq9O',
  'found',
  93.1,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:36',
  'Walter Wolfman Washington',
  'Blue Moon Rising',
  'JAZZFEST BOX SET',
  'soul blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7c1VgvmQ6PiF27ZOC0EE2a',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:37',
  'HOUND DOG TAYLOR',
  'THINGS DON''T WORK OUT RIGHT',
  'RELEASE THE HOUND',
  'classic blues, blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0c4UAvXGUNFN2AjLD2CMdY',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:46',
  'BOB DYLAN',
  'TIGHT CONNECTION TO MY HEART',
  'EMPIRE BURLESQUE',
  'folk rock, folk, singer-songwriter',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0LNxNfa5cbNrnK6KyhaQaj',
  'found',
  85.3,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:51',
  'GREGORY ISAACS',
  'SOON FORWARD',
  NULL,
  'reggae, roots reggae, lovers rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0HvN8GW4p7e5tt9EBLACMT',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '19:58',
  'PETER TOSH',
  'STEPPING RAZOR',
  'EQUAL RIGHTS',
  'reggae, roots reggae, rocksteady',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5PxJMuvCFAEbAGaG0J4mLr',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:09',
  'BOB WEIR',
  'ONE MORE RIVER TO CROSS',
  'BLUE MOUNTAIN',
  'jam band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3jm56DVAKzKW6AjpGx99R5',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:09',
  'GRATEFUL DEAD',
  'DARK HOLLOW',
  'BEAR''S CHOICE',
  'jam band, psychedelic rock, acid rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/54MwsH8o7KBOR5bW21yNeW',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:15',
  'DAVID NELSON BAND',
  'ANY NAKED EYE',
  'ONCE IN A BLUE MOON',
  'jam band, electroacoustic, newgrass',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6P8LSEBwoTeJKsCtmGEnsc',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:19',
  'galactic with Irma Thomas',
  'love''s gonna find a way again',
  'AUDIENCE WITH THE QUEEN',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:23',
  'CHARLES BRADLEY',
  'THE WORLD IS GOING UP IN FLAMES',
  'NO TIME FOR DREAMING',
  'soul, retro soul, funk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1UWBVGo7KW8Y9JHekgwEcm',
  'found',
  91,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:28',
  'LEADBELLY',
  'BOURGOISE BLUES',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:28',
  'james blood ulmer',
  'are you glad to be in america',
  NULL,
  'free jazz, experimental jazz, jazz fusion',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/52CZ0k1YT3S3FIBOQIUB7F',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:35',
  'syl johnson',
  'i''m talking about freedom',
  'IS IT BECAUSE I''M BLACK',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:42',
  'Aretha Franklin/Ray Charles',
  'Spirit In The Dark',
  'Live at The Fillmore',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:42',
  'IRMA THOMAS',
  'TWO WINTERS LONG',
  'STRAIGHT FROM THE SOUL',
  'classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6IB3gmytuTAjA1wJWeGXJv',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '20:49',
  'CHARLIE CROCKETT',
  'VISIONS OF DALLAS',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '21:09',
  'rl burnside',
  'JUMPER ON THE LINE',
  'DEEP BLUES',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '21:41',
  'JOHN PRINE',
  'caravan of fools',
  'tree of forgiveness',
  'americana, folk, singer-songwriter',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3pqxtzrTu2dNDdLIDjS6vi',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:04',
  'D''Angelo',
  'One Mo''Gin',
  'Voodoo',
  'neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4KdHmcUVArJeN7XPjp6Czx',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:08',
  'TEYANA TAYLOR',
  'WE GOT LOVE (FEAT.LAURYN hILL)',
  'WE GOT LOVE (FEAT. LAURYN HILL)',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:12',
  'pj morton',
  'religion',
  'gumbo',
  'neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7zO8ybrYL35j35fFgUNUOr',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:14',
  'pj morton',
  'Alright',
  'gumbo',
  'neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5tUgsfhQlMWFVOAmhcFf6B',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:18',
  'EKKAH',
  'FIGURE IT OUT (NIGHT EDIT)',
  'EKKAH X REAL LOVE - SINGLE',
  'nu disco',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4XduUKg8zhusKh2WtNnrs8',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:22',
  'tank and the bangas',
  'csfe du monde',
  'red balloon',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:27',
  'tom misch',
  'red moon',
  'red moon - single',
  'indie soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/44tb4TdFVliafU17EQg28J',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:30',
  'niciole bus',
  'RAIN',
  'kairos',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:34',
  'YUNA',
  'BEST LOVE',
  'CHAPTERS (DELUXE)',
  'malay, malaysian pop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/42ZTvtzDTTwq5J74RaZKUJ',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:40',
  'MAJID JORDAN',
  'WAITING FOR YOU (FEAT. NAOMI SHARON)',
  'WAITING FOR YOU (FEAT. NAOMI SHARON)',
  'afro house',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6ARYP4KyGydosXyxtzlDdc',
  'found',
  75.7,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:43',
  'saint mercedes',
  'patience',
  'patience - single',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:47',
  'BABY ROSE',
  'IN YOUR ARMS',
  'TO MYSELF',
  'alternative r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4gd6cpTJEyW8M5YoSil18B',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:51',
  'pj morton',
  'Good Morning',
  'good morning- sinlge',
  'neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6A4P5ehiWPgfTUjLVuWtEi',
  'found',
  72.1,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:54',
  'full crate',
  'magnetic (feat. susan carol & sergio)',
  'magnetic (feat. susan carol & sergio)',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '22:57',
  'd''angelo',
  'i found my smile again ( radio edit)',
  'i found my smile again ( radio edit)',
  'neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3uq6qe8ouF012GLOcLyWcH',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:01',
  'VULFPECK',
  'WAIT FOR A MOMENT',
  'MY FIRST CAR - EP',
  'funk, funk rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/48wH8bAxvBJO2l14GmNLz7',
  'found',
  87.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:05',
  'taka perry',
  'only u (feat. gia vorne)',
  'only u (feat. gia vorne) - single',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:08',
  'TOM MISCH',
  'LOST IN PARIS (GOLDLINK)',
  'GEOGRAPHY',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:11',
  'ANDERSON.PAAK',
  'MAKE IT BETTER (FEAT SMOKEY ROBINSON)',
  'VENTURA',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:18',
  'tank and the bangas',
  'happy town feat pell',
  'green balloon',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:21',
  'JACOB COLIER',
  'TIME ALONE WITH YOU(FEAT DANIEL CAESAR)',
  'DJESSE VOL 3',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:27',
  'pj morton',
  'claustrophobic feat pell',
  'gumbo',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:28',
  'durand jones and the indications',
  'cruisin to the park',
  'cruisin to the park - single',
  'retro soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3XITcXbaKS08ardf8ahKqM',
  'found',
  79.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:34',
  'masego',
  'navajo',
  'navajo - single',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6zWU7YALeEDMcPGhKKZJhV',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:37',
  'matt corby, tash sultana',
  'talk it out',
  'talk it out - single',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6Ug0JMAhAVvytcnwBEMb5Z',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:40',
  'H.E.R',
  'BLOODY WATERS',
  'BACK OF MY MIND (APPLE MUSIC EDITION)',
  'r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4bHLBqQzwceA3WtfWuWQfW',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:45',
  'pino palladino, blake mills',
  'soundwalk',
  'notes with attachments',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2FWjtWugcO92hGOHz4Q5Jz',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:48',
  'jon bellion',
  'wash',
  'father figure',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6KPtG0aIKnSqszstXgH2NS',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-26',
  '23:52',
  'vulfpeck',
  'simply beautiful',
  'MSG II',
  'funk, funk rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0rfIH57nkChg91tQR0oNLR',
  'found',
  100,
  '2026-01-27 15:49:41'
);

DELETE FROM wwoz_tracks WHERE date = '2026-01-27';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:01',
  'Erykah Badu',
  'Back in the Day',
  'Worldwide Underground',
  'neo soul, r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5v1SuYGd6VFMGu8nVHzajO',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:06',
  'Jill Scott',
  'Hate on Me',
  'The Real Thing: Words and Sounds Vol. 3',
  'neo soul, quiet storm',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/43xsmeThrcOkbjrvQvZB6o',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:09',
  'Jazmine Sullivan',
  'Bust Your Windows',
  'Fearless',
  'r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/56z2qI0gKcPthQF6l8AW3E',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:13',
  'Theophilus London',
  'Get Me Right',
  'Vibes',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4roselHUDhHf6HGRn6GbVV',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:16',
  'Killer Mike & Anthony Hamilton',
  'NOBODY KNOWS',
  'Michael & The Mighty Midnight Revival, Songs For Sinners And Sai',
  'southern hip hop, alternative hip hop, neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/33Vhm96V7UkegsXlfhMgXq',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:19',
  'Bonobo',
  'Day by Day (feat. Kadhja Bonet)',
  'Fragments',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:25',
  'DRAMA',
  'Make It Look Easy',
  'Platonic Romance',
  'indie soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6Bi1lV0ItrGkWx69duiqz1',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:28',
  'Jamie xx & The Avalanches',
  'All You Children',
  'All You Children',
  'plunderphonics',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3cfgisz6DhZmooQk08P4Eu',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:32',
  'SBTRKT',
  'OUTSPOKEN',
  'OUTSPOKEN - EP',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3NGQtmEHfAeLyyTYvAbfd1',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:35',
  'Channel Tres',
  'Topdown',
  'Channel Tres',
  'hip house',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/17MK2u7iHFpNb3tPuJnUdw',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:39',
  'Kaytranada, Amine, Amaarae',
  'Sossaup',
  'KAYTRAMINE',
  'alté, afrobeats, afro r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1jFcVCd4gKDiwmj7JsD8Jd',
  'found',
  74.8,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:41',
  'Sudan Archives',
  'YEA YEA YEA',
  'THE BPM',
  'alternative r&b, indie soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5b47NgMdbR9KQrwoTSnlcD',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:46',
  'Degiheugi',
  'The Last Opening (feat. N''Zeng)',
  'The Last Opening (feat. N''Zeng)',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:51',
  'Ralph Castelli',
  'Spinning Rooms',
  'Spinning Rooms',
  'bedroom pop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2XJU0TP8vgVBpOfiO2Mpnu',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:55',
  'Swim Surreal and Zero',
  'Masquerade (feat. Lou Stone)',
  'In The Half Light',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '00:59',
  'Flying Lotus',
  '9 Carrots (feat. Toro y Moi)',
  'Flamagra',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:02',
  'Terrace Martin',
  'Beige (feat. Arin Ray and Elena Pinderhughes)',
  'Beige',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:07',
  'El Michels Affair & Black Thought',
  'Glorious Game',
  'Glorious Game',
  'east coast hip hop, alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1EbvT0QXJmpAFCv8uoR8qT',
  'found',
  92,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:11',
  'Sault',
  'Protector',
  'Chapter 1',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2CgawGpycDdoW6sXDH5242',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:15',
  'Yttling Jazz & Yukimi',
  'Distant Star',
  'Distant Star - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6Fwiva6DbeuNxm3vyvvNs7',
  'found',
  100,
  '2026-01-27 07:58:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:17',
  'Mount Kimbie',
  'Home Recording',
  'Cold Spring Fault Less Youth',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6u7fKTA69IMcHQ8O7ZCBzd',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:27',
  'Thievery Corporation & Emiliana Torrini',
  'Until the Morning',
  'The Richest Man in Babylon',
  'trip hop, downtempo, acid jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7nNUSD1jkWC71zIOUWY03E',
  'found',
  79,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:31',
  'Future Islands',
  'Seasons (Waiting On You) [BADBADNOTGOOD Reinterpretation]',
  'Seasons (Waiting On You) [BADBADNOTGOOD Reinterpretation]',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5hY5OIvR2PSCFjJgxJ6Csh',
  'found',
  82.4,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:36',
  'Broken Bells',
  'High Road',
  'Broken Bells',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:39',
  'TV On The Radio',
  'Young Liars',
  'Young Liars',
  'indie rock, indie',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5FMhejeHdxTibd9T0pfurT',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:47',
  'Maze Featuring Frankie Beverly',
  'Can''t Get Over You',
  'Silky Soul',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:51',
  'Teddy Pendergrass',
  'Close the Door',
  'Life Is A Song Worth Singing',
  'philly soul, quiet storm, classic soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/53m3UkzcaQVbB2DENsrJiK',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '01:57',
  'Jodeci',
  'Forever My Lady',
  'Forever My Lady',
  'new jack swing, quiet storm, r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2pY99npaZKTVAyw2DhV9Bo',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '04:29',
  'Schatzy',
  'Every Day Is Mardi Gras',
  'Macaroni and Bees',
  '',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/4IlLbR8eBdJRUnkENDXtRb',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:06',
  'Brandee Younger',
  'Breaking Point',
  'Gadabout Season',
  'experimental jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1GBhD4Zt8NDlymcw8C6A2K',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:06',
  'Mop Mop feat. Wayne Snow',
  'Supreme',
  'Lunar Love',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:06',
  'shabaka',
  'A future untold',
  'A Future Untold',
  'ambient jazz, indie jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6gthXQDyhf3OaWw3QvuYtA',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:12',
  'Mara Hruby',
  'simply beautiful',
  'From Her Eyes',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5KDMP9liRDjwDeqrwEdeTL',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:14',
  'Sabine McCalla',
  'Sunshine Kisses',
  'Don''t Call Me Baby',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2M98LYO5rEMZg0xr4eFfPb',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:19',
  'Khalab, Emanative, Tamar Osborn, Grove',
  'Conscious Friendship',
  'Layers',
  'singeli, indie jazz, nu jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/15PAiJjB1WMVJAPxgHeycd',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:22',
  'The Dymanics',
  'Move On Up',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:27',
  'West African Rhythm Brothers',
  'I Am Stranger',
  'London is the Place For Me',
  'calypso, highlife',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6aZl7ce6u1WFQC6yIAcR7s',
  'found',
  93,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:32',
  'Julian Lage, John Medeski, Jorge Roeder, Kenny Wolleson',
  'Solid Air',
  'Scenes From Above',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:35',
  'Fabiano do Nascimento',
  'Train to Imagination',
  'Solstice Concert',
  'brazilian jazz, ambient jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/33pidhnSMJNvlptExUWauy',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:40',
  'Sarah Quintana',
  'Miss River',
  'Live in Marseille',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/01uhy3WnippFHp7WnYFFSN',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:43',
  'Lloyd McNeill Quartet',
  'City Tryptich',
  'Washington Suite',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '06:56',
  'Roy Porter Sound Machine',
  'Hense Forth',
  'The Story',
  'jazz funk',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3FmGKVx0eytx91uaF9mULS',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:06',
  'Esther Phillips',
  'Please Send Me Someone to Love',
  'Burnin''',
  'northern soul, motown',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4R8JYMx2clFyQfixFNq5jv',
  'found',
  88.8,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:09',
  'Brenda and the Tabulations',
  'Dry Your Eyes',
  'Dry Your Eyes',
  'philly soul, classic soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5mlv9Y2cPCjZzppbkWYsKR',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:12',
  'Big Bill Broonzy',
  'This Train',
  NULL,
  'blues, country blues, classic blues',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0hoTuAA2XMh8mc9t2wFqY5',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:15',
  'Chet Baker',
  'That Old Feeling',
  'Chet Baker Sings',
  'jazz, cool jazz, vocal jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2d64G7VaZdHQuAquz5HQNu',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:18',
  'LaVerne Baker',
  'Soul on Fire',
  'Best of',
  'doo-wop, boogie-woogie, swing music',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3mAXbZJLq6d2vNDM92eFYl',
  'found',
  72,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:21',
  'Jimmy Liggins and His Drops of Joy',
  'Cadillac Boogie',
  NULL,
  'boogie-woogie',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0N143ZIbhVs7xVAOHVk8E9',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:25',
  'Kenny Ball and His Jazzmen',
  'Your Mother Should Know',
  NULL,
  'swing music, big band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/00q9Vjphn0sknO2RY1arUf',
  'found',
  90.4,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:29',
  'Jackie Opel',
  'Old Rocking Chair',
  'Ska Sounds',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4kqjObft8GvYS1Gh4IyeX9',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:33',
  'Zoot Sims',
  'CRAZY RHYTHM',
  'Night Session In Paris',
  'cool jazz, jazz, jazz ballads',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5ZDXQiV554AHNRhxV6OOBN',
  'found',
  98,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:35',
  'Duke Ellington',
  'Jump For Joy',
  'The Feeling of Jazz',
  'jazz, big band, swing music',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3deFunnSjWA8zbx3kvZcVH',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:38',
  'Ray Charles',
  'A Fool For You',
  NULL,
  'soul, soul blues, blues',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7uMb8RUN7S0bXdWXpI2euL',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:41',
  'Andrew Bird',
  'Candy Shop',
  NULL,
  'baroque pop, indie folk',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1LYTUOsIiXufvKRvw8OTz4',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:44',
  'Leyla McCalla',
  'money is king',
  'The Capitalist Blues',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0dOMCLcbrTbcqmIHsP3FW3',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:47',
  'Preservation Hall Jazz Band feat. Pete Seeger & Tao Rodriguez Se',
  'Blue Skies',
  'Preservation',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:50',
  'Swamp Kitchen',
  'T''Aaint Nobody''s Business',
  'Protein',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:54',
  'The Skatalites',
  'A Shot in the Dark',
  NULL,
  'rocksteady, ska, soul jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1jFMWbOfQYoUARj6yUkl0D',
  'found',
  72.6,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '07:56',
  'Dixie Cups',
  'Two Hey Pocky Way',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:00',
  'Ben Lamar Gay and Angel Bat Dawid',
  'Sophisticated Lady',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:06',
  'Donald Byrd',
  'Book''s Bossa',
  'Slow Drag',
  'hard bop, jazz funk, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2VdeoXxw8FUB9KQ4WCT1Xk',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:06',
  'Erroll Garner',
  'Wild Music',
  NULL,
  'jazz, jazz ballads, cool jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7wS94SSkAxwYiCsauxuqWc',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:14',
  'Louis Armstrong and Leon Thomas',
  'The Creator Has A Master Plan',
  'Louis Armstrong and Friends',
  'jazz, swing music, vocal jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4pWD5K1JMrJrNr3HYV7JWU',
  'found',
  86.4,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:18',
  'Bola Sete',
  'Menino Desce Dai',
  NULL,
  'brazilian jazz, bossa nova',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6Lr1P06wekkqDVPk19CAf7',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:19',
  'West African Swing Stars',
  'E.T. Mensah''s Rolling Ball',
  NULL,
  'calypso, highlife',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5T9nfDSIUuf43wo608MYUa',
  'found',
  100,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:21',
  'Village Callers',
  'The Frog',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7b7whrDOSOpidPTA1dl8EX',
  'found',
  83,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:26',
  'Gabor Szabo',
  'Fire Dance',
  'Dreams',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-27 15:49:41'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:43',
  'Bobby Ellis',
  'Step Softly',
  'Step Softly',
  'rocksteady, dub, roots reggae',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5pcyis7ymhQRZHZEVTyWBK',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:43',
  'Hypnotic Brass Ensemble',
  'City Livin',
  'Fly',
  'brass band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3Sh4aiEc01co6ztB4R1GLC',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:46',
  'Magnetic Ear',
  '99 Luftballons',
  'Live at Vaughans',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1KyBisCGMVWzlBs9uPtwyR',
  'found',
  88.1,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:49',
  'The New Don Ellis Band',
  'Bulgarian Bulge',
  'Goes Underground',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '08:52',
  'Lonnie Liston Smith',
  'On the Real Side',
  'Love is the Answer',
  'jazz funk, jazz fusion, acid jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5D4xwWxVngnJnpgrqEYyIc',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
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
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:08',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:11',
  'Sidney Bechet',
  '''Taint a Fit Night Out For Man o',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:16',
  'Pfister Sisters',
  'Too Darn Hot',
  'New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:20',
  'Firehouse Five Plus Two',
  'A Hot Time In The Old Town',
  'Goes To A Fire',
  'ragtime, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/5LfkpWZArxCvpRx26j4m3U',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:23',
  'Tim Laughlin',
  'Caravan',
  'New Orleans Rhythm',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0qOhuWjm2AvbFa0VdZ2nn9',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:29',
  'ELLA FITZGERALD',
  'BLACK COFFEE',
  NULL,
  'vocal jazz, jazz, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/5hQ6kl1tI07bbphG2Jr8ic',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:32',
  'Kevin Clark',
  'St. Louis Blues',
  'New Orleans Jazz Brunch',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/43XaRC2t2phmUYOKiAGfWh',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:37',
  'Tuba Skinny',
  'Cold Morning Shout',
  'Pyramid Strut',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:42',
  'Ella Fitzgerald/Louis Armstrong',
  'It Ain''t Necessarily So',
  'Porgy And Bess',
  'vocal jazz, jazz, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/4NmkXDQApwxzAJPvgq3AeM',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:52',
  'Ella Fitzgerald',
  'Bill Bailey, Won''t You Please Come Home',
  'Live on Ed Sullivan Show',
  'vocal jazz, jazz, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/43KOEciQpZGMVrBsUoPkVk',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '09:55',
  'Dr. Michael White',
  'Summertime',
  'Jazz From The Soul Of New Orlean',
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1zYGFPoCxDzPxcBXP3YEPk',
  'found',
  98,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:03',
  'Lillian Boutte',
  'That Old Feeling',
  'Jazz Book',
  'christian jazz, boogie-woogie, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/62yP95E3lkYyMTJscMdPgI',
  'found',
  70.2,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:08',
  'Kermit Ruffins',
  'Happy Birthday',
  'World On A String',
  'brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2wb3E4RNj4W7eq4p242uVw',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:13',
  'Kevin Louis and the Palm Court Jazz Band',
  'Milneburg Joys',
  'Last Chance To Dance',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0M5JrSHkTef8290JxacyDk',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:18',
  'Preservation Hall Jazz Band',
  'Wrap Your Troubles In Dreams',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:25',
  'Pud Brown And His New Orleans Ja',
  'Eh La Bas',
  'Palm Court Strut',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:30',
  'Don Ewell',
  'Gee Baby, Ain`t I Good To You',
  'Music To Listen To Don Ewell By',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6lsEDOco3J2Fak9bzXtHQC',
  'found',
  93.9,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:39',
  'Ella Fitzgerald',
  'Goody Goody',
  NULL,
  'vocal jazz, jazz, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2UjFhuGg3qHmwB97uHEBCe',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '10:57',
  'Silver Leaf Jazz Band',
  'Why Don`t You Go Down To New Orl',
  'Streets & Scenes Of New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6K41ULI7b8k7o7LKCN1tGW',
  'found',
  92.8,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:00',
  'Brother Jack McDuff`',
  'The Shadow of Your Smile',
  'Tobacco Road',
  'soul jazz, jazz funk, hard bop',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6e288Qrwpt8ayYbMhHUXam',
  'found',
  78.8,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:05',
  'Harry Connick Jr.',
  'The Preacher',
  'Smokey Mary',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6jc05RNZubUuqa4wqbdPql',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:11',
  'Ruben Ramos',
  'Ai Ai Ai',
  'A Tribute to the King of Zydeco',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:13',
  'Clifton Chenier',
  'Bogalusa Boogie',
  'Bogalusa Boogie',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5aVCwOIotMuEvsvCEbKJLD',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:22',
  'Nicholas Payton',
  'Not Far From Gangsterhood',
  'Notes from the Zen Gangster',
  'jazz',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/13v6ESeHCL6133k2aZkkOk',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:22',
  'Paul Sanchez',
  'Mysterious Waltz',
  'The Best Bards Know',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5R9XuxCt9u9yynlVJNN9cP',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:28',
  'Brad Walker',
  'Walker of the Clouds',
  'A Sliver of Cartharsis',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2UNv6HQdZv8gFtMMfEhMM8',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:31',
  'Dr. Michael White',
  'Jambalaya Strut',
  'Dancing In The Sky',
  'ragtime, brass band, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/36Z0nGEIVfvWjZ9XJO8Zem',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:45',
  'Dr. John',
  'Goin` Back To New Orleans',
  'Goin` Back To New Orleans',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4pdtvBjDw8YylroBZKotIy',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:50',
  'Snooks Eaglin',
  'Boogie Children',
  'The Legacy of Blues Vol.2',
  'blues, classic blues, country blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0dAH6Ls8Kbyr1dkB8Ycjng',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:53',
  'John Rankin',
  'You Talk Too Much',
  'Fess` Mess',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0exVK274ikTSXI8Ckt34Om',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '11:58',
  'Robert Eustis',
  'It''s Gone',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:01',
  'Little Freddie King',
  'Hot Fingers',
  'You Don`t Know What I Know',
  'blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/777sBEeW0dl1lUztM83Ddo',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:04',
  'Marva Wright',
  'Ain`t Nothin` You Can Do',
  'Heartbrakin`',
  'zydeco, blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1x1WqohX2xXEr2pe3DcrHw',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:07',
  'Ruthie Foster',
  '`Cuz I`m Here',
  'The Phenomenal Ruthie Foster',
  'blues, modern blues, blues rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1P335Anzhef9a21HofENTZ',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:10',
  'Little Queenie',
  'Slingshots and Boomerangs',
  'Purple Heart',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2XPj66SsJIUueDYahWjAWe',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:15',
  'Cole Williams',
  'Opposites Attract',
  'Sin City The Mixtape',
  'retro soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/25Y97qwfH7MB6APseHQPE5',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:19',
  'Mia Borders',
  'Love You',
  'Fever Dreams',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/429R9hOvuYXjXogmERwe5k',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:24',
  'Tank And The Bangas',
  'Rhythm of Lite',
  'Think Tank',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:29',
  'Big Freedia',
  'Chasing Rainbows',
  NULL,
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0yyGPysKQydf4hWluXRD6O',
  'found',
  81.5,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:33',
  'Mahmoud Chouki',
  'St James Infirmary',
  'Caravan From Marrakech to New Or',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6846zwjK2dIYMyMTyDkLEn',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:36',
  'Carmela Rappazzo',
  'Travelin''',
  '9',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:41',
  'Lost Bayou Ramblers',
  'Louisiana Boogie',
  'Pilette Breakdown',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1i2eKONKjWBUmLQiCt6zAe',
  'found',
  89.7,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:43',
  'Bruce Sunpie Barnes',
  'Louisiana Saturday Night',
  'Loup Garou',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:47',
  'Wild Iris Brass Band',
  '9 To 5',
  'Way Up',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:52',
  'Wayne Maureau',
  'Parading in the Quarter',
  'Home Grown',
  'latin jazz',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7xDyjKzpgMA1YLCX1fCIAK',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '12:56',
  'Preservation Hall Jazz Band',
  'Baby Won`t You Please Come Home',
  'Preservation- An Album To Benefi',
  'brass band, swing music, ragtime',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3ZcMnKhTbms1DZ5TlPpdvN',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:06',
  'Clarence Gatemouth Brown',
  'Going Back To Louisiana',
  'Back To Bogalusa',
  'blues, classic blues, modern blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5JHcdhriOeUkjXlgEIO1o4',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:10',
  'Camile Baudoin',
  'A Certain Girl',
  'This Old House',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:14',
  'John Fohl',
  'When I Hear That Rooster Crow',
  'Time Ain`t Waitin`',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:18',
  'Radiators',
  'Down On The Corner',
  'Snafu 10-31-`91',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:21',
  'John Boutte & Uptown Okra',
  'City of New Orleans',
  'Carry Me Home',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:26',
  'Lillian Boutte',
  'Let There Be Love',
  'But...Beautiful',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:31',
  'Aaron Neville',
  'Tell It Like It Is',
  'Ultimate Collection',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7GSRH3L0HAM3StkAkYVamC',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:34',
  'Aaron Neville',
  'Cry Me A River',
  'Nature Boy',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2meF7fNPTiSJjLmF8Ea2Tk',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:38',
  'Matt Lemler',
  'Homecoming',
  'Homecoming',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:43',
  'Ingrid Lucia',
  'Mississippi River Blues',
  'Wanderlust',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5ZTQU1s7y3YZnABNb6nDSP',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:48',
  'Tuba Skinny',
  'Jackson Stomp',
  'Rag Band',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:51',
  'Tommy Malone',
  'Home',
  'Natural Born Days',
  'americana, roots rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0VqpVifpVpwuVhFCAnTiYp',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '13:56',
  'Lenny McDaniel',
  'I`m Leavin`',
  'Blues Side',
  'russelåter, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0Nw2LYXVEYefp0NEWoBoxk',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '16:03',
  'sun ra',
  'otherness blue',
  'my brother the wind',
  'free jazz, experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/7ICQLR13O9icckdsk4yMdq',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '16:09',
  'miroslave vitous',
  'when face gets pale',
  'infinite search',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '16:15',
  'amina claudine myers',
  'STEAL AWAY',
  'solace of the mind',
  'free jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5NF7IN5ygvDqDU5ELJSGb9',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '16:17',
  'Miguel Zenon Quartet',
  'Abre Cuto Guiri Mambo',
  'Vanguardia Subterranea: Live at the Village Vanguard',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '16:25',
  'Brandee Younger',
  'BBL',
  'Gadabout Season',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5TnePvtynwyVXjQYbKCsyR',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '16:32',
  'bobbie gentry',
  'since i fell for you.',
  'windows on the world',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6bQVF9Dd5kbP1rms2uociV',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '16:59',
  'chris cheek',
  'go on, dear',
  'keepers of the eastern door',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '22:30',
  'Aaron Neville',
  'Hercules',
  'Ultimate Collection',
  'classic soul',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/0wRejfFXjZa1TGeJ7kDPCT',
  'found',
  100,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '22:38',
  'Dash Rip Rock - PAIN PILLS NEVER',
  'Pain Pills Never Expire',
  'A Song In Everyone',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '23:49',
  'Alex McMurray',
  'Gluestick Situation (SINGLE)',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 07:57:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-27',
  '23:58',
  'Jonathan Batiste',
  'Green Chimneys',
  'Live In New York- At The Rubin M',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1n0cAZgSmrPAGVmQZxyQsE',
  'found',
  70.4,
  '2026-01-28 07:57:28'
);

DELETE FROM wwoz_tracks WHERE date = '2026-01-28';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:02',
  'John Coltrane',
  'Welcome',
  'The Gentle Side of John Coltrane',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6875x2ACym3agd95Ma677q',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:08',
  'Unhinged Sextet',
  'Low Talk',
  'Don''t Blink',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3IRzFU9FxfZdj7Al8apruI',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:17',
  'Yotam Silberstein',
  'Future Memories',
  'Future Memores',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:23',
  'Shabaka Hutchings',
  'Prints Tie',
  'Blue Note Re:imagined',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:36',
  'Abdullah Ibrahim',
  'Trace Elements of Monk',
  'Mukashi (Once Upon a Time)',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:36',
  'Ali Ryerson Jazz Flute Big Band',
  'Stolen Moments',
  'Game Changer',
  'big band',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6xSwztgxBJkGlz5ErYGqND',
  'found',
  93.1,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:43',
  'Jim Snidero',
  'Blackberry Winter',
  'For All We Know',
  'jazz, smooth jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4hn5nH7SzcgQ7UjK5mJRpH',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:49',
  'Niels-Henning Orsted Pedersen',
  'The Puzzle',
  'Those Who Were',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7MRgJDNmadMvNhC8XEicod',
  'found',
  80.2,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:56',
  'Wes Montgomery',
  'Snowfall',
  'So Much Guitar! (Original Jazz Classics Remasters)',
  'jazz, hard bop, cool jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2JhJvwvoWhFm27wyxPE84m',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '06:59',
  'Anat Fort',
  'Byablue',
  'The Dreamworld of Paul Motian',
  'ambient jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2vubGTuSu6nqis7GiN1H2j',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:05',
  'Ginger Baker',
  'Mountain Time',
  'Horses & Trees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:09',
  'Warren Wolf',
  'Frankie & Johnny',
  'Wolfgang',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1QBlX105WVUG0PdXLbX6Ew',
  'found',
  87.9,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:17',
  'John Abercrombie',
  'Gimme Five',
  'Open Land',
  'jazz fusion, ambient jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5rqq7EioRiHmudNu6kqI8Y',
  'found',
  98,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:24',
  'Kyle Roussel',
  'On Green Dolphin Street',
  'Rookie of the Year',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3S6Y3Rl0Z2DYwFacGzQADa',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:30',
  'John Zorn, George Lewis, Bill Frisell',
  'News for Lulu',
  'News for Lulu',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:33',
  'Lawrence Sieberth',
  'Icarus part IV',
  'Mythologie',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3RBUcj75E2hWAPIZhnKwkQ',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:39',
  'Oregon',
  'Sail',
  'Music of Another Present Era',
  'jazz fusion, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7gkpaDCSdbOm3PmUDnSlY8',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:44',
  'Bill Frisell',
  'Procissao',
  'The Intercontinentals',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0JQeR30pYmAkX6s0CCgjI8',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:51',
  'Ginger Baker Trio',
  'Ginger Blues',
  'Going Back Home',
  'jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/59YSP8cWc0n0TbmGfJRar5',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '07:56',
  'Eddie Harris',
  'Sham Time',
  'The Electrifying Eddie Harris',
  'soul jazz, jazz funk, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0CUoC8K0FTM5Cpg7ohT2kB',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:02',
  'Lisa Hilton',
  'Getaway',
  'Getaway',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6mxNrCbQNO64yS8rClyfa7',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:05',
  'Dave Stryker',
  'The Fool on the Hill',
  'Blue Fire - The Van Gelder Session',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:11',
  'Al Di Meola',
  'Strawberry Fields',
  'Pursuit of Radical Rhapsody',
  'jazz fusion, flamenco',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/23IJwIH0qyRE3w5GVxVbxr',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:15',
  'Pat Martino',
  'Road Song',
  'Footprints',
  'jazz, jazz fusion, jazz ballads',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6u1aZcfLlSi45kM1s2nnPu',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:22',
  'Jon Batiste',
  'Lonely Avenue',
  'BIG MONEY',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/43fnovfvtK8e3PFuiYx2Wt',
  'found',
  73,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:26',
  'Stanley Turrentine',
  'River''s Invitation',
  'The Best of Stanley Turrentine: The Blue Note Years',
  'hard bop, jazz, soul jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5kak4odCm0VuDDEY5NDwPj',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:32',
  'Maceo Parker',
  'Blues for Shorty Bill',
  'Southern Exposure',
  'jazz funk, funk, soul jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0ZwigTmCBUwtVEvjx8RjDd',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:36',
  'Chet Baker/Wolfgang Lackdrshmid',
  'The Latin One',
  'Quintet Sessions, 1979',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:39',
  'Kenny Barron Trio',
  'Shuffle Boil',
  'Book of Intuition',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7uzy3RchE1PrvT6iVmfsSZ',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:46',
  'Nir Felder',
  'Bandits',
  'Golden Age',
  'afro-cuban jazz, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/628GwdalL4B4ReEOeUva2V',
  'found',
  98,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:53',
  'Leo Kottke',
  'A Child Should Be a Fish',
  'Ice Water',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7qv9Jd4axVqRiwNHqKWHCB',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '08:58',
  'Henry Butler, & Steven Bernsstein & The Hot 9',
  'Some Iko',
  'Viper''s Drag',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:06',
  'FATS WALLER',
  'YOU''RE SO DARNED CHARMING',
  'TYHE COMPLETE FATS WALLER VOL II',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:10',
  'HELEN PROCTOR',
  'TAKE ME ALONG WITH YOU',
  'RED ALLEN AND THE BLUES SINGERS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3b9kkaWjANTWTbLmOT7NCi',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:13',
  'WILLIE BRYANT AND HIS ORCHESTRA',
  'STEAK AND POTATOES',
  'WILLIE BRYANT, JIMMIE LUNCEFORD AND THEIR ORCHESTRAS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:21',
  'LOUIS ARMSTRONG AND HIS ORCHESTRA',
  'TIGER RAG',
  'LOUIS ARMSTRONG 1930-31',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1oH2s82wQYk0VYaCybfNmC',
  'found',
  70.3,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:22',
  'ETHEL WATERS',
  'STORMY WEATHER',
  'ETHEL WATERS 1931-34',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5n2AZNomNhK9L2l1dNS4GM',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:23',
  'HENRY',
  'YOU MIGHT GET BETTER, BUT YOU''LL NEVER GET WELL',
  'HENRY',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:33',
  'EDDIE CARLEW''S BABY ARISTOCRATS ORCHESTRA',
  'INDIANA MUD',
  'TWIN CITIES SHUFFLE',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:33',
  'ISABELLA PATRICOLA',
  'ON THE Z-R-3',
  'THE RED HOT MAMAS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:38',
  'VICK MYERS',
  'FLAG THAT TRAIN',
  'GEORGIA STOMP',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:46',
  'CHICK WEBB AND HIS ORCHESTRA',
  'LONA',
  'CHICK WEBB 1929-34',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:46',
  'LIL HARDIN ARMSTRONG',
  'HARLEM ON SATURDAY NIGHT',
  'LIL HARDIN ARMSTRONG 1936-40',
  'swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1it29SVLL2fhnfQvdaR52p',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:57',
  'PIRON''S NEW ORLEANS ORCHESTRA',
  'GHOST OF THE BLUES',
  'NEW ORLEANS STOMP',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3BQG9I2RETjtTqWiQIJxXm',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:57',
  'THE CHOCOLATE DANDIES',
  'SMACK',
  'THE CHOCOLATE DANDIES 1928-40',
  'jazz, jazz ballads, bebop',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0dPGmnwdRIJys5MnW5C8wn',
  'found',
  70,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '09:58',
  'CORA GARNER',
  'I AIN''T GOING TO SELL YOU NONE',
  'FEMALE BLUES SINGERS VOL. F/G',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0OXMoaGMrJWiwf4tzpXTlt',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:11',
  'KING OLIVER AND HIS DIXIE SYNCOPATORS',
  'LAZY MAMA',
  'KING OLIVER AND HIS DIXIE SYNCOPATORS VOL TWO',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/35NbQfMgK3u5KR2w6JV91H',
  'found',
  93,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:11',
  'PAPALIA AND HIS ORCHESTRA',
  'CROSS WORD MAMA, YOU''RE PUZZLING ME',
  'SHAKE IT DOWN',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/45lk9c7Dn18TppP5UhFQUl',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:14',
  'JOHNNY DEDROIT AND HIS NEW ORLEANS ORCHESTRA',
  'BROWN EYES',
  'NEW ORLEANS IN THE 20''S',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:14',
  'MONK HAZEL AND HIS BIENVILLE ROOF ORCHESTRA',
  'IDEAS',
  'SIZZLING THE BLUES',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/09JPZUjx8zYtujkhdEFZZn',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:22',
  'JOE HAYMES AND HIS ORCHESTRA',
  'LET''S HAVE A PARTY',
  'JOE HAYMES AND HIS ORCHESTRA',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:24',
  'ANNETTE HANSHAW',
  'GIVE ME LIBERTY OR GIVE ME LOVE',
  'BENNY GOODMAN ACCOMPANIES',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:37',
  'ADELAIDE HALL',
  'DOIN'' WHAT I PLEASE',
  'ADELAIDE HALL CROONING BLACKBIRD',
  'ragtime, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3zej5L8cWN5v3EZphRbG9e',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:37',
  'BEN POLLACK AND HIS PARK CENTRAL ORCHESTRA',
  'SONG OF THE BLUES',
  'FUTURISTIC RHYTHM',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:37',
  'CAB CALLOWAY AND HIS COTTON CLUB ORCHESTRA',
  'EVENIN''',
  'CAB CALLOWAY 1932-34',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:48',
  'JACK PETTIS AND HIS PETS',
  'DRY MARTINI',
  'JACK PETTIS VOLUME 2',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:48',
  'PAUL WHITEMAN AND HIS ORCHESTRA',
  'REACHING FOR SOMEONE AND NOT FINDING ANYONE THERE',
  'PAUL WHITEMAN AND HIS ORCHESTRA FEATURING BING CROSBY',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:48',
  'STUFF SMITH AND HIS ONYX CLUB BOYS',
  'I DON''T WANT TO MAKE HISTORY',
  'STUFF SMITH 1936-39',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:50',
  'ADRIAN ROLLINI AND HIS ORCHESTRA',
  'WHO WALKS IN WHEN I WALK OUT',
  'ADRIAN ROLLINI AND HIS ORCHESTRA 1933-34',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '10:50',
  'CLAUDE HOPKINS AND HIS ORCHESTRA',
  'MY GAL SAL',
  'CLAUDE HOPKINS 1934-35',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
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
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:14',
  'Meters',
  'He Bite Me',
  'Kickback',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2F27kmdG1igxcDqGRxdDIa',
  'found',
  73.9,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:19',
  'john boutte',
  'at the foot of canal street',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:29',
  'tony joe white',
  'who you gonna voodoo now',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:33',
  'bonerama',
  'Ride Your Pony',
  'so much love',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:34',
  'matt perrine',
  'sunflower city',
  'sunflower city',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:41',
  'Danny Barker',
  'Danny''s Banjo Blues',
  'New Orleans Jazz Man n Raconteur',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:45',
  'Deacon John',
  'Jumpin` In The Morning',
  'Jump Blues',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:56',
  'earl king',
  'seduction',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:57',
  'big sam',
  'king of the party',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '11:57',
  'the riverbenders',
  'country mile',
  'The River Benders',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:08',
  'bonerama',
  'empty world (so much love)',
  'so much love',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:08',
  'dr. john',
  'do you call that a buddy',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0Nx6f36lldRSpc2LWFJV0r',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:14',
  'doc cheatham and nicholas payton',
  'how deep is the ocean',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:21',
  'steve conn',
  'the one and only truth',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0Svdv1B9D5pfnSmTRHuT54',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:24',
  'Johnny Sansone',
  'Pig`s Feet And Tail Meat',
  'Watermelon Patch',
  'modern blues, blues, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0FullrxhQ0EJV4VxlhJY5T',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:28',
  'johnny sansone',
  'pigfoot and a bottle of beer',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:31',
  'bonerama with johnny sansone',
  'derelict junction',
  'so much love',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:41',
  'Neville Brothers',
  'Fever',
  'The Very Best Of The Neville Bro',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1JSMgcD2z7AGXsOSdVhA2J',
  'found',
  86,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '12:51',
  'tab benoit',
  'nice and warm',
  NULL,
  'blues, cajun, modern blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4jnPYue0wHJbvze1tl7t3j',
  'found',
  98,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:00',
  'Camile Baudoin',
  'I Aint Ready For It',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:01',
  'Ivan neville',
  'Meanwhile',
  'Listen Here',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:06',
  'Bonerama',
  'Ohio',
  'so much love',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:13',
  'Corey Henry & The Treme Funkte',
  'Trumpets Not Guns',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:21',
  'Rebirth Brass Band',
  'Roll With It',
  'We Come To Party',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5wcMlsdZJ2nNvmbCHpryDi',
  'found',
  98,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:29',
  'The Wild Magnolias',
  'Life Is A Carnival',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1CYt8hnBEwigMBnEWA13a0',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:32',
  'johnny sketch',
  'everybody got trouble',
  NULL,
  'cajun, brass band',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1cPNO25kbNKm3ay5XUXlXX',
  'found',
  70.9,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:34',
  'Original Pin Stripe Brass Band',
  'Dancin` At The Mardi Gras',
  'I Wanna Go Back To New Orleans',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:40',
  'Meters',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3KfmYf7PTtFNYFNNhsdLZt',
  'found',
  73.9,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:53',
  'bonerama',
  'meters medley',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:54',
  'Steve Conn',
  'Mardi Gras Morning',
  'SINGLE',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0lMW1wERB9bx2KvymdZl6R',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:57',
  'GGGG',
  'Mardi Gras Morning',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '13:59',
  'John Sinclair, Mark Stone, Armand StMartin',
  'Crossroad Blues',
  'LIVE ON WWOZ - Jam Session',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:01',
  'Big Daddy O''',
  'Got No Blues Today',
  'LIVE ON WWOZ',
  'blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5Bn45xjNWka1rT8yX82Sas',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:03',
  'Eddie Martin',
  'Flowers To The Desert',
  'LIVE ON WWOZ - SATCR - 2008',
  'blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0QrZuSW2gcH8N3F4rwfcZI',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:07',
  'Justin O''Baugh',
  'I Ain''t Drunk',
  'I Ain''t Drunk',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:09',
  'Paul Broody ft Mikey Jr',
  'Every Dog Got His Day',
  'Soul Gone Blu''',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:12',
  'Matt Schofield Trio',
  'Wellington Shuffle',
  'Many Moons, Vol 1.',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:15',
  'Bernie Marsden',
  'Calling Card',
  'Icons',
  'blues rock, modern blues, blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/70aL9SyPGEumRKPzZY14R3',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:20',
  'Mick Clarke',
  'Banker''s Blues',
  NULL,
  'blues rock, blues, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/2pw7neUDNzTcYw7rN2tsms',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:23',
  'Tinsley Ellis',
  'Sweet Ice Tea',
  'Labor Of Love',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:26',
  'Hammer To The Cross',
  'Even The Lord Plays The Blues',
  'Light & Salvation',
  'country christian, christian rock, outlaw country',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0KXRyexaDn1tty7SQrfdYs',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:31',
  'Conner Selby',
  'I Won''t Be Hard To ind',
  'The Truth Come Out Eventually',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:36',
  'Jimmy Johnson',
  'Ashes In My Ashtray',
  'Delmark 70th Anniversary Blues Album',
  'blues, classic blues, soul blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5aOcdsXJ3JuyE2h14Nrkw6',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:40',
  'Dean Zucchero',
  'Never Fade Away feat John Nemath & Tiffany Pollack',
  'Song For Sinners',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:46',
  'Delta Blues Outlaws',
  'Juke Joint Shuffle',
  'Juke Joint Shuffle',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:47',
  'Hubert Sumlin',
  'No Panties On The Bus',
  'No Panties On The Bus (Howlin'' Wolf Story)',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:52',
  'Early Times & The High Rollers',
  'Abandoned Child',
  'Fallen Angels',
  'blues rock, blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6bZMGO6JM7NormCfpDXj5B',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '14:56',
  'Joanne Shaw Taylor',
  'Hell Or High Water',
  'Hell Or High Water',
  'blues, blues rock, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5CVi1Y4FCzWAi9cY1gHl8K',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:00',
  'Bob Corritore',
  '5th Position Plea',
  'Taboo',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:05',
  'Rocky Denney',
  'Colorblind',
  'Colorblind',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:08',
  'Hexbender',
  'Louisiana Blues',
  'Delda Blues From The Bayou',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:12',
  'Ryan Hartt',
  'That''s Right, Your Wrong',
  'Be About It!',
  'blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0KCqTxZ4I9TeCQTZ3VGvbT',
  'found',
  87.1,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:15',
  'Omar & The Howlers',
  'When Sugar Cane Was King',
  'Delta Blues From The Bayou',
  'blues, blues rock, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/3mBk0xHeZJTOrOp5v4yAJx',
  'found',
  86.7,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:21',
  'Larry McCray',
  'Bye Bye Blues',
  'Heartbreak City',
  'blues, blues rock, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5Jt0pqmlwTY6ryd0WmLAqL',
  'found',
  100,
  '2026-01-28 22:40:48'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:25',
  'Handsome Jack',
  'Polly Molly',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:30',
  'Roy Buchanan',
  'Hawiian Punch',
  'When A Guitar PLays The Blues',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:30',
  'Velvet Rae',
  'Walkin'' Back To Me',
  'Midnight Liquor & Velvet Dust',
  'modern blues, soul blues, blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/24qEc99JSlO1ufhlVMm3sd',
  'found',
  87.9,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:36',
  'Eva Carboni',
  'Smoke And Mirrors',
  'Smoke & Mirrors',
  'blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7FtMttuEeDawpg9Xm5CiHu',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:39',
  'Ilaria Argento',
  'Satin & Sins',
  'Midnight Lies',
  'soul blues, blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0o7RJnfvdnNVkQAmlbOxb6',
  'found',
  89,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:46',
  'Morgan Luna',
  'Cold Side Of The Street',
  'Cold Side Of The Street',
  'soul blues, blues, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1acsQM46ZcZmH0mps5uDew',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:50',
  'Wailin'' Walker',
  'Buzz Bomb',
  'Blues Lightnin''',
  'blues rock, modern blues, blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/26adfr5Xa9mOoyfc6owLRY',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:52',
  'Slack Key Ohana & Rand Anderson',
  'Slack Key Blues ( Ha''ina Hou )',
  'Slack Key Blues ( Ha''ina Hou )',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4FQv96hVYtEul0BMDiQPwm',
  'found',
  93.9,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '15:57',
  'Walter Trout',
  'Sign Of The Times',
  NULL,
  'blues, blues rock, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0nAsHYMvIgvuGhXg2ewKHV',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:03',
  'Airto Moreda',
  'Stanleys Tune',
  'Virgin Land',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:05',
  'Dave Brubeck & Louis Armstrong and His Band',
  'The Real Ambassador',
  'The Real Ambassadors',
  'jazz, cool jazz, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0mwqFJtuDrd90anBXH9JBB',
  'found',
  74.8,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:08',
  'Erroll Garner',
  'It''s All Right With Me',
  'Jazz: The Definitive Performances [Disc 2]',
  'jazz, jazz ballads, cool jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/53mteKpIw5OEV9JUbZ30F5',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:12',
  'Count Basie',
  'Texas Shuffle',
  'The Complete Decca Recordings [Disc 2]',
  'big band, swing music, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7rpQAfr4064s65u8817OjU',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:17',
  'Allen Toussaint',
  'Tipitina and Me',
  NULL,
  'cajun',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6JAqGYyjxNy2HA6rfMJFU0',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:20',
  'dr john',
  'DOROTHY',
  'dr john plays ma rebennak',
  'cajun, zydeco',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2VJb3z9fTORzCqiRAgbd79',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:26',
  'Lkesha Benjamin',
  'Nobile Rise',
  'Nobile Rise',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:31',
  'Dee Dee Bridgewater',
  'S Wonderful',
  'Elemental',
  'vocal jazz, french jazz, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4R1foWLlDK872qlLaml2lt',
  'found',
  73.9,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:37',
  'Terri Lynne Carrington and Christie Dashiell',
  'Freedom Day Pt 2',
  'We Insist 2025 (exclamation point)',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:40',
  'Max Roach and Abbey Lincoln',
  'Freedom Day Pt 2',
  'We Insist (exclamation point)',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:47',
  'Erskin Hwakins and his Bama State Collegians',
  'Uproar Shout',
  '30s jazz big bands',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:50',
  'Charlie and The Tropicales Feat John Boute',
  'DOROTHY',
  'Shake The Rum',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:54',
  'Judith Owen',
  'Summer In the City',
  'September / Summer In the City',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3oynbmUEF8b2iRIJFIqEQ1',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:55',
  'Judith Owen',
  'Blossom''s Blues',
  'Single',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6iPSoCtVulFN2bbvNbXpuE',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '16:57',
  'Hugh Masekela',
  'U, Dwi',
  'Hugh! The Best Of Hugh Masekela',
  'afro soul, afrobeat',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2nBgwzZtMSHJVlf3esPqYf',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:06',
  'Branford Marsalis Quartet',
  'Spiral Dance',
  'Belonging',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3VMuIdaEDvvMr9PMgybUIc',
  'found',
  98,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:16',
  'sullivan fortier Trio Feat Peter Washington and Marcus Gillmore',
  'Southern Nights',
  'southern nights 2025',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:26',
  'Robert Glasper featuring Norah Jones',
  'Prototype',
  'Keys To The City Volume One',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:31',
  'Van Morrison',
  'Slim Slow Slider',
  'Astral Weeks',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6H7xOgt83zv9Purq4EbeI3',
  'found',
  86,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:33',
  'Auturo O''Farril and the Afro Latin Jazz Orchestra',
  'Manteca Suite Live',
  'The oRiginal Influencers Dizzy Chano and Chico',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:38',
  'Leon Bridges',
  'Peaceful Place',
  'Leon 2024',
  'retro soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7g4JvjIMwC4gi6gBPKOqnz',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:41',
  'Herb Alpert',
  'Rotation',
  'Rise 1979',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7GIqNe7yFg06vUI0WyEzqZ',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:46',
  'DJ Rodriguez',
  'Maestro''s Theme 1990',
  'Acid Jazz Best Of',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '17:54',
  'The Real Sounds Of Africa',
  'Baninga (edit for JFTM)',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:01',
  'Bing Crosby',
  'In A Spanish Town',
  NULL,
  'christmas',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1YDDYgBGbLDI97CPYwcYah',
  'found',
  92.4,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:10',
  'Ray Charles',
  'The Night Time',
  'Ray Charles Live At Newport',
  'soul, soul blues, blues',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0OKYalLV6PdwiLjBDkaAuc',
  'found',
  86.4,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:20',
  'Ray Charles',
  'In A Little Spanish Town',
  'Ray Charles Live At Newport',
  'soul, soul blues, blues',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4DuuGAKt3Bx7ULqdvo4KBt',
  'found',
  75.6,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:21',
  'Ray Charles',
  'I Got A woman',
  'Ray Charles Live At Newport',
  'soul, soul blues, blues',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4n3jZ9O3ntnHrP1sjmWW8T',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:26',
  'Ray Charles',
  'Blues Waltz',
  'Ray Charles Live At Newport',
  'soul, soul blues, blues',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/45ZASpwHURs7n2etX3EIB1',
  'found',
  83.2,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:33',
  'Jon Batiste & Randy Newman',
  'Lonely Avenue',
  'BIG MONEY',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/43fnovfvtK8e3PFuiYx2Wt',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:37',
  'JON BATISTE',
  'BIG MONEY',
  'BIG MONEY',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/55Xw7I5I01M0Bs4QW1MNR2',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:43',
  'Joni Mitchell',
  'The Beat Of Black Wings CLEAN',
  'Chalk Mark in a Rain Storm 1988',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:49',
  'Tom Mcdermott And Aurora Nealand',
  'Mazurka 49 Opus 68 No. 2',
  'An Intimate Evening At Luthjens With Tom Mcdermott And Aurora Ne',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '18:59',
  'Bruce Springsteen',
  'Stretts of Minniapolis',
  '2026 single',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
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
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:00',
  'Dave Bartholomew',
  'Jax Beer Boogie',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:07',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'single',
  'cajun, zydeco, classic blues',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:11',
  'The Spirit of Fi Yi Yi and the Mandingo Warriors',
  'When That Morning Comes',
  'When That Morning Comes',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:14',
  'Monk Boudreau and the Forgotten Souls',
  'Indian Red',
  '45',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:17',
  'Panorama Brass Band',
  'Mardi Gras Sa-Sa',
  '17 Days',
  'brass band',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1SaX8j8uLiIv1JV2qNhtUi',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:21',
  'Fat Domino and Doug Kershaw',
  'Don''t Mess With My Popeye''s',
  '45',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:24',
  'Rockin'' Sidney',
  'Mardi Gras Zydeco',
  'Cajun & Zydeco Mardi Gras',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0qUw42w4XxrJ84xI8yLlLA',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:27',
  'Clifton Chenier and His Red Hot Louisiana Band',
  'Mardi Gras Boogie',
  'In New Orleans',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/16sC8gEYWliWfaVNMiYzLv',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:31',
  'R Scully',
  'Mardi Gras Mask',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:34',
  'Quintron and Miss Pussycat',
  'I''VE GOT A GUY 4 THAT',
  'Chrystal Crunchy',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:39',
  'Guitar Lightnin'' Lee`',
  'Crawfish and Beer',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:42',
  'Miss Pussycat and Quintron',
  'Mardi Gras!',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:46',
  'LSD Clownsystem',
  'St Claude Sorceress',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '22:48',
  'Bobby MG and The Creeps',
  'Mardi Gras Qreep',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:02',
  'LSD Clownsystem',
  'Haus Of What',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:07',
  'William Onyeabor',
  'Fantastic Man',
  'Tomorrow',
  'afrobeat',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1ETZhP9orTkDclKEyt0xqm',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:14',
  'Plustwo',
  'Stop Fantasy',
  'Single',
  'italo disco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2XV72ZpIs4BNeS01fvv3IG',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:18',
  'LCD Soundsystem',
  'Yeah',
  'Single',
  'alternative dance, new rave',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2sE5rkUHUfC6Ys0SPSofuR',
  'found',
  98,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:28',
  'The Dare',
  'Kick',
  'Freakquenicies Vol. 1',
  'electroclash',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1uRhUL8183ihhVSAur859T',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:32',
  'Quintron and Miss Pussycat',
  'Place Unknown',
  'Live At Thirdman Records',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:35',
  'Sick Thoughts',
  'The Doom',
  'Another Piece of Plastic',
  'egg punk, punk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2qH0BY0IQlUYe2SXoNw3Pa',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:40',
  '79rs Gang',
  'Roll Call',
  'Fire On The Bayou',
  'brass band',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3OqHXikvlMtRRwuPPiVDG5',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:46',
  'Keith Hudson',
  'Treasures of the World',
  'Flesh of My Skin',
  'dub, roots reggae, rocksteady',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3FfYD8EtOqv63E1XgbgGvR',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:47',
  'Saada Bonaire',
  'Shut the Door',
  'Saada Bonaire',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:53',
  'The Jones and Taylor Experience',
  'Mardi Gras, Down In New Orleans, Its Carnival (Mardi Gras Rap)',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-28',
  '23:58',
  'New Shooz',
  'I Can''t Wait',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

DELETE FROM wwoz_tracks WHERE date = '2026-01-29';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:31',
  'Good News Bas',
  'Is It Still Summer? feat. Iljane',
  'Flood Warnings',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:32',
  'Mac Infinity',
  'Feel No Ways',
  'FEEL NO WAYS (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/1TGc39To7JC6Q3WXKVFhLl',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:34',
  'Good News Bas',
  'Get Paid feat. Mac Infinity',
  'Get Paid (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:44',
  'Jon Batiste',
  'Petrichor',
  'Big Money',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/7jmeenh8fzx9gxhJfMq2r2',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '01:32',
  'Mickey Factz',
  'bring it back home to me',
  'One Above All',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);