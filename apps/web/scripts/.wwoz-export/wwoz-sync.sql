-- WWOZ Database Export
-- Generated: 2026-02-26T07:22:39.755Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-25 10:30:07
-- Days: 4
-- Tracks: 541

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-23',
  'https://open.spotify.com/playlist/73L6vyCWlXt1L31CThAZet',
  '{"totalTracks":218,"successfullyFound":148,"notFound":70,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-23 09:10:59',
  '2026-02-26 07:22:38'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-24',
  'https://open.spotify.com/playlist/2hEjvN8nPjUiyOAIsH8Tmq',
  '{"totalTracks":140,"successfullyFound":93,"notFound":47,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-24 07:50:20',
  '2026-02-26 07:22:38'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-25',
  'https://open.spotify.com/playlist/4o0s8sOOPKUq6tgmM30Y7P',
  '{"totalTracks":147,"successfullyFound":105,"notFound":42,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-26 07:22:38',
  '2026-02-26 07:22:38'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-26',
  NULL,
  '{"totalTracks":2,"successfullyFound":2,"notFound":0,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-26 07:22:38',
  '2026-02-26 07:22:38'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-23';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
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
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:05',
  'Billy Pierce',
  'The Future is Now',
  'Give and Take',
  'hard bop, bebop, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/31GZycEVL60nfc0iRZMgMJ',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:11',
  'Spencer Bohren',
  'Skin a Cat',
  'Seven Birds',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:16',
  'Curtis Stigers',
  'Dirty Water',
  'Lost in Dreams',
  'vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/29lUVvbwKyauw5TXdaEHNT',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:21',
  'The Last Poets',
  'Bird''s Word',
  NULL,
  'spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/58Cpxpq46Lfj6Y42GSHb5B',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:27',
  'Billy Paul',
  'Peace Holy Peace',
  'War of the Gods',
  'philly soul, classic soul, soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/67hMdEjp5GX1wr4zl1arz5',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:34',
  'The Neville Brothers',
  'My Brother''s Keeper',
  NULL,
  'cajun, zydeco',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4IJD8rhBCvafc98R1cUJUw',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:37',
  'Charles Lloyd & The Marvels',
  'Peace',
  'Tone Poem',
  'jazz, free jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2DNisYLgSdMhaFBbXmFpE2',
  'found',
  75.1,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:42',
  'LYR',
  'After the Carnival',
  'An Unnatural History',
  'spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2AvJaG0BmjP75rNXAp6wX5',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:46',
  'Al Jarreau',
  'Take Five',
  NULL,
  'yacht rock, smooth jazz, vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0i61htnvT0fj2DdA68z5uv',
  'found',
  98,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:49',
  'Tito Puente',
  'Take Five',
  NULL,
  'latin jazz, afro-cuban jazz, cha cha cha',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7t43m7V3xrlUMrIHlphxTm',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '00:57',
  'Friends of Jabu',
  'From Ash, To Seed, To Flower',
  'First Offering',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6gsnDZwjbPw0S3zPeRJp7j',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:02',
  'Ed Harcourt',
  'After Carnival',
  'Monochrome to Colour',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2xsziJSC6ZXVYxeuXyv6HG',
  'found',
  89.7,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:07',
  'Naked Orchestra',
  'The Heart of Diego Rivera',
  'From Pandemonium to a View of Eidolons',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2hiCaYFy3Qq26Wzo0Nh8sI',
  'found',
  86,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:13',
  'Celia Cruz, Willie Colon, & Johnny Pacheco',
  'Quimbara',
  NULL,
  'salsa, son cubano, bolero',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1CkuZ3qvhxfMv7y0Nt0sV5',
  'found',
  75.1,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:17',
  'Willie Colon & Hector Lavoe',
  'El Dia de Mi Suerte',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:23',
  'Willie Colon',
  'Talento de Television',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:27',
  'Johnny Pacheco & Celia Cruz',
  'Toro Mata',
  NULL,
  'salsa, son cubano, latin jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6gjpaSYPsEtE91CztLsyt0',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:33',
  'Fania All-Stars',
  'Quitate Tu',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:39',
  'Charlie Parker w/Al Haig, Kenny Dorham, Max Roach, Tommy Potter',
  'Little Willie Leaps',
  NULL,
  'bebop, jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0qOfllgfH0LAiJajpPvQmU',
  'found',
  95.2,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:43',
  'Bobby Previte & the New Bump',
  'Set the Alarm for Monday',
  NULL,
  'free jazz, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5MVBUEzT5zAuw7cwWkGq3X',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:49',
  'Jimmy Smith w/Etta James & Dr. John',
  'I Just Wanna Make Love to You',
  'Dot Com Blues',
  'hard bop, soul jazz, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1uxasgAnJi3jZZkGuJWQFk',
  'found',
  92.8,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:53',
  'Serabee w/Russell Batiste',
  'New Orleans',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '01:59',
  'Preservation Hall Jazz Band',
  'St. James Infirmary',
  NULL,
  'brass band, swing music, ragtime',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5nqbUJ751TPqbUSXj1DQUY',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:04',
  'Billie Holiday',
  'Do You Know What It Means to Miss New Orleans',
  NULL,
  'jazz, vocal jazz, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5Q8D29Q2BcBnMQHjQGxlMH',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:05',
  'Vitamin String Quartet',
  'God Only Knows',
  NULL,
  'orchestral',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3SlxghuYSMBUa9wGeCnkqg',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:09',
  'John Wright',
  'Now Hang In There',
  'The Soul Touch of John Wright',
  'traditional folk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3DRq57VOBNDUsCve6DMt6N',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:13',
  'Christine Lavin',
  'Cold Pizza for Breakfast',
  NULL,
  'folk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1DmQz0PblmcUacIIifJv3z',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:16',
  'Dr. John',
  'New York City Blues',
  'Afterglow',
  'cajun, zydeco',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5dI7AFyk5idEj94ra4F5Y8',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:19',
  'Louis Armstrong w/Thelma Middleton & His All Stars',
  'Baby It''s Cold Outside',
  'Live at the Pasadena Civic Auditorium 1951',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:25',
  'Hank Jones & Oliver Nelson',
  'Spy with a Cold Nose',
  NULL,
  'jazz, hard bop, bebop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7CcClOT4oE1THs0G2iQ2wW',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:28',
  'Gil Scott-Heron',
  'Everyday',
  'Small Talk at 125th and Lenox',
  'spoken word, jazz funk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2lqvn7XuKbMQffUMX8anet',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:33',
  'Kip Hanrahan',
  'Velasquez',
  'Desire Develops an Edge',
  'afro-cuban jazz, latin jazz, free jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3oxd8jaNygz4JYO6zdofxu',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:38',
  'Sinne Egg & Thomas Fonnesbaek',
  'The Dry Cleaner from Des Moines',
  'Staying in Touch',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:43',
  'Betty Carter',
  '''Round Midnight',
  NULL,
  'vocal jazz, jazz, jazz ballads',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3VS1qUm62nDLZJtxd0V2bb',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:44',
  'Ravi Coltrane',
  '''Round Midnight',
  'Mad 6',
  'jazz, free jazz, jazz ballads',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1UAAZySSY9Mpyb8QIYic0y',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:50',
  'Jeff Albert',
  'Similar in the Opposite Way',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:56',
  'James Bond Sextet',
  'For Your Eyes Only',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4q1BySiOKFjGXvb6tqlHj5',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '02:58',
  'Louis Prima',
  'Buona Sera',
  'Angelina [Prima]',
  'swing music, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0DXm5n7SBxCED9ssTvrx2J',
  'found',
  81.7,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '04:29',
  'Allen Toussaint',
  'Bond',
  'New Orleans',
  '',
  'Overnight Music - Monday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '05:30',
  'Lee Dorsey',
  'Ride Your Pony',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Overnight Music - Monday',
  NULL,
  'https://open.spotify.com/track/5xsXzVOEA83GlDZ14Q74yh',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:03',
  'Bill Evans',
  'Peace Piece',
  'Everybody Digs Bill Evans',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/58yFroDNbzHpYzvicaC0de',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:03',
  'Morphine',
  'Bo''s Veranda',
  'b sides and otherwise 1993',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5zF1TVhvYSxwr0euTCCHy4',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:11',
  'Harold Budd',
  'Bismillahi ''Rrahmani'' Rrahim',
  'The Pavillion of Dreams',
  'ambient, minimalism, shoegaze',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5oTnjavcEz8hENl2nlYmdx',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:28',
  'Norah Jones',
  'Sunrise',
  'Feels Like Home',
  'jazz pop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7zkLpY72g6lKQbiHDqri1S',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:31',
  'Thelonius Monk',
  'Blue Monk',
  'Live at the It Club',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:40',
  'Roland Kirk',
  'Many Blessings',
  'The Inflated Tear',
  'free jazz, hard bop, jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2OWp0pgwSBGYxksIRjAljM',
  'found',
  82.7,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:46',
  'The Ink Spots',
  'I Don''t Want To Set The World On Fire',
  NULL,
  'adult standards',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/777zXDJpBufzttU4AJ2dGO',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:48',
  'Duke Ellington',
  'Lotus Blossom',
  '...And His Mother Called Him Bill',
  'jazz, big band, swing music',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/38HJAmGAl3oJc9umq0awe3',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:52',
  'Eric Dolphy',
  'God Bless The Child',
  'Copenhagen Concert',
  'free jazz, jazz, hard bop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1umTCrxgqEBJGTS85GIYUe',
  'found',
  76.2,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:16',
  'Southern University Jazz Ensemble',
  'Samba Dee',
  'Goes to Africa With Love',
  'free jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5mb4db7hmJ6ZeLz6qkIeZN',
  'found',
  89.8,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:21',
  'Nicholas Payton',
  'Relaxin'' With Nick',
  'Relaxin'' With Nick',
  'jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/11QqXPoYDC1wLjBrVUJ6AU',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:26',
  'Herb Alpert & The Tijuana Brass',
  'Ladyfingers',
  'Whipped Cream & Other Delights',
  'adult standards, exotica',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7ubd6wvhN4TKMwQUy6hR69',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:29',
  'Ellis Marsalis w/Jason Marsalis',
  'A Groove For Bags',
  'For All We Know',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:35',
  'Jason Marsalis Vibes Quartet',
  'Big Earl''s Last Ride',
  'In A World of Mallets',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/52b3ydaIVUEZvIP6i7Lkrl',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:39',
  'Max Roach',
  'Absolutions',
  'Members Don''t Git Weary',
  'hard bop, bebop, jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2C3gN84NVsPpFyJOSpdSTX',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:44',
  'True Loves, Nigel Hall',
  'Dopus No. 1',
  'Dopus No. 1',
  'jazz funk, funk, retro soul',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2uBbWlPLVLVhqLfuEbMNy3',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:49',
  'Idris Muhammad',
  'By The Red Sea',
  'Black Rhythm Revolution',
  'jazz funk, soul jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6vEpEQnqR3O03HzCpVQnU3',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:58',
  'Mort Garson',
  'Plantasia',
  'Mother Earth''s Plantasia',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2XV5CUyw7gPVi18d718D4f',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:01',
  'Brian Blade and the Fellowship Band',
  'Duality',
  NULL,
  'jazz, ambient jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/27YLzmcjtwz0NJv5pamptZ',
  'found',
  91.1,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:10',
  'Hiatus Kaiyote',
  'Mobius Streak',
  'Tawk Tomahawk',
  'neo soul, indie soul, alternative r&b',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/40l4Z2pYvnoXD2PTl3T26Z',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:16',
  'Flea',
  'Thinkin Bout You',
  'Single',
  'funk rock',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4LiSdLjUXbS4daVzBJCTwH',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:20',
  'David Axelrod',
  'The Warnings Pt. II',
  'Earth Rot',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:25',
  'Willie Colon',
  'Idilio',
  'Hencho En Puerto Rico',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:31',
  'Ella Fitzgerald, Louis Armstrong',
  'Can''t We Be Friends',
  'Ella and Louis',
  'jazz, vocal jazz, swing music',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/22MsyWQ5WFGv8GXP7qmzDP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:34',
  'Lonnie Liston Smith',
  'Footprints',
  'Cosmic Funk',
  'jazz funk, jazz fusion, acid jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2ijh40c203ZcgsujvVxb7j',
  'found',
  77.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:41',
  'Kassa Overall',
  'REBIRTH OF SLICK (COOL LIKE DAT)',
  'CREAM',
  'jazz rap, nu jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3h1DfQK2IVd5DYJZ0MYGgc',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:44',
  'The Heliocentrics',
  'Space Cake',
  'Telemetric Sounds',
  'ethiopian jazz, afrobeat, nu jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5pfnhUPw89ZAh0pf8yomZ7',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:48',
  'Josh Johnson',
  'Who Happens If',
  'Unusual Object',
  'ambient jazz, experimental jazz, indie jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6Pzse6lWkAcycBgo9cuDtF',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:50',
  'Pino Palladino, Blake Mills',
  'Contour',
  'That Wasn''t A Dream',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5vpmH8LoHRnNh0wF0ma5y0',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:53',
  'Bill Evans',
  'Nardis',
  'Explorations',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3Mp88lA8JKE7x4X6A1eUeA',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:04',
  'George French Band',
  'Mr. Magic',
  'It''s A Beginning',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:16',
  'John Boutte',
  'I''m A Cowboy',
  'john Boutte & Uptoen Okra',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:19',
  'Dean Zucchero',
  'Biting Through',
  'Siing For The Sinners',
  'modern blues, blues rock, blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5ywcVg3x6BIPM81Hel5i0G',
  'found',
  73.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:28',
  'Dean Zucchero',
  'Fowl Play',
  'Song For The Sinners',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:35',
  'Jump Hounds',
  'Please SEnd Me Someone To Love',
  'Southern Comfort',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:42',
  'Percy Mayfield',
  'Louisiana',
  'My Heart',
  'blues, classic blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5fixhXm5otdxLmMbcfOZ4I',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:47',
  'Johnny Adams',
  'Come Rain Or Come Shine',
  'Good Morning Heartache',
  'soul blues, blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5pZ731IL3aHbXAXmI4dr3y',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:47',
  'Marva Wright',
  'Nothing Takes The Place Of You',
  'Heartbrakin`',
  'zydeco, blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5s4Xset2zhmHONFwBwDG8S',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:54',
  'Lonnie Johnson',
  'Tomorrow Night',
  'Rhythm & Blues 1945-1951 - Music Sampler Vol. 1',
  'blues, country blues, classic blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2eXgdiB8q1M5hWR1BOdSVk',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:54',
  'Preservation Hall Jazz Band',
  'Little Liza Jane',
  'Shake That Thing',
  'brass band, swing music, ragtime',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5Jwl55LA6UGFTFpBwqU0D5',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:07',
  'Ronell Johnson',
  'Banana Split For My Baby',
  'Instgant Roo',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/73NZRUV1kffjUoDBtlz4kq',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:42',
  'Shannon Powell',
  'Lord, Lord, Lord',
  'Powell`s Place',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:46',
  'Yoshitaka',
  'Fire Waltz',
  'HappyHour',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:53',
  'John Papa Gros',
  'Yes We Can',
  'Giants',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:08',
  'Dr. John',
  'Right Place, Wrong Time',
  'Mos` Scocious- Anthology (CD02)',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0I2ELF6uHlL4ABu9aFiou7',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:13',
  'Down',
  'Right Place Wrong Time',
  'Single',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:14',
  'Sally Baby''s Silver Dollars',
  'Down in New Orleans',
  'Sally Baby''s Silver Dollars',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:15',
  'Irma Thomas',
  'Back Water Blues',
  '50th Anniversary Celebration',
  'classic soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0JjxpW2i161phUkLc3zTxh',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:18',
  'Dusky Waters',
  'House On King Street',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1RDP6hcIhMtBgei7jT6vtx',
  'found',
  93.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:23',
  'Kelly Love Jones And Deezle',
  'Surrender(Til The End Of Time)',
  'Surrender',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:26',
  'Bonerama',
  'My Girls Oh So Fine',
  'So Much Love',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4KSH4IsLR18UdKbcKGuBNu',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:31',
  'Corey Henry & The Treme Funkte',
  'Slip Into Darkness/HeyPockeyWa',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:38',
  'Slugger',
  'Suwanee',
  'Bangers',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:42',
  'Funk Monkey',
  'Mojo HAnnah',
  'Pre-Roll',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2D9x5BXmaEpgkOSMdmsbR1',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:46',
  'Trombone Shorty & The New Breed',
  'Street Music',
  'Second Line Sunday',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:51',
  'Orlando Gilbert',
  'New Orleans Party',
  'A Crescent City Connection',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1oEbb4BJpcx3SrzLyq056z',
  'found',
  74.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:57',
  'Joe Krown Organ Combo',
  'The Royal Boogie',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:06',
  'maceo parker',
  'CHICKEN',
  'mo roots',
  'jazz funk, funk, soul jazz',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1RTnm3X7m7ugfVYIDIlAho',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:09',
  'MAGIC SAM',
  'My Love Will never Die',
  'WEST SIDE SOUL',
  'classic blues, blues, soul blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5vPsp9dDUgXfHRccXDuNow',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:09',
  'Magic Sam',
  'LOOKIN'' GOOD',
  'THE LEGACY OF MAGIC SAM',
  'classic blues, blues, soul blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6Y3Ux6BIub9qkkIDvGvilL',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:12',
  'CALVIN FRAZIER',
  'SHE''S A DOUBLE CROSSING WOMAN',
  'I''M IN THE HIGHWAY MAN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:15',
  'KOKOMO ARNOLD',
  'Back to the Woods',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER VOL.1 1930-35',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/58c7PrEn0nJ4LcoWIOukgv',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:17',
  'NAT MYERS',
  '75-71',
  'YELLOW PERIL',
  'blues, southern gothic, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1Kpl4t6FsojBlqRctw58DD',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:21',
  'JOHNNY WINTER',
  'ICE CUBE',
  'GANGSTER OF LOVE: THE ESSENTIAL EARLY YEARS',
  'blues, blues rock, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0tP25WztqIT2JJqhC0xvMs',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:26',
  'FATS DOMINO',
  'My girl Josephine',
  'MILLION SELLERS BY FATS',
  'rock and roll, doo-wop, rockabilly',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0CIc4SaHV9RaQvXscSlVFH',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:27',
  'JOHNNY CASH',
  'GET RHYTHM',
  'BALLAD OF A TEENAGE QUEEN',
  'classic country, outlaw country, country',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2jM8e3L9UA08hfIjlVRrpW',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:31',
  'Johnny Cash',
  'Rowboat',
  'Unchained',
  'classic country, outlaw country, country',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6PSQXLJ32A7Ra9kfKP4q3M',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:33',
  'RHIANNON GIDDENS FEAT. JASON ISBELL',
  'YET TO BE',
  'YOU''RE THE ONE',
  'folk, americana, southern gothic',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6iHor3auKtisM4nmBmyGpE',
  'found',
  89.3,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:37',
  'IRMA THOMAS',
  'THE HURT''S ALL GONE',
  'SWEET SOUL QUEEN OF NEW ORLEANS',
  'classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1tNQKGllGVHWAW8pHsn3F2',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:41',
  'GARY CLARK JR',
  'DON''T OWE YOU A THING',
  'BRIGHT LIGHTS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:46',
  'SUPER CHIKAN',
  'EL CAMINO',
  'WHAT YOU SEE',
  'blues, footwork, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0GwmbmFV1nbHARENlBLX4B',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:49',
  'GEORGE THOROGOOD',
  'RIDE ON JOSEPHINE',
  'GEORGE THOROGOOD AND THE DESTROYERS',
  'classic rock, blues rock, southern rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5mnuD2SFnzrD6P0H7unGpe',
  'found',
  75.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:51',
  'charles shefield',
  'it''s your voodoo working',
  'LOUISIANA SWAMP BLUES',
  'northern soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3iDQAwkv5diO0iQef1wBT2',
  'found',
  72,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:54',
  'R.S. RANKIN',
  'YOU DON''T KNOW WHAT YOUR DOING',
  'TEXAS GUITAR: FROM DALLAS TO L.A.',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5keZThtkVWCZ30NAWpJMK4',
  'found',
  92.2,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:55',
  'LEROY WASHINGTON',
  'BE KIND',
  'LOUISIANA SWAMP BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:58',
  'DRIFTIN'' SLIM',
  'MY LITTLE MACHINE',
  'THE TRAVELING RECORD MAN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:59',
  'JIMMY YANCEY',
  'THE FIVES',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER VOL.1',
  'boogie-woogie, ragtime, boogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0Hi6S4QUZTaLVlXvP2sfXJ',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:06',
  'Ralph Stanley',
  'O Death',
  'O BROTHER, WHERE ART THOU',
  'bluegrass, christian bluegrass, country christian',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/16jWQYb9YpzdaOLG8DeHOB',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:08',
  'Nina Simone',
  'Martin Luther King Suite- Missis',
  'Forever Young, Gifted & Black- S',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:18',
  'Leyla McCalla',
  'The Capitalist Blues',
  'The Capitalist Blues',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7LPxn9YKOA8K1U6wMzhfc6',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:22',
  'CHARLEY PATTON',
  'JESUS IS A DYING BEDMAKER',
  NULL,
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:23',
  'COREY HARRIS',
  'HIGH FEVER BLUES',
  'FISH AIN''T BITIN''',
  'blues, modern blues, country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7LoBaWG28WhlDyYVvwKcjN',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:28',
  'king floyd',
  'i feel like dynamite',
  'CHOICE CUTS',
  'classic soul, motown',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3icEt2TCIsw0kPZvGRyA5K',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:29',
  'BILL DOGGETT',
  'MATCHES',
  'THE BEST OF BILL DOGGETT',
  'soul jazz',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7BbstyNOEUlkZosY3mVcPw',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:32',
  'THE VELVET UNDERGROUND',
  'HEAD HELD HIGH',
  'LOADED',
  'proto-punk, art rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0EZyF8mKrbXdzGJRPzDD1g',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:36',
  'THR ROLLING STONES',
  'Sway',
  'STICKY FINGERS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:38',
  'Ernie K-Doe',
  'Here Come The Girls',
  'Here Come The Girls- A History 1',
  'classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5PaXa6xCZFTDRpx4FYZo6b',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:42',
  'ANDREW BROWN',
  'YOU MADE ME SUFFER',
  'LIGHT: ON THE SOUTH SIDE',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/139wOxRmWtascxqTYAuoJg',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:47',
  'LITTLE FREDDIE KING',
  'GOIN'' UPSTAIRS',
  'MESSIN'' ROUND THE HOUSE',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/59v5XhsV1cKzAKxRzjmVQ0',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:51',
  'LITTLE JOE WASHINGTON',
  'LAST TEAR',
  'HOUSTON GUITAR BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:56',
  'SCRAPPER BLACKWELL',
  'KOKOMO BLUES',
  'THE VIRTUOSO OF SLIDE GUITAR',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6c7TBts8ChIOfVyI266fkA',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:58',
  'Allen Toussaint',
  'We The People',
  NULL,
  'cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0nYip8A2BmutrnMvNdMfeg',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:03',
  'PHAROAH SANDERS',
  'UPPER EGYPT AND LOWER EGYPT',
  'THE IMPULSE STORY',
  'free jazz, ambient jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5xur0NcwuiICOfRdiEZXnx',
  'found',
  93.6,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:18',
  'John Coltrane',
  'Spiritual',
  'Complete 1961 Village Vanguard R',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2f6ePNBYDxzzwygxGXa0sb',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:34',
  'Alice Coltrane',
  'Lovely Sky Boat (Album Version)',
  'The Impulse Story',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:41',
  'DAVID FATHEAD NEWMAN & THE TILDEN WEBB TRIO',
  'CRISTO RENDENTOR',
  'CELLAR GROOVE',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:52',
  'WAYNE ESCOFFERY',
  'RAPTURE',
  'ALONE',
  'jazz, vocal jazz, hard bop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3Ws1BOppgWGn7buMaVb3d0',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:59',
  'NINA SIMONE',
  'I WISH I KNEW HOW IT WOULD FEEL TO BE FREE',
  'SILK AND SOUL',
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5CKHhg31HcYYhwUeeGqvhq',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:06',
  'DAVE STRYKER',
  'BLUE FIRE',
  'BLUE FIRE (THE VAN GELDER SESSION)',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:12',
  'Idris Muhammad',
  'Peace And Rhythm Suite- Rhythm',
  'Legends Of Acid Jazz',
  'jazz funk, soul jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5RMA7BjdZoJz5iyKdNdBJO',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:20',
  'CHARLIE APICELLA & IRON CITY',
  'IDRIS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7m6ulA2cguNBmsi3dM43Xg',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:25',
  'CHARLIE APICELLA & IRON CITY',
  '64 CADILLAC',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0LihKpwQJE2aFNzhFXM6Ks',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:31',
  'Harold Land',
  'Triplin` the Groove [Live]',
  'Westward Bound! (Live)',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:43',
  'Betty Shirley',
  'Gulf Coast Blues',
  'SuMayy',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:47',
  'DAVID ''FATHEAD'' NEWMAN',
  'MAMA-LOU',
  'DIAMONDHEAD',
  'hard bop, bebop, soul jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6EKnjNQetkNaWER2jY39vC',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:53',
  'Dexter Gordon',
  'Daddy Plays The Horn',
  'Daddy Plays The Horn',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7fKXDTmB9VE66d0AJQSwWe',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:04',
  'NINA SIMONE',
  'SINNERMAN',
  'PASTEL BLUES/ LET IT ALL OUT',
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5xRP5iyVdGglqlY4Vcjhkx',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:13',
  'Jimmy Smith',
  '''Round Midnight',
  'Jazz `Round Midnight- Jimmy Smit',
  'hard bop, soul jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5jmbNgAZVjI1qFFh3nneu5',
  'found',
  88.1,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:24',
  'DR. LONNIE SMITH',
  'SIMONE',
  'JUNGLE SOUL',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0t9IFNt5OWilKr9C2D0h1h',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:29',
  'Art Blakey',
  'Cubano Chant',
  'Drum Suite [Bonus Tracks]',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5WL091Ipi4bGgRsWiqBvx3',
  'found',
  74.7,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:43',
  'LEE MORGAN',
  'DOMINGO',
  'THE COMPLETE BLUE NOTE LEE MORGAN FIFTIES SESSIONS',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:44',
  'Betty Carter',
  'Jazz (Ain`t Nothin` But Soul)',
  'I Can`t Help It',
  'vocal jazz, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5Q4JJ0pK8zEF0oWJxygGAm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:46',
  'Miles Davis & John Coltrane',
  '2-07 On Green Dolphin Street [Li',
  'The Final Tour The Bootleg Serie',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:09',
  'CL Blast',
  'Whayt Can I Do',
  'UNITED 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:09',
  'Ernie K Doe',
  'Hey Hey Hey',
  'MINIT 45',
  'doo-wop, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0ZUoolciKxAxF5Lqq0gA2M',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:15',
  'Little Juniors Blue Flames',
  'Fussin and Fighting Blues',
  'SUN 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:16',
  'LAzy Lester',
  'They Call Me Lazy',
  'EXCELLO 45',
  'blues, classic blues, modern blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3TOsd8X5C6RVGtTeZTcE4N',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:16',
  'Silas Hoigan',
  'Im In Love WIth YOu Baby',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:21',
  'Irma Thomas',
  'Dont Mess With My MAn',
  'RON 45',
  'classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5fAWSK7rw20ilX3N1XmZjP',
  'found',
  79,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:24',
  'Ernie K Doe',
  'Gotta PAck Myt BAg',
  'DUKE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:25',
  'The Stepter Four',
  'Dont Play With God',
  'The D Vine Story Vol 3',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2i6qfjukkT8GxuI2y6i1ez',
  'found',
  79,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:28',
  'DEE DEE GArtrell',
  'Second Hand Love',
  'MAVERICK 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:32',
  'James Brown',
  'It Was You',
  'FEDERAl 45',
  'funk, soul, motown',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6WXRW8TTDsmalBQ8gZP76V',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:38',
  'Johnny Guitar Watson',
  'Hot Little Mama',
  'RPM 45',
  'blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5UWA1cwkp3pCKYsmuFwfZp',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:38',
  'The 5 Royales',
  '30 Second Lover',
  'KING 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:42',
  'Ernie k Doe',
  'A Little Bit Of Everything',
  'DUKE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:45',
  'Lee Bates',
  'I do things COme naturally',
  'INSTANT 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:47',
  'Tarheel Slim and Little Ann',
  'Forever Ill Be Yours',
  'FIRE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5F2JAi6redQCX5zyJzOcUu',
  'found',
  81.6,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:51',
  'OV Wright',
  'Lets STraighten It Out',
  'The Bottom Line',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:54',
  'Mighty Joe Young',
  'Suffering Soul',
  'WEBCOR 45',
  'blues, classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6i2DEMeAYUKkpb31DDSfhX',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:59',
  'Ernie K Doe',
  'A Certain Girl',
  'MINIT 45',
  'doo-wop, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5VkOlvkvY7OGO5nobVRDLV',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:00',
  'The Golden Crowns',
  'My Precious Lord',
  'SU ANN 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:03',
  'Tal Miller',
  'BABY',
  'HOLLY WOOD 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:07',
  'Cedric Burnside',
  'i Be Tryin',
  'I Be Tryin',
  'blues, modern blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2lwVx23dtmqVZvjf1sLsah',
  'found',
  84.7,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:12',
  'Diamond Joe',
  'Moaning and Screaming pt 1',
  'MINIT 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:14',
  'Sabine McCalla',
  'Sunshine Kisses',
  'Dont Call Me Baby',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2M98LYO5rEMZg0xr4eFfPb',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:17',
  'Champion Jack Dupree',
  'Shake Baby Shake',
  'RED ROBIN 45',
  'blues, classic blues, boogie-woogie',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6dEesyWW1SeKzHNi1JrLqm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:24',
  'Ernie K Doe',
  'Do Baby Do',
  'SPECIALTY 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:24',
  'Miss Lavell',
  'Run To You',
  'DUKE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:25',
  'OV Wright',
  'Working YOur GAme',
  'BACK BEAt 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:27',
  'Barbara Lynn',
  'Im A One Man Woman',
  'ATLANTIC 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3AMy1Ukan4Iord87v2kLbn',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:30',
  'Otis Redding',
  'You Dont Miss Your Water',
  'VOLT 45',
  'motown, soul, classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2gwWkMsSzKIQShoi3P6rjt',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:34',
  'Jerry McCain',
  'Bad Credit',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5GI7rc8gBrgsM3eYT9SDoi',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:38',
  'Otis Rush',
  'Keep On Loving Me Baby',
  'COBRA 45',
  'classic blues, blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5jL4Ww7ssT7Jtww5WCxemg',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:40',
  'The Holy Wonders',
  'Ive Got A Home',
  'REVELATION 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:43',
  'Delores Johnson',
  'Give Me Your Love',
  'BOBBIN 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:46',
  'Little Danny',
  'Mind On Loving',
  'SHARP 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5TBXPB1ZnkFeoYhNFeN7qN',
  'found',
  90.8,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:49',
  'Willie West',
  'Dont Be Ashamed To cry',
  'FRISCO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:03',
  'Rev John Wilkins',
  'Trouble',
  'Trouble',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6Kb4y1Dgh26fo9ubdvMOqh',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:04',
  'HArmonica Fats',
  'My Baby Didnt Come Home',
  'DOT 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/40l50avPw7O9CoLCUfmx5G',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:06',
  'Betty and Jay',
  'Love Is To Blame',
  'DRA 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:10',
  'Earl King',
  'The Things I Used To Do',
  'IMPERIAL 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:13',
  'Gospel SOng Birds',
  'Do You Ever Call Jesus',
  'NASHBORO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:13',
  'Guitar Jr',
  'i Got It Made',
  'GOLDBAND 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:19',
  'Ernie K Doe',
  'Talking Out Of My Head',
  'INSTANT 45',
  'doo-wop, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6zRnvA0GtZHkS1zwelzkXm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:23',
  'Eldridge Holmes',
  'Wait For Me Baby',
  'SANSU 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2BZOPVNcIjQFCdkbYtc9Ci',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:24',
  'Irma Thomas',
  'Good To Me',
  'CHESS 45',
  'classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5DAWBCuEUbhJQgqp424IU9',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:27',
  'Etta JAmes',
  'Baby What You Want Me To DO',
  'ARGO 45',
  'soul, soul blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/53DUNiLcyYOs9OuSAOIU7I',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:29',
  'Morris Pejoe',
  'Maybe Blues',
  'ABCO 45',
  'classic blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/46DZ0qAeCIOkTdTAGfph9z',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:37',
  'Frankie Lee Sims',
  'ii Warned You Baby',
  'ACE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:42',
  'Big Lucky',
  'Stop Arguing Over Me',
  'MOC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1GIjw2yC6ZPx3TtSubyK6X',
  'found',
  80.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:43',
  'Big Mac',
  'Thats The Way You Treat TYour Woman',
  'JEWEL 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:44',
  'Mercy Baby',
  'Pleadin',
  'RIC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2jXdGgTtNXRozthlHr96m2',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:52',
  'Al Green',
  'Tomorrows Dreams',
  'Hi 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:59',
  'Willie colon',
  'El Gran Veron',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:06',
  'Robert Glasper/ Masego',
  'All masks',
  NULL,
  'neo soul, jazz rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7BaROUi0CXU9OA641Tf5en',
  'found',
  80.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:11',
  'The Jacksons',
  'This Place Hotel',
  NULL,
  'disco, motown, philly soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2eADspwGh5Ad8tDoJ2bHsR',
  'found',
  83.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:16',
  'albert king',
  'born under a bad sign',
  'born under a bad sign',
  'blues, classic blues, blues rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0vDn81gdOuRxjbIwcASuiV',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:23',
  'ATLANTIC STARR',
  'TOUCH A FOUR LEAF CLOVER',
  NULL,
  'quiet storm, classic soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4aVzx5DlmdIhTrE3VTosOs',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:29',
  'Doechi, SZA',
  'girl,get up.',
  NULL,
  'r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2igNvPf7RLTZG688Mx8GtU',
  'found',
  72,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:32',
  'Teena Marie',
  'Portuguese Love',
  NULL,
  'quiet storm, post-disco',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1B0y2BGm6uEoDN0YoIx8yR',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:40',
  'Crystal waters',
  'Gypsy Woman',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2jBQYMPjY0UspZAVyYPRUG',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:44',
  'KAYTRANADA, Dawn Richard',
  'hold on',
  NULL,
  'alternative r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2MlwYYIm8JUNrA5807mdLm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:48',
  'Mint Condition',
  'Breakin My heart(Pretty brown eyes)',
  NULL,
  'quiet storm, new jack swing, r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/18sytW2s53Of6NVudQyUlH',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:54',
  'Lisa Lisa & Cult Jam/ Full Force',
  'I wonder If I Take You Home',
  NULL,
  'freestyle, funk melody, new jack swing',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3sRCesHh424gmCji7Fz9Gm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:00',
  'Ruben Blades , Willie Colon',
  'Pedro Navaja',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:08',
  'Myke Towers, Juhn',
  'Bandido',
  NULL,
  'reggaeton, trap latino, urbano latino',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1xK1Gg9SxG8fy2Ya373oqb',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:12',
  'De la soul, Tribe, Jungle bros, Queen latifah, Monie Love',
  'Buddy(Native Tongue decision)',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:19',
  'New Edition',
  'Can You stand the rain',
  NULL,
  'new jack swing, quiet storm',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1vbe9sh7U9vdMceAhitWr2',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:24',
  'Selena',
  'Dreaming Of You',
  NULL,
  'tejano, cumbia, música mexicana',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5EL8hqM8YQJHKKnzGdahly',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:29',
  'Prince',
  'Adore',
  NULL,
  'funk, funk rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2xsTC3V51PvY38QK4QNWN0',
  'found',
  81.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:36',
  'J Dilla, Guilty Simpson, Madlib',
  'Baby',
  NULL,
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0wotldYXx2K5HH0CwhzYrX',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:40',
  'Ludacris',
  '44 Bars',
  NULL,
  'southern hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5wCydgDC070Tym8HpjYr75',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:42',
  'Charli xcx',
  'Chains Of Love',
  NULL,
  'hyperpop, art pop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3obedb2fnHaTE8bPlr9TNK',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:46',
  'Freddie Jackson',
  'You are my lady',
  NULL,
  'quiet storm, classic soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5MPxgVGxq79wcoNKtlRaTf',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:50',
  'Eve/ Jo1',
  'Let Me Blow Your Mind',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:52',
  'Clifford Brown and Max Roach',
  'Daahoud',
  'Clifford Brown and Max Roach',
  'hard bop, bebop, jazz',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2sfcdBm7F0ccANkXBfMK5K',
  'found',
  91.6,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:57',
  'Funk Monkey',
  'So Swell',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1xlLRCanv5W7vVcGZrwoLe',
  'found',
  100,
  '2026-02-24 07:50:21'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-24';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:01',
  'Frank Ocean',
  'Lost',
  'channel ORANGE',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3GZD6HmiNUhxXYf8Gch723',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:06',
  'MF DOOM',
  'Rapp Snitch Knishes (feat. Mr. Fantastik)',
  'Mm..Food',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:08',
  'Jamila Woods',
  'VRY BLK (feat. Noname)',
  'HEAVN',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2EnEj7XoToBRxQ9PRaCEYp',
  'found',
  83,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:11',
  'Mateo Santiago',
  'Running (feat. BADBADNOTGOOD)',
  'Running (feat. BADBADNOTGOOD)',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:13',
  'Wax Tailor',
  'No Dawn To Wake',
  'No Dawn To Wake - Single',
  'trip hop, plunderphonics, nu jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/59Pw5qegy9AcuXeYmkDuJp',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:16',
  'Dua Saleh',
  'Glow (feat. Bon Iver)',
  'Of Earth & Wires',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3Qy4hBI9YBIt3yNYPMXPn8',
  'found',
  71.3,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:18',
  'Jordan Rakei and Tom McFarland',
  'Easy To Love',
  'Easy To Love - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:21',
  'Marco Benevento',
  'Frizzante',
  'Frizzante - Single',
  'jam band',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3j0sbeYDIjP2QBbrwSQvaO',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:26',
  'Holly Walker and Maribou State',
  'Otherside',
  'Hallucinating Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:29',
  'Elder Island',
  'Bamboo',
  'Seeds in Sand - EP',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1pVfS4D24dzoW6rwR7KFES',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:34',
  'Bonobo',
  'Return To Air',
  'Flashlight - Single',
  'trip hop, downtempo, nu jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6CxfaUiVzPPjxtyDwjiH6q',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:40',
  'Jamie xx',
  'KILL DEM',
  'KILL DEM - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5CE0k1VmTXgCtaa5L288LP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:44',
  'MFK and Toprak Baris',
  'No Lie (feat. Aquarius Heaven)',
  'No Lie - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:49',
  'Fiorious and Joe Goddard',
  'Loverboy (Benjamin Frohlich Remix - Edit)',
  'Loverboy Remixes - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:53',
  'Oscar Farrell',
  'Dream Therapy (ft. Sampha) (George FitzGerald remix)',
  'Dream Therapy (ft. Sampha) (George FitzGerald remix) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:57',
  'Ledbyher',
  'YU (feat. Biig Piig)',
  'The Elephant',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:02',
  'Rhye',
  'Feel Your Weight',
  'Blood',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6bRVkUr1fyZVX4XwQ4RpaR',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:05',
  'Yaya Bey',
  'Blue',
  'Fidelity',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1rUWEVR78iRaXXuSHyz6KP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:08',
  'JID and Jill Scott',
  'To B Honest',
  'To Whom This May Concern',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:12',
  'Arlo Parks',
  'Green Eyes',
  'Collapsed in Sunbeams',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5iwTDcZSrVq71HjMjNno5c',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:15',
  'Baby Rose',
  'Fight Club (feat. Georgia Anne Muldrow)',
  'Through and Through',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:20',
  'Martina Topley-Bird and Trick',
  'Christiansands',
  'Pre-Millennium Tension',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:24',
  'Yves Tumor',
  'Licking An Orchid (feat. James K)',
  'Safe in the Hands of Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:28',
  'Young Fathers',
  'I Heard',
  'TAPE TWO',
  'experimental hip hop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3zgptmNsfqy1JscBOebsYJ',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:32',
  'Handsome Boy Modeling School',
  'I''ve Been Thinking (feat. Cat Power)',
  'White People',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:37',
  'Gorillaz',
  'Tomorrow Comes Today',
  'Gorillaz',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3qdDjz9kOvquEFbvXBYOMQ',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:42',
  'Nightmares on Wax',
  'You Wish',
  'In a Space Outta Sound',
  'trip hop, downtempo, acid jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6G6M4fl2I0eqEQnzyTwR8m',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:46',
  'Charlotte Day Wilson',
  'Patchwork',
  'Patchwork',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3n5EsLJkjOwYVpx2yE7k4Y',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:47',
  'Flea',
  'Thinkin Bout You',
  'Honora',
  'funk rock',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4LiSdLjUXbS4daVzBJCTwH',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:52',
  'Sade',
  'Soldier of Love',
  'Soldier of Love',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0bgsj8kz5zWbQ6njk2Oqoz',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:58',
  'James Blake',
  'I Had a Dream She Took My Hand',
  'Trying Times',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2hUOnJj6B7938kFBcPO6l5',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:06',
  'Alabaster DePlume',
  'Not My Ask',
  'To Cy & Lee',
  'ambient jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/52oFxv3QwuMBydy7MU3oWK',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:06',
  'Rotary Connection',
  'Magical World',
  'Aladdin',
  'classic soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/06NKgkCqNpHZjqVyLdXdaI',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:08',
  'Paul Simon',
  'Can''t Run But',
  'In the Blue Light',
  'singer-songwriter',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5gSwQihHUXvC5H4SBCo03D',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:11',
  'Tom Waits',
  'Alice',
  'Alice',
  'singer-songwriter, southern gothic',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6flhPfJHRcQ1jiXojPen9J',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:17',
  'Brandee Younger',
  'Gadabout Season',
  'Gadabout Season',
  'experimental jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5Z4YeqJLy2Ik0NYr0xlfh7',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:20',
  'Makaya McRaven feat. Brandee Younger',
  'So Ubuji',
  'In These Times',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:24',
  'Marvin Pontiac',
  'Small Car',
  'The Legendary Marvin Pontiac',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2Aj0VVWg10s0tDGrZ5bsKr',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:30',
  'Ignacio Cervantes',
  'La Encantadora',
  NULL,
  'classical piano',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4dziTkjuebdZ1CcHiMIF0k',
  'found',
  76.4,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:36',
  'Dusty Springfield',
  'Just a Little Lovin',
  'Dusty in Memphis',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7zpS4UzyAsNGxWz0AyRP3b',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:36',
  'Illinois Jacquet',
  'Port of Rico',
  NULL,
  'swing music, jazz, hard bop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/25wcxxmSx7jlpkQTgqpojg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:37',
  'Barbara Lewis',
  'Snap Your Fingers',
  'Baby, I''m Yours',
  'northern soul, doo-wop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/486DaeZjbBVsY6VWueOCkH',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:40',
  'Barbara Lewis',
  'How Can I Say Goodbye',
  'Baby, I''m Yours',
  'northern soul, doo-wop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7kZ7C3MWAQcyhwgKQX8fzY',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:41',
  'James Brown',
  'Then You Can Tell Me Goodbye',
  'Say It Loud',
  'funk, soul, motown',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4sE5aSHafBivFI9qk2HQMR',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:45',
  'Mose Allison',
  'Lost Mind',
  'Seventh Son',
  'vocal jazz, jazz, cool jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2v6tdM8IUaLpcTxUeyCmEX',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:49',
  'Barbara Acklin',
  'Am I The Same Girl',
  'Greatest Hits',
  'northern soul, classic soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6NVzt2cA5Mgjd3pQjU1xwD',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:53',
  'Eddie Kendricks',
  'If You Let Me',
  'People....Hold On',
  'motown, classic soul, philly soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2dcssVSC1OiONrbqAyUTqb',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:56',
  'Dick Stusso',
  'In Heaven',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1eb2yiCEEOcsH2bBQ1DCBH',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:59',
  'Natural Lateral',
  'Houdini''s Notes',
  'Tapestry of Life',
  'nu jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6vXJbsAo7uobHsnAYJhw7t',
  'found',
  98,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:05',
  'Jack Wilson',
  'Kinta',
  'The Two Sides of Jack Wilson',
  'hard bop, bebop, soul jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2X5oWhFObT3MrSILpN55lT',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:11',
  'Jeff Parker',
  'Get Dressed',
  'the new breed',
  'experimental jazz, ambient jazz, free jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1yaUlIHswoTErFAyLFZcnq',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:12',
  'Nina Simone',
  'Love Me or Leave Me',
  NULL,
  'vocal jazz, soul jazz, soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2XzHou7MZzOBQBqjWw86Nt',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:16',
  'Anna Laura Quinn',
  'Speak Low',
  'Open the Door',
  'vocal jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7v2MRItaDig7GYH8WDTv9H',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:21',
  'Richard Galliano',
  'Spain',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:29',
  'Turtle Island String Quartet',
  'Sidewinder',
  'Metropolis',
  'classical crossover',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7vaF8XNNmJBmY3fh79zDhD',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:34',
  'Los Miticos Del Ritmo',
  'Don''t Stop til You Get Enough',
  NULL,
  'electrocumbia, chicha, cumbia',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/57xHD2Q6xWgwr60WzB72Uw',
  'found',
  84.4,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:37',
  'DIZZY GILLESPIE',
  'MANTECA',
  'MANTECA',
  'bebop, jazz, afro-cuban jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2nH9vhGDkvhsx1BS6d7uec',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:40',
  'Skatalites',
  'Ska-ra-van',
  NULL,
  'ska, rocksteady, reggae',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0KvxZUhJlg0kWGydUzZd7A',
  'found',
  75,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:40',
  'Skatalites',
  'smiling',
  NULL,
  'ska, rocksteady, reggae',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0Qk6jJVBibpstT0BhsRB57',
  'found',
  75,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:45',
  'Bill Landford & The Landfordaires',
  'Run On for a Long Time',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7Abd9YZHgmzHwoMBeNnRmI',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:47',
  'Ze Roberto',
  'Lotus 72 D',
  NULL,
  'bossa nova, brazilian jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/25JrVa0pOZhb4WvuCK1JVk',
  'found',
  72,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:50',
  'Dope Lemon',
  'Home Soon',
  'Hounds Tooth',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7C5Ria90yxc4a0REG1D23U',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:53',
  'Dizzie Gillespie',
  'Unicorn',
  'Free Ride',
  'bebop, jazz, afro-cuban jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2nuD3zk0lrBx1pfJ78jdA1',
  'found',
  70.2,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:03',
  'Khan Jamal',
  'The Known Unknown',
  'Infinity',
  'free jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1Pw1wGb42T6VqRsepROdZP',
  'found',
  98,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:12',
  'Abbey Lincoln',
  'come sunday',
  'Abbey Is Blue',
  'vocal jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3ZTY98dv9uq9oBcX3a4NEB',
  'found',
  88.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:16',
  'Abbey Lincoln',
  'Softly as in a Morning Sunrise',
  'Abbey Is Blue',
  'vocal jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3u4pnjX6xrI1cGlYnxnW1Z',
  'found',
  95.3,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:19',
  'Swan Silvertones',
  'Milky White Way',
  'Amen',
  'traditional gospel, gospel',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3Qcm6p5dARXivwF00iaSZb',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:22',
  'TPOK Jazz',
  'Osili Obebi',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:25',
  'T-Bone Walker',
  'T Bone Shuffle',
  NULL,
  'blues, classic blues',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6bl7UHHcx1OY9tbvvnSssc',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:32',
  'Mighty Blue Kings',
  'Cadillac Boogie',
  'Meet Me Uptown',
  'swing music, boogie-woogie',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5jsuPRZB571DTuXxOkvegv',
  'found',
  89.5,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:35',
  'Gene Chandler',
  'Turn On Your Lovelight',
  NULL,
  'doo-wop, northern soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2JuNUF9aRgKPdWy1VqC2cv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:38',
  'Allen Toussaint',
  'We Are the People',
  NULL,
  'cajun',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2X6Iu5fHHo0qTwJcSZuTiW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:50',
  'Brother Jack McDuff',
  'Can''t Get Satisfied',
  'Tobacco Road',
  'soul jazz, jazz funk, hard bop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4puePsM4A8DRcdCc3RA0ZU',
  'found',
  78.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:54',
  'Young Holt Unlimited',
  'Medley In Crowd, Wade in the Water, Ain''t Nothing Money',
  'On Stage',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:56',
  'Curtis Mayfield',
  'We Got To Have Peace',
  'Roots',
  'classic soul, soul, motown',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1Hqtsr4UAaj495dQxFqdk8',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
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
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:12',
  'Catherine Russell',
  'Aged and Mellow',
  'Bring It Back',
  'vocal jazz, swing music, jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/02cCntRCrtgojL45e9oNnu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:22',
  'Tuba Skinny',
  'Cold Morning Shout',
  'Pyramid Strut',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:26',
  'George Finola',
  'Milenberg Joy',
  'New Orleans After Hours',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:31',
  'Peter Bocage',
  'Mama`s Gone, Goodbye',
  'Peter Bocage With The Creole Ser',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1bh5eiyVvajqpRiqmrYz1N',
  'found',
  90.6,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:40',
  'Baby Dodds Trio',
  'Wolverine Blues',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2lUXRj3pLfvOdKwFOxjYRw',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:46',
  'Seva Venet',
  'I Wanna Dance',
  'The Storyville Stringband Of New',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/4LUKl2xgEOiEfFhL5HpgEg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:49',
  'Louis Armstrong',
  'Honeysuckle Rose',
  'Essential Louis Armstrong 2',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0amJunMZCmdKl30JouAkTd',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:56',
  'Maxine Sullivan, Bob Haggart',
  'Get Out and Get Under the Moon',
  'Enjoy Yourself',
  'vocal jazz, swing music, jazz ballads',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1qTO0HFCBhJEpjkEUxCKOs',
  'found',
  74,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:59',
  'Sidney Bechet',
  'Honeysuckle Rose',
  'Jazz At Storyville',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1Y25339aU2Ae89NOclcS6p',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:06',
  'Preservation Hall Jazz Band',
  'Tootie Ma Is A Big Fine Thing',
  'The 50th Anniversary Collection',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/67NIuRLoNNukVtK98YeyUu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:11',
  'Louis Armstrong',
  'I Can`t Give You Anything But Lo',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7trsX0rP1cLi1RaE1S9LFI',
  'found',
  93.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:15',
  'Bobby Henderson',
  'Blue Turning Grey Over You',
  'A Handful Of Keys',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:19',
  'Topsy Chapman And Magnolia Jazz',
  'Please, Don`t Talk About Me When',
  'Fine And Mellow',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:25',
  'Shotgun Jazz Band',
  'Raining in My Heart',
  'Don''t Give Up the Ship',
  'swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0ZmzIMFoosLFSKM5mza3fJ',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:35',
  'Fats Waller',
  'The Joint Is Jumping',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:36',
  'Fats Waller',
  'THE JITTERBUG WALTZ',
  NULL,
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3IeebgUYCGyhFra2EzUD29',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:40',
  'Fats Waller',
  'Sweet and Slow',
  NULL,
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6ltHNDLRmJKiFPcdv8lNMy',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:44',
  'Danny Barker & New Orleans Rhyth',
  'Bill Bailey Won`t You Please Com',
  'American Griot',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:49',
  'Kermit Ruffins And The Barbecue',
  'I Can`t Give You Anything But Lo',
  '#Imsoneworleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:56',
  'Doyle Cooper Jazz Band',
  'Mahogany Hall Stomp',
  'Yeah You Right',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:05',
  'govt majik',
  'the bass age',
  'bass age',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:09',
  'papa grows funk',
  'i got the blues over you',
  'live at the leaf',
  'funk, funk rock, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1phw4wnW0bLH7BPgllnzkR',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:25',
  'neville brothers',
  'rosa parks',
  'live on planet earth',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:25',
  'rebirth brass band',
  'the law',
  NULL,
  'brass band, zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6lx7tlUggJV4sbDSToYpIU',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:26',
  'dumpstaphunk',
  'justice 2020',
  'where do we go from here',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:30',
  'gravity A',
  'simple man',
  'new beginnings',
  'jam band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4kOt9ogF44F7UNeqIPEtsJ',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:47',
  'dr john',
  'hello god',
  'parlophone years',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4yQ0ivXPldRtlm5p9lsYz2',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:47',
  'sam and the soul machine',
  'gun',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0FxotNOM4kR4HnAJHT72G9',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:51',
  'Fats Domino',
  'I Hear You Knocking',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/13EV66QJMXIHSJS5SHZjRB',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:53',
  'art neville',
  'please don''t leave me',
  'fats domino tribute',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:56',
  'ROBBIE ROBERTSON',
  'GOING TO THE RIVER',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:07',
  'Earl King',
  'Some People',
  'Street Parade, featuring The Meters',
  'classic blues, new orleans bounce, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0DJHEeWHLIExBUqOOz2Gh1',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:08',
  'galactic with Irma Thomas',
  'love''s gonna find a way again',
  'AUDIENCE WITH THE QUEEN',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:11',
  'IRMA THOMAS',
  'TWO WINTERS LONG',
  'STRAIGHT FROM THE SOUL',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6IB3gmytuTAjA1wJWeGXJv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:17',
  'Isaac Eady',
  'Love And Gratitude',
  'Amponsah',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5xcACqvLHi6DXJtxTZreZg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:21',
  'Colin Davis and the Night People',
  'Pathways',
  'Pathways',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:29',
  'quickening',
  'see ya at da pawty',
  'begin again',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4ADkMTDRADi0VPgiFbEdkU',
  'found',
  74.1,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:32',
  'percy J',
  'that feeling',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4t9V6UsTrQwtLJzxynPXHu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:53',
  'henry butler',
  'riders on the storm',
  'the game has just begun',
  'cajun, zydeco, blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4WyMwOsoBzVLPGhvm4sKiv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:58',
  'Art Neville',
  'Cha Dookie Doo',
  'SPECIALTY 45',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:07',
  'Funk Monkey',
  'So Swell',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1xlLRCanv5W7vVcGZrwoLe',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:12',
  'Bonerama',
  'Ohio',
  'so much love',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:18',
  'JOHN',
  'Hurricane',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:31',
  'corey henry',
  'muddy waters',
  'lapeitah',
  'brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7FmNlTPZG8cm4asEql9tEF',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:52',
  'Walter Wolfman Washinton',
  'Blue Moon Risin''',
  'Blue Moon Risin''',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:59',
  'lee dorsey',
  'holy cow',
  NULL,
  'northern soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/58smfvnOg9Wn7koHxsvJ8V',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:07',
  'SLIM',
  'IN THE MIX',
  NULL,
  'go-go',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1Na3VFYU3erIgl3JhpFiwO',
  'found',
  87.5,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:14',
  'AFRIKA BAMBAATAA',
  'SAY IT LOUD',
  'DECADES OF DARKNESS',
  'miami bass, old school hip hop, funk melody',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/5F7JjaY7hlVqkqwBiVXSKW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:19',
  'World Saxophone Quartet',
  'Bluocracy Part 1',
  'Political Blues',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:25',
  'Rahsaan Roland Kirk',
  'Blacknuss',
  'Does Your House Have Lions- The',
  'free jazz, hard bop, jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2Jrxzhhn8bisav40zymdVL',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:31',
  'JAMES BALDWIN',
  'INVENTORY/ON BEING 52',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:39',
  'WILLIAM PARKER QUARTET',
  'O''NEAL''S PORCH',
  'O''NEAL''S PORCH',
  'free jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1mz8cZjPGjkwLj4EazgKK3',
  'found',
  90.7,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:55',
  'JAMES CARTER',
  'NUAGES (CLOUDS)',
  'CHASIN'' THE GYPSY',
  'jazz, hard bop, jazz ballads',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2BMIOcIFmfp5YHvNTDnhah',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:56',
  'SONNY AND LINDA SHARROCK',
  'BLACK WOMAN',
  'BLACK WOMAN',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:08',
  'SONNY AND LINDA SHARROCK',
  'APOLLO',
  'PARADISE',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:08',
  'SONNY AND LINDA SHARROCK',
  'PEACEFUL',
  'PARADISE',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:13',
  'SHIRLEY BASSEY',
  'LIGHT MY FIRE',
  NULL,
  'easy listening',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/3gBL7kYrPRLw12Mgon4vpW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:18',
  'FAIROUZ',
  'BI LAYL WE CHITI',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:20',
  'FAIRUZ',
  'ZAHRAT AL JANOUB',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1aY6HxEK0Kkhc0b5Jcnfwf',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:29',
  'TOM ZE',
  'VOICE INVENTE',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:30',
  'TOM ZE',
  'UI (VOCE INVENTA)',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:32',
  'TOM ZE',
  'UM E UM',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:34',
  'TOM ZE',
  'MENINA AMANHA DE MAMHA',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:37',
  'JORGE BEN',
  'POR CAUSA DE VOCE, MENINA',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/0ygiNW94gn3qPhYrijUiC2',
  'found',
  90.7,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:44',
  'HOLLY COLE',
  'ONION GIRL',
  NULL,
  'vocal jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2eED5bs5upyzSbzHZFBTM1',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:44',
  'JORGE BEN',
  'MEDLEY',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:54',
  'Susannah McCorkle',
  'The Waters of March',
  'Concord Jazz Sampler Vol.2',
  'vocal jazz, jazz, bossa nova',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2HDdFE3LzgZ2ZWVXS0jEQF',
  'found',
  100,
  '2026-02-25 08:05:34'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-25';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:04',
  'John Coltrane',
  'Welcome',
  'The Gentle Side of John Coltrane',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6875x2ACym3agd95Ma677q',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:09',
  'Ted Nash, Steve Cardenas, Ben Allison',
  'Ida Lupino',
  'Healing Power: The Music of Carla Bley',
  'ambient jazz, jazz, big band',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5Yu4dE4pSmxj4toO386uCc',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:16',
  'Joshua Redman',
  'Borrowed Eyes',
  'Words Fall Short',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:21',
  'Anat Fort',
  'Mumbo Jumbo',
  'The Dreamworld of Paul Motian',
  'ambient jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5b4wA08eg4DvDac8TQQjLD',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:27',
  'Thelonious Monk',
  'Bluehawk',
  'Thelonious Monk Alone in San Francisco',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1K4d8wa5NanzH425a42DMn',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:30',
  'Abdullah Ibrahim',
  'Mississippi',
  'Mukashi',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2g2aNAhS4zQH8aXzz7Wz7n',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:37',
  'Wes Montgomery',
  'Just Walkin''',
  'Bumpin''',
  'jazz, hard bop, cool jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0CjskN9uilgo2ykSeajcdL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:41',
  'Chief Adjuah (Christian Scott)',
  'Isadora',
  'WWOZ on CD, Vol. 41: Tuned In',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:48',
  'Dave Liebman',
  'Moon and Sand',
  'Trust and Honesty',
  'free jazz, jazz, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5gtj2QHZ9XMtSptVDfhDGW',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:54',
  'Tommy Flanagan',
  'West Coast Blues',
  'Something Borrowed, Something Blue',
  'jazz, hard bop, jazz ballads',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5PCuMBiFhrK36wK6QZMph2',
  'found',
  89.8,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:00',
  'Ginger Baker',
  'Mountain Time',
  'Horses & Trees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:04',
  'CHARLES MINGUS',
  'FABLES OF FAUBUS',
  'MINGUS AH UM CHARLES MINGUS',
  'jazz, hard bop, bebop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5RWzKLxXVzkJQ702yWfp1w',
  'found',
  98,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:13',
  'Tom Harrell',
  'Four the Moment',
  'Moving Picture',
  'jazz, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4emzW9xDiDjxj0Es931vQr',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:19',
  'Chamber 3',
  'The Sparks',
  'Transatlantic',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0UkqQwzRdZn4N2WqX3V64j',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:25',
  'Marc Johnson & Eliiane Elias',
  'B Is for Butterfly',
  'Swept Away',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:29',
  'Danny Gatton',
  'Poinciana',
  'Hot Rod Guitar: The Danny Gatton Anthology',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:35',
  'Jane Ira Bloom',
  'Song Patrol',
  'Early Americans',
  'free jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0MdieeA1hEPf0MwgLVzGc6',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:38',
  'Bill Frisell',
  'Listen',
  'The Intercontinentals',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6bQnov5zdkxiWKh35THilJ',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:45',
  'John Zorn, George Lewis, Bill Frisell',
  'News for Lulu',
  'News for Lulu',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:50',
  'Eddie Harris',
  'Freedom Jazz Dance',
  'The In Sound',
  'soul jazz, jazz funk, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0KciFkq67qqNrfmvbX1FCR',
  'found',
  98,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:59',
  'Maceo Parker',
  'Blues for Shorty Bill',
  'Southern Exposure',
  'jazz funk, funk, soul jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0ZwigTmCBUwtVEvjx8RjDd',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:04',
  'New Orleans Social Club feat. John Boutte',
  'Why',
  'Live at Jazz Fest, 2007',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:10',
  'Michael Wolff',
  'In My Life',
  'Sunny Day',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0qktVoSI4D5XjBe3gJBuvC',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:14',
  'Martin Taylor',
  'My Funny Valentine',
  'Portraits',
  'french jazz, newgrass',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2512svUPLf5QGeU9Aop6pb',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:20',
  'Jazz Sabbath',
  'Behind the Wall of Sleep',
  'Jazz Sabbath Live',
  'jazz, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3aosuOCbTCRKj98AmRiUCu',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:30',
  'Lisa Hilton',
  'Getaway',
  'Getaway',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6mxNrCbQNO64yS8rClyfa7',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:34',
  'Harvey Mandel',
  'Senor Blues',
  'Harvey Mandel: Essential Guitar Masters',
  'blues rock',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6IiClqQ3heJIuJl5f679lM',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:40',
  'Julian Lage',
  'Talking Drum',
  'Scenes from Above',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:45',
  'Astral Project',
  'Cowboy Bill',
  'The Legend of Cowboy Bill',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5DPtsrSZkNOR5j4PbJH0QB',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
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
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:56',
  'Allen Toussaint''s Jazzity Project',
  'Traffic',
  'Going Places',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5GskQ4hlFkBzNvpdX7XZE1',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:07',
  'FATS WALLER',
  'THIEF IN THE NIGHT',
  'THE COMPLETE FATS WALLER VOL III',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:09',
  'GLADYS BENTLEY',
  'RED BEANS AND RICE',
  'THE COMPLETE BLUES SESSIONS OF GLADYS BENTLEY ETC',
  'classic blues, blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7dUyDmlnk1Qh4Gfcnvwhvu',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:22',
  'EDDIE LANG',
  'RAINBOW DREAMS',
  'EDDIE LANG 1927-32',
  'ragtime, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5zoY4qZQ6KnInZ7ofwnFrw',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:22',
  'MILLS BLUE RHYTHM BAND',
  'JAZZ COCKTAIL',
  'MILLS BLUE RHYTHM BAND RHYTHM SPASM',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0iQvdJ6smJlg9grGUhgLX4',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:23',
  'ETHEL WATERS',
  'GEORGIA BLUES',
  'ETHEL WATERS 1929-31',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5vvW2ve5g1q1VOwT3h7Kiy',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:25',
  'ADRIAN ROLLINI AND HIS ORCHESTRA',
  'TAP ROOM SWING',
  'SWING LOW',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:34',
  'SIDNEY BECHET',
  'WILD MAN BLUES',
  'SIDNEY BECHET MASTER MUSICIAN',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1avicIA4wxyqVM6ieO127A',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:36',
  'FLETCHER HENDERSON AND HIS ORCHESTRA',
  'HOP OFF',
  'FLETCHER HENDERSON ON COLUMBIA VOL 3',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6gHerfTkZ02OKcZKBkQbm0',
  'found',
  91.6,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:37',
  'FRANKIE HALF PINT JAXON',
  'SPANK IT',
  'FRANKIE HALF PINT JAXON 1927-40',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0ll2LX8kKF40Hxpy0ElzCv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:50',
  'JOHNNY DODDS TRIO',
  'BLUE PIANO STOMP',
  'BLUE CLARINET STOMP',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1jtEZInC3ItmHlDlYuPZrU',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:50',
  'VICTORIA SPIVEY',
  'FUNNY FEATHERS BLUES',
  'VICTORIA SPIVEY vol. 2',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/4kE8VBAsywtqarHxAi3u4j',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:53',
  'HENRY ALLEN AND HIS NEW YORK ORCHETRA',
  'SWING OUT',
  'HENRY ALLEN AND HIS NEW YORK ORCHETRA 1929-30 VOLUME TWO',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:01',
  'REUBEN',
  'ZUDDAN',
  'CHICAGO IN THE 30''S',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:05',
  'EARL HINES AND HIS ORCHESTRA',
  'NUMBER 19',
  'THE FATHER JUMPS, EARL HINES AND HIS ORCHESTRA',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0stLt6PLoDG8O73A8ZkaMD',
  'found',
  90.2,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:07',
  'ALPHONSE TRENT AND HIS ORCHESTRA',
  'I''VE FOUND A NEW BABY',
  'THE TERRITORY BANDS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:17',
  'McKENZIE AND CONDON''S CHICAGOANS',
  'LIZA',
  'EDDIE CONDON 1927-38',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/36mq96wgfeBD4mQ0KGEUol',
  'found',
  78.2,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:19',
  'ETHEL WATERS',
  'SOMEDAY SWEETHEART',
  'ETHEL WATERS 1926-29',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5uxvuBioXCqSYnXXmDTVeD',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:22',
  'BIX BEIDERBECKE',
  'WAY DOWN YONDER IN NEW ORLEANS',
  'BIX BEIDERBECKE VOLUME 1 SINGIN THE BLUES',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0kcYhUfAlMlvx6xiZg2CQa',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:31',
  'LOUIS DUMAINE AND HIS JAZZOLA EIGHT',
  'TO-WA-BAC-A-WA',
  'NEW ORLEANS IN THE 20''S',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:31',
  'NEW ORLEANS WILLIE JACKSON',
  'BAD BAD MAMA',
  'NEW ORLEANS WILLIE JACKSON 1926-28',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:34',
  'SAM MORGAN''S JAZZ BAND',
  'Sing On',
  'NEW ORLEANS WILLIE JACKSON ETC...',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/47r2oQIKM62sNR7rMm9Kv1',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:44',
  'LOUIS ARMSTRONG AND THE MILLS BROTHERS',
  'MY WALKING STICK',
  'LOUIS ARMSTRONG AND THE MILLS BROTHERS',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1cmFSOro9FogB7gZBmA2YG',
  'found',
  91.9,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:44',
  'THE CATS AND THE FIDDLE',
  'THURSDAY EVENING SWING',
  'KILLIN'' JIVE',
  'swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3yOthLpRoQyFj35WgbFJLw',
  'found',
  88,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:47',
  'KING COLE TRIO',
  'HIT THAT JIVE JACK',
  'NAT KING COLE TRIO',
  'christmas, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3uP0c239ViiuuLasXAsEPL',
  'found',
  88,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:56',
  'HALFWAY HOUSE ORCHESTRA',
  'SNOOKUM',
  'HALFWAY HOUSE ORCHESTRA',
  'jazz house',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6J16inOnTtSop3AFlxcMms',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:56',
  'JOHNNIE MILLER''S NEW ORLEANS FROLICKERS',
  'PANAMA',
  'new orleans stomp',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0B4dXHVSfhWtWYsWOnWSeR',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:56',
  'PARENTI''S LIBERTY SYNCOPATORS',
  'MIDNIGHT PAPA',
  'MIDWAY DANDE ORCHESTRA AND PARENTI''S LIBERTY SYNCOPATORS',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2jCqm6Jbdae2bzrsOfJogz',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:06',
  'Joe Krown Trio',
  'Feels So Good',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:09',
  'James Booker',
  'Come Rain Or Come Shine',
  'A Taste Of Honey- Live In New Or',
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2uF9Yfwmiha58ehyxxDH1w',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:15',
  'John Rankin',
  'FRANKIE AND JOHNNY',
  'fess mess',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:19',
  'Pfister Sisters',
  'I Wish I`d Never Seen New Orlean',
  'New Orleans',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:23',
  'Professor Longhair',
  'Cry To Me',
  'Crawfish Fiesta',
  'cajun, zydeco, classic blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/33tlCHWbOyEz5h2B3f6SID',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:27',
  'The Iguanas',
  'Oye Isabel',
  'Live At Wolf Trap',
  'tejano, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5sw7lCJewstZOsizUzh3lZ',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:35',
  'Spencer Bohren',
  'Ring Them Bells',
  'Tempered Steel',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:41',
  'johnny adams',
  'i wonder where our love has gone',
  'one foot in the blues',
  'soul blues, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3ODqNM7CFPC3nSPTlVuRk4',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:54',
  'the tin men',
  'turn my lights back on',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:55',
  'Irma Thomas',
  'Early In The Morning',
  'Simply Grand',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0ouaambLAssCxBC7yEmevA',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:55',
  'danny barker',
  'get yourself a job girl',
  NULL,
  'ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4bu90LJli55M7iveTt4Xg7',
  'found',
  92,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:00',
  'Dr. John',
  'Mack The Knife',
  'Ske-Dat-De-Dat- The Spirit Of Sa',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:07',
  'john papa gros',
  'quitters never win',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:16',
  'Clarence Gatemouth Brown',
  'Swamp Ghost',
  'American Music, Texas Style',
  'blues, classic blues, modern blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3qNPf3xGO6FfBBvc6uBSja',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:23',
  'George Porter Jr. & Runnin'' Pard',
  'Tito''s Dumpling Machine',
  'Porter''s Pocket',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:29',
  'Dr. John',
  'Life`s A One Way Ticket',
  'N`Awlinz Dis, Dat Or D`udda',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0IIKwgbx4hCi3uYEeZ8Icv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:35',
  'little freddy king',
  'do she ever think of me',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:37',
  'Tab Benoit',
  'I Got Loaded',
  '2002 - Wetlands',
  'blues, cajun, modern blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5QCzPYNwsFyMnU5MudD4pn',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:43',
  'steve conn',
  'the one and only truth',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0Svdv1B9D5pfnSmTRHuT54',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:47',
  'Beau Jocque',
  'Going To The Country',
  'Check It Out, Lock It In, Crank',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:57',
  'Nathan & The Zydeco Cha Chas',
  'Your Mama Don`t Know',
  'Your Mama Don`t Know',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3eggFAvoYTPXEgCLo8JjyT',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:01',
  'down in new orleans',
  'lil nathan and zydeco big timers',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:07',
  'Funk Monkey',
  'Break in The Road',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7jYKCBjzTH48S5LrDLltr5',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:11',
  'Jon Batiste',
  'We Are',
  'We Are',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7cx51c7voFYPh3MjkocCwD',
  'found',
  70.8,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:18',
  'bonerama',
  'Ride Your Pony',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:20',
  'Trombone Shorty',
  'Backatown',
  'Backatown',
  'brass band, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4ICmgorEOT19M7wdqYv2ti',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:29',
  'Ivan Neville`s Dumpsta Funk',
  'Meanwhile',
  'WWOZ CD #30- Dues Paid',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:44',
  'toyesauce',
  'as good as it gets',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:45',
  'mike doussan',
  'I Believe',
  NULL,
  'roots rock',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4Jfd03B9DGogjHtjfrXhas',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:48',
  'leigh harris',
  'down home girl',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:54',
  'marcia ball',
  'mama''s cooking',
  NULL,
  'zydeco, cajun, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7dZk0jyZQe3YETYX2Rev0I',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:56',
  'Irma Thomas',
  'River Is Waiting',
  '50th Anniversary Celebration',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3Kk84LxHJbomDcM3NN41eP',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:02',
  'hound dog taylor',
  'Rock Me',
  'beware of the hound',
  'classic blues, blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5mwfmN8lnJDM56QUReNCi0',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:03',
  'lazy lester',
  'I Hear You Knocking',
  'i hear you knockin',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4QhIUtkgUda6EX3ERME49c',
  'found',
  72.6,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:04',
  'john lee hooker',
  'she shot me down',
  'big soul of john lee hooker',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6sQLXdi8Jv6JNhrOI5f5BE',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:07',
  'buddy guy',
  'boogie family style',
  'breaking out',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6O0bez24yXEk8v6OlWiEjN',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:09',
  'jelly roll kings',
  'i didn''t know',
  'rocking the juke joint down',
  'blues, footwork, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/3SoeWGX9UoumvXIkPpeL0j',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:11',
  'albert king',
  'cadillac assembly line',
  'best of',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5gScIkPauKuBnNRHx8Srnk',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:23',
  'lil poochie and hezekiah early',
  'i got my eyes on you',
  'natchez burning',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:26',
  'blind willie mctell',
  'broke down engine blues',
  'rough guide to blind willie mctell',
  'blues, country blues, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/3pv4AWo4JMFi00CrvOfbOo',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:33',
  'jerry mccain',
  'she''s tough',
  'she''s tough',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6E1J2FgYZZWG4lKXPON4jv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:35',
  't-model ford',
  'nobody gets me down',
  'pee wee get my gun',
  'blues, modern blues, footwork',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0Cak0ZnnZcQBZaWGtvq6Cg',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:36',
  'clifton chenier',
  'i may be wrong',
  'bogalusa boogie',
  'zydeco, cajun',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6OIz9hrUQGeOeqJSMgq3CX',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:46',
  'fleetwood mac',
  'shake your money maker',
  'peter green''s fleetwood mac',
  'classic rock, yacht rock, soft rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/2mfhygiEDr8zKKTDW8mxcI',
  'found',
  85.4,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:46',
  'willie williams',
  'wine headed woman',
  'bea and nbaby records vol 3',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5YI2VohIHawpJg3RL8zAry',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:52',
  'MABEL FRANKLIN',
  'LET''S DO THE WIGGLE',
  'STOMPIN'' 2',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:03',
  'washboard chaz blues trio',
  '1st shot got him',
  'mix it up',
  'zydeco',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0kTgPsgM72mLs6i9qrTSPK',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:06',
  'tbone walker',
  'cold cold feeling',
  'imperial recordings',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:07',
  'Johnny Sketch & The Dirty Notes',
  'The Getaway',
  'The Big Awesome',
  'cajun, brass band',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7wcRGPAL9B6UGjJIUVZ5Gt',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:10',
  'drink small',
  'bowlegged woman',
  'i know my blues are different because they are mine',
  'soul blues, blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/2Q6p8STYOem6PabCnOfGlI',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:18',
  'dr. john',
  'how come my dog don''t bark',
  NULL,
  'cajun, zydeco',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/180AIwUcBxCWRiWsPLTkyJ',
  'found',
  90.9,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:19',
  'george smith',
  'oopin doopin oopin',
  'little george smith rpm collection',
  'blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7BSoyGvAvpHClPZc0McHxo',
  'found',
  84.4,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:20',
  'boy blue',
  'joe lees rock',
  'wolf pack',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1OnGeXiSbWeUNH6HHsZY99',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:36',
  'brownie mcghee & sonny terry',
  'dark road',
  'sonny terry & brownie mcghee',
  'blues, country blues, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/15sCODWaJgDYm020YWb6gm',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:56',
  'lightning hopkins',
  'shake that thing',
  'mojo anthology',
  'blues, classic blues, country blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1uBEqAVuK19wdnswrerWcF',
  'found',
  72,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:20',
  'los hombres calientes',
  'vodou love call',
  'vol.4:vodou dance',
  'latin jazz, brass band, cajun',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5tbhua2de8oTXMdJodTgze',
  'found',
  71.3,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:21',
  'ray charles',
  'living for the city',
  NULL,
  'soul, soul blues, blues',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6kdwt29QgPNO3lai10CIQL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:28',
  'ellis marsalis',
  'tell me',
  'the ellis marsalis quintet plays the music of ellis marsalis',
  'jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/25T1EwK8yC1yMSjKeZWAqg',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:33',
  'stevie wonder',
  'front line',
  'original musiquarium I',
  'motown, classic soul, soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6CEht6j01t69htAdZRoZhG',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:41',
  'joshua redman',
  'faith',
  'moodswing',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6N63X82T4RLjqHiS2FLSw2',
  'found',
  83.4,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:48',
  'poncho sanchez and terence blanchard',
  'chano pozo medley',
  'poncho sanchez and terence blanchard=chano y dizzy',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2a0YvbHAxIf9Y3Go9MzPju',
  'found',
  70.8,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:55',
  'john coltrane',
  'mr.pc',
  'giant steps',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3SGRfpQKvK8RRLzH3Wk0Uz',
  'found',
  79,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:03',
  'donny hathaway',
  'someday we''ll all be free',
  'extensions of a man',
  'soul, classic soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0iJP3XxZNE8tP7YnB23J1r',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:17',
  'the jazz crusaders',
  'freedom sound',
  'freedom sound',
  'hard bop, soul jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0RCl5heVm78hSWeyeOpAno',
  'found',
  98,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:29',
  'isley brothers',
  'when will there be a harvest for the world?',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:32',
  'sam cooke',
  'a change is gonna come',
  NULL,
  'motown, soul, classic soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0YfOnJWqmAKaUvEL1QcNop',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:33',
  'billy harper',
  'light within',
  'somalia',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:52',
  'hank mobley',
  'no room for squares',
  'no room for squares',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1Z2O6rjA0wSRpI4h16phvL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:14',
  'sounds of blackness',
  'living the blues',
  'africa to america:the journey of the drum',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:18',
  'the chambers brothers',
  'people get ready',
  'the time has come',
  'acid rock, psychedelic rock',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3mZUL74cVPvMDTOvli0Kmu',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:20',
  'don pullen',
  'reservation blues',
  'sacred common ground',
  'free jazz, avant-garde, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0AbaxwRaZuldmsTjnGJ4jA',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:21',
  'nina simone',
  ',i wish i knew how it would feel to be free',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5CKHhg31HcYYhwUeeGqvhq',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:35',
  'gil scott-heron',
  'who''ll pay reparations to my soul',
  NULL,
  'spoken word, jazz funk',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2FCx7CtCJ5f47EZrQz12NS',
  'found',
  93,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:43',
  'chi-lites',
  'more power to the people',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:45',
  'quianna lynell',
  'sing out,march on',
  'a little love',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:46',
  'max roach',
  'members don''t git weary',
  'members don''t git weary',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4TqvzHm7fZE2ZmhSwl0tY3',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:57',
  'charles jenkins',
  'i will live',
  'the best of both worlds',
  'gospel, worship, traditional gospel',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/26RjdSniupy13wQf1QzCRX',
  'found',
  73.7,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '19:04',
  'Lloyd Lambert',
  'Hop & Jump',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
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
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '21:59',
  'Weather Warlock',
  'Path To Complete Totality',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:00',
  'Soul Creole',
  'Trois rangs dub',
  'Single',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7fXLuuwv8fVJSVUNzrUl8W',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:02',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans',
  'cajun, zydeco, classic blues',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:05',
  'Hiatus Kaiyote',
  'Get Sun',
  'Mood Valiant',
  'neo soul, indie soul, alternative r&b',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4WdUMgVMYdn1xeu3X2z9Ai',
  'found',
  75.1,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:09',
  'Caddywhompus',
  'Company',
  'Feathering A Nest',
  'math rock, noise rock, indie jazz',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6VU1SG5Tkmf1iiWjBWf8Ti',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:12',
  'The Flaming Lips',
  'When You Smile',
  'Clouds Taste Metallic',
  'neo-psychedelic',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3hUSHfPpDPCGL6evUbIEYt',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:17',
  'Pope',
  'Newboi',
  'BFM',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3rGufZBCoohiFBS3HHEI6R',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:24',
  'Pope',
  'Make You Feel',
  'BFM',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:33',
  'Pope',
  'Ocean Song',
  'Supersonic',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1d4BtAH6KUx7Rss1JednNz',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:38',
  'Julie Odell',
  'Caterpillar',
  'Autumn Eve',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0hXfaaPKEVCsteJCkBD7ud',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:44',
  'Tyler Childers',
  'Whitehouse Road',
  'Live On Red Barn Radio I & II',
  'country, outlaw country, red dirt',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0fbR95FEaJUxiQYaqZZukv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:49',
  'Kneecap',
  'Liar''s Tale',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:53',
  'Big Sis and Reggie Watts',
  'Switchplans',
  'Nue Griz',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:55',
  'King Louie',
  'Jesus Loves My One Man Band',
  'One Man Band',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:01',
  'Musical Youth',
  'Pass The Dutchie',
  NULL,
  'reggae',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1BkY0N8ChFk2mdLbAUu8ZK',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:03',
  'Tom Waits',
  'Set Right Up',
  'Small Change',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:08',
  'Clifton Chenier',
  'Clifton''s Blues',
  'King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0wSydZ8PboFsSq8vn3YtGH',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:08',
  'Clifton Chenier',
  'Louisana Stomp',
  'King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4qHrFhR0HCsZSP2MxjCsF4',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:14',
  'Dr. John',
  'Bon Temps Rouler',
  'Tango Palace',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7FPVGBK71BREOVljmy1DFV',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:18',
  'Johnny Mastro and Mama''s Boys',
  'Little Freddy Is King',
  'Elmore James For President',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:21',
  'Greazy Alice',
  'Just Another One',
  'As Time Goes By',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0G6UcQICO9sXR7tDojtAIN',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:26',
  'Sick Thoughts',
  'Me and My Guitar',
  'Another Piece of Plastic',
  'egg punk, punk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6f5uiZfiyn2kVs2runFwm3',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:29',
  'Missing Monuments',
  'Super Hero',
  'Missing Monuments',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:32',
  'Quintron',
  'Mouth Of Harahan - The Ballad of King Louie Bankston',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:37',
  'Quintron and Miss Pussycat',
  'Rotten Egg',
  'Chrystal Crunchy',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:42',
  'R. Scully',
  'Fentanyl Folk',
  'What Should I Wear',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:46',
  'Morning 40 Federation',
  'Old Man',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:50',
  'Morning 40 Federation',
  'St. Ferdinand',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:54',
  'Brian Stoltz',
  'Bow Down On Sunday',
  'New World Rising',
  'modern blues',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2M9y9u4PrUPyknKeDgKr56',
  'found',
  84.5,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:58',
  'King Lee, Quintron',
  'Tire Shop',
  'Tire Shop',
  'gqom, ndombolo, afro tech',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1xnAgZXcKZrLQK5LvvSlJn',
  'found',
  98,
  '2026-02-26 07:22:38'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-26';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '00:23',
  'Allay Earhart',
  'Fema',
  '2005',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/0dpMxB6OjIqzv5cMbfiGxH',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '00:32',
  'Ray $av',
  'VICTIM',
  'Short for $avage',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/1KeQqfVNxpUeecR17gcNmS',
  'found',
  100,
  '2026-02-26 07:22:38'
);