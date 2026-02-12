-- WWOZ Database Export
-- Generated: 2026-02-12T07:12:06.426Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-12 07:11:26
-- Days: 3
-- Tracks: 481

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-09',
  'https://open.spotify.com/playlist/4qylm1DZAZ4alWYU8f2vRl',
  '{"totalTracks":228,"successfullyFound":160,"notFound":68,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-09 07:25:29',
  '2026-02-12 07:12:05'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-10',
  'https://open.spotify.com/playlist/6ZZPefrO7j7znsRZfiuISm',
  '{"totalTracks":109,"successfullyFound":65,"notFound":44,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-10 08:00:06',
  '2026-02-12 07:12:05'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-11',
  'https://open.spotify.com/playlist/5n4kjBpJbVhKduiaVXHbFi',
  '{"totalTracks":120,"successfullyFound":63,"notFound":57,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-12 07:11:25',
  '2026-02-12 07:12:05'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-09';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:00',
  'Rahsaan Roland Kirk',
  'No Tonic Press',
  'Rip, Rig, and Panic',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:05',
  'Anna Laura Quinn',
  'Walking After Midnight',
  NULL,
  'vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5Z5o9p8hyD8BndPxaM36UD',
  'found',
  77.2,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:09',
  'Ethel Ennis',
  'If Women Ruled the World',
  NULL,
  'vocal jazz, jazz ballads',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2s4ztxOEt3wmcXYSaNsFGA',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:14',
  'Beverly Kenney w/Gildo Mahones, Tommy Potter, Ron Jefferson',
  'Almost Like Being In Love',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:16',
  'Lou Rawls',
  'Any Day Now',
  NULL,
  'philly soul, classic soul, soul blues',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/63kbZwmwP9Ck4LwASWNtC4',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:20',
  'Aurora Nealand (featuring Dr. Cornell West)',
  'American Tune',
  'Songs My Others Taught Me',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:28',
  'Ella Fitzgerald',
  'Alright, Okay You Win',
  NULL,
  'vocal jazz, jazz, swing music',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6zbSqBno2y8zDu4KDcxbrA',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:29',
  'Jon Batiste',
  'It Never Went Away',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2CcghfG9z26lruSjyRPZiK',
  'found',
  76.9,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:33',
  'Hector Marignon',
  'Refugee',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:41',
  'The Brothers & Sisters',
  'I Shall Be Released',
  'Dylan''s Gospel',
  'northern soul, motown',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3AcvmZCkv6Ly564m1SSMfW',
  'found',
  71.8,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:48',
  'Willie Bobo',
  'It''s Not Unusual',
  NULL,
  'latin jazz, afro-cuban jazz, jazz funk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2dElNzSm6AR5so4wcmjavf',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:51',
  'Mr. Sahma Sipayung',
  'Please Stop This F---in'' War!',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:55',
  'Sani Gamedze',
  'Purple Raine',
  'Colourmeover',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:57',
  'John Martyn',
  'Strange Fruit',
  'The Church with One Bell',
  'folk, folk rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6x1nfrvTDshEMEdZ6wJwyT',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '00:59',
  'Pheeron Aklaff, Sonny Sharrock, John Stubblefield, Carlos Ward',
  'Alligator and Kangaroo',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:04',
  'Irma Thomas',
  'Early In the Morning',
  'Simply Grand',
  'classic soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0ouaambLAssCxBC7yEmevA',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:07',
  'New Orleans Moonshiners',
  'It''s Only a Paper Moon',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:13',
  'Randy Newman',
  'New Orleans Wins the War',
  'Land of Dreams',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/58mtblPZgAhwzCRa8vLNOW',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:16',
  'Lena Horne',
  'It''s a Mad, Mad, Mad Mad, World',
  NULL,
  'vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6Jjy5ENHXHeKNMdkF5Yjwc',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:18',
  'Etta James',
  'Strange Things Happening',
  NULL,
  'soul, soul blues, blues',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5oMHiKFjHyJ23lg3EMNlgr',
  'found',
  86.2,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:21',
  'Ed Lincoln',
  'Sack o''Woe',
  NULL,
  'brazilian jazz, bossa nova',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0Y7KReJY92mCe0HLJqkpE8',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:23',
  'Elaine Strich',
  'Easy Street',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:28',
  'Roberta Flack',
  'Sweet Georgia Brown',
  'Roberta',
  'adult standards, classic soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4Cg0a3JBuv6fXehtfIAY5w',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:33',
  'Herbie Hancock Quintet',
  'All Blues',
  'A Tribute to Miles',
  'jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/77wnI6oOLfgY74OMKtMgz5',
  'found',
  86.2,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:50',
  'Bobby Previte',
  'Jazz Tango, Vol. 1.2',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:50',
  'Corine Bailey Rae',
  'Venus as a Boy',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:54',
  'Sariyah Idan w/Laura LLoreta',
  'Refuge in Blue',
  'Breaking Shadows',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '01:57',
  'Gil Scott-Heron',
  'The Vulture',
  'The Revolution Begins',
  'spoken word, jazz funk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6AI2GKTk1heUQGsSrWoNrG',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:00',
  'Ramsey Louis Trio',
  'Wade in the Water',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:05',
  'Dirty Dozen Brass Band',
  'Mardi Gras In New Orleans',
  NULL,
  'brass band, jam band, cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/743Zn9s2B4TgSQzTyqspN6',
  'found',
  84.8,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:09',
  'Stooges Brass Band',
  'Weed Drought',
  NULL,
  'brass band, cajun, new orleans bounce',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4hjM3ZZImqpI9ACo68cACn',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:16',
  'Cubanismo! w/Jesus Alemany & Alfredo Rodriguez',
  'Cicuta Tibia',
  NULL,
  'latin jazz, afro-cuban jazz, son cubano',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5ouNZKHe8IQFzkinvjAunC',
  'found',
  76.3,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:22',
  'Shirley Horn',
  'Don''t Let the Sun Catch You Cryin''',
  'You Won''t Forget Me',
  'vocal jazz, jazz, jazz ballads',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/41XMubMLEMTblD0yXT2AIz',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:28',
  'Amy Winehouse',
  'You Sent Me Flying',
  'Frank',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2Zrnqh5nA5lYeiehF23Nu7',
  'found',
  92.2,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:40',
  'Louis Armstrong',
  'We Shall Overcome',
  NULL,
  'jazz, swing music, vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/64eCXP93Uk0GmUbNFmXyhW',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:44',
  'Cecile Mclorin Salvant',
  'Wild Women Don''t Have the Bluesq',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:46',
  'Robert Flack & Donny Hathaway',
  'Come Ye Disconsolate',
  'We Shall Overcome',
  'adult standards, classic soul, soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/53hI2E4KnHEwrn4laNVeEw',
  'found',
  83.2,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:51',
  'Jolie Holland',
  'Dark Days',
  'Wine Dark Sea',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0PdcgYS6We2Xzw2tE61cZq',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '02:56',
  'Ellis Marsalis',
  'Zee Blues',
  'Ruminations in New York',
  'jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/15L2OZD8oh05rs9wiDX2pJ',
  'found',
  100,
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
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
  '2026-02-09 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '04:31',
  'Hawkettes',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Overnight Music - Monday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '05:32',
  'James Sugar Boy Crawford',
  'Jock-A-Mo',
  'Mardi Gras In New Orleans, Vol',
  '',
  'Overnight Music - Monday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '06:09',
  'Bill Evans',
  'Peace Piece',
  'Everybody Digs Bill Evans',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/58yFroDNbzHpYzvicaC0de',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '06:09',
  'Morphine',
  'Bo''s Veranda',
  'b sides and otherwise 1993',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5zF1TVhvYSxwr0euTCCHy4',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '06:10',
  'Andre 3000',
  'I Swear I Relly Wanted to Make a',
  'New Blue Sun',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '06:22',
  'Charles Mingus',
  'Perdido',
  'Mingus at Carnegie Hall',
  'jazz, hard bop, bebop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/40ScZ2keXlLelIzZQspuJm',
  'found',
  80.4,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '06:44',
  'Ahmad Jamal Trio',
  'Patterns',
  'The Awakening',
  'jazz, cool jazz, hard bop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/64vJj4Hdf7YTJl07TGQftP',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '06:52',
  'Max Roach',
  'Equipoise',
  'Members, Don''t Git Weary',
  'hard bop, bebop, jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3gvQD27MucPhSDt2aYldtC',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:14',
  'Southern University Jazz Ensemble',
  'Samba Dee',
  'Goes to Africa With Love',
  'free jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5mb4db7hmJ6ZeLz6qkIeZN',
  'found',
  89.8,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:18',
  'Alice Coltrane',
  'Blue Nile',
  'ptah,the el daoud',
  'free jazz, jazz, experimental jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/0nYbjARvvJYQulZYDKlSum',
  'found',
  98,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:25',
  'Roy Hargrove',
  'Strasbourg/St. Denis',
  'Earfood',
  'jazz, jazz ballads, latin jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/62VWmsNoDmqT0Mj9oHHFVh',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:30',
  'Nicholas Payton',
  'Relaxin'' With Nick',
  'Relaxin'' With Nick',
  'jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/11QqXPoYDC1wLjBrVUJ6AU',
  'found',
  98,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:38',
  'Art Blakey and the Jazz Messengers',
  'Hammer Head',
  'Free For All',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:49',
  'Noro Morales',
  'Perfume de Gardenias',
  'Noche y Dia',
  'latin jazz, mambo, afro-cuban jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1GzhbHdcrtW8XPjHyNeSHN',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:52',
  'Walter Wanderley',
  'Rain',
  'Rain Forest',
  'bossa nova, brazilian jazz, exotica',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5bXGJIOZZ4TwcUpRYqf450',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '07:55',
  'Cal Tjader',
  'Warm Song',
  'The Prophet',
  'latin jazz, afro-cuban jazz, exotica',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6NwhP9uEEXTEaP9Rz1Uc9b',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:05',
  'Frank Sinatra',
  'My Way',
  NULL,
  'christmas, big band, adult standards',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3spdoTYpuCpmq19tuD0bOe',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:05',
  'Hiatus Kaiyote',
  'Nakamarra',
  'Tawk Tomahawk',
  'neo soul, indie soul, alternative r&b',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1I0O4q0Pq5x6n9d24Es5uN',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:09',
  'Thelonious Monk',
  'I''m Gettin'' Sentimental Over You',
  'Tokyo Concerts',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4VvzOOGEortmcVGdCiEQz9',
  'found',
  92,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:19',
  'Big Chief Monk Boudreux and the Golden Eagles',
  'Indian Red',
  'Live At The H & R Bar',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:26',
  'Wild Tchoupitoulas',
  'Here Dey Come',
  'The Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4OiDWOBOiutBEm4Cj7RkkK',
  'found',
  84.7,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:29',
  'Maddy Kirgo',
  'Try Harder',
  'Shadow On My Light',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1K1KYwt4P3FwtkNAGjxiPF',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:33',
  'Wilco',
  'Impossible Germany',
  'Sky Blue Sky',
  'alt country, americana, indie rock',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6L0BBPYeWnaQJeDa0ox0IA',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:40',
  'BADBADNOTGOOD',
  'Celestial Hands',
  'Mid Spiral: Growth',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4HOVerAo4A7ipCQJix9fIp',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:46',
  'Nate Smith, Kiefer, CARRTOONS',
  'COUGH DROP',
  'LIVE-ACTION',
  'jazz fusion, indie jazz, nu jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5sacf57OnsUGuIdVO8WrT2',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '08:51',
  'Mort Garson',
  'Plantasia',
  'Mother Earth''s Plantasia',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2XV5CUyw7gPVi18d718D4f',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
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
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:05',
  'Dr. John',
  'Sweet Home New Orleans',
  'The Best Of The Parlophone Years',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6qFUn74CAPq9P9syPi3M5v',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:16',
  'Harry Connick jr',
  'Trouble',
  'She',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/26FR5VeMiCIUe2znVzzQKR',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:18',
  'Margie Perez and The King Cake B',
  'Mardi Gras Carnival',
  'Mardi Gras Carnival',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:25',
  'Bobby Charles',
  'See You Later, Alligator',
  'The Cosimo Matassa Story [Disc 3',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/15AqwrLBlEwtP1PPUBzUOu',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:27',
  'Fats Domino',
  'My Blue Heaven',
  'The Legends Of New Orleans- Fats',
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6WHzRPYYEoyFwiHn4iPZTj',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:31',
  'Fats Domino',
  'Shake, Rattle & Roll',
  'Live In New Orleans',
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0pqtZWWdIbKgqOLLdNf45F',
  'found',
  85.4,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:33',
  'Davell Crawford',
  'I''m Walkin''',
  'Dear Fats, I Love You',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/7Fs1KBpTsiuh86gmhRMRux',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:38',
  'Huey Piano Smith',
  'Don''t You Just Know It',
  'Gumbo Ya Ya The Cosimo Matassa S',
  'boogie-woogie, doo-wop',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2JnmWxBSfe7YaOrGxOMjD2',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:41',
  'Joe Krown Trio',
  'Tipitinas',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/3UqQPIVgaNFbNalXZlcd41',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:46',
  'Los Po-Boy-Citos',
  'Oye Mamacita',
  'Hasta',
  'latin jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0ZosDk71khOF95b0SYUByl',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '11:51',
  'Delfeayo Marsalis & Uptown Jazz',
  'All On A Mardi Gras Day',
  'Uptown On Mardi Gras Day',
  'big band, jazz, smooth jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1VekQeTHNJf2pOMOUzYTyk',
  'found',
  89.9,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:00',
  'Los Hombres Calientes',
  'Mardi Gras Bayou',
  'Vol. 5: Carnival',
  'latin jazz, brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4zguqIYhXfEm0fDhbvYWQz',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:15',
  'Cubanismo',
  'Mardi Gras Mambo',
  'Mardi Gras Mambo',
  'latin jazz, afro-cuban jazz, son cubano',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4BA6nWeV8tInevoB8W9q6N',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:20',
  'Clifton Chenier',
  'Mardi Gras Zydeco',
  'Live At Grant Street',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0pqEXbnDHNNHeHLGaDASJC',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:24',
  'Terrance Simien',
  'Mardi Gras In The Country',
  'Positively Beadhead',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:34',
  'Bob James',
  'Take Me To The Mardi Gras',
  'Two',
  'smooth jazz, jazz funk, jazz fusion',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6i5U5NyCknF93w4BilFity',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:37',
  'Wings',
  'Going To New Orleans',
  'Venus and Mars',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/3td82jVbPh2jjR04lW8zvV',
  'found',
  80.9,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:50',
  'Robin Barnes',
  'Hey Na',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:53',
  'Original Pinettes Brass Band',
  'Lord. Lord, Lord',
  'Finally',
  'brass band',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2jm5GNAgtisgLwa02uknqk',
  'found',
  90.4,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '12:55',
  'Rebirth Brass Band',
  'I Feel Like Busting Loose',
  'Ultimate New Orleans Brass',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/33b6s2ac5fXjBUSNJlDJh3',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:03',
  'Bonerama',
  'My Girls Oh So Fine',
  'So Much Love',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4KSH4IsLR18UdKbcKGuBNu',
  'found',
  88,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:07',
  'Earl King',
  'No City Like New Orleans',
  'Hard River To Cross',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:12',
  'Earl King',
  'Do The Grind',
  'Street Parade',
  'new orleans bounce, classic blues, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5ToYqS2MnxDsPQ2JI5snaE',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:14',
  'Earl King',
  'Mama & Papa',
  'Come On The Complete Imperial Re',
  'new orleans bounce, classic blues, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/61rD694oEG3cRMtwSZ8i0Y',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:20',
  'Big Freedia',
  'Celebration',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/723J8TT1MrywSg66aIqZio',
  'found',
  73.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:28',
  'Free Agents Brass Band',
  'Music is the Key',
  'Made It Through The Water',
  'brass band',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4nfHAqoMQpWxJvZ3sAirJZ',
  'found',
  98,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:28',
  'Wild Magnolias',
  'All On Mardi Gras Day',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  77.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:32',
  'Stooges Brass Band',
  'New Funk',
  'Its About Time',
  'brass band, cajun, new orleans bounce',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/3GZIQ1bFHobNhHEDStVWDV',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:38',
  'Big Chief Romeo Bougere, Dawn Ri',
  'I''m Feeling Good (Vocal)',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:42',
  'Rebirth Brass Band',
  'New Orleans Music',
  'Ultimate Mardi Gras',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6OnqTokKZdRCgidc4CX7qD',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:47',
  'Rebirth Brass Band',
  'Rebirth Makes You Dance',
  'Move Your Body',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2mmSMkpwe774xVhK6YDfv8',
  'found',
  79.3,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:51',
  'Rebirth Brass Band',
  'Carnival Time',
  'Ultimate',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/7MIooWcuboKjxwNa7YpJRp',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '13:56',
  'Snooks Eaglin',
  'I Went To The Mardi Gras',
  'The Crescent City Collection',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:02',
  'professor longhair feat. earl king',
  'Big Chief',
  'ultimate mardi gras',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:06',
  'EARL KING',
  'Let''s Make a Better World',
  'THE SONET BLUES STORY',
  'new orleans bounce, classic blues, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4xxKsKq9qIQJzmTVf3vzvL',
  'found',
  72.6,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:09',
  'WILLIE TEE',
  'YOU GONNA PAY SOME DUES',
  'TEASIN YOU',
  'northern soul, cajun, zydeco',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5EV5KiQTFd8MlL000YRrn9',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:13',
  'TV SLIM (OSCAR WILLS)',
  'FLAT FOOT SAM',
  'RED RIVER BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:14',
  'JOHNNY SAYLES',
  'YOU TOLD A LIE',
  'DON''T TURN YOUR BACK ON ME',
  'northern soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/55RJM4ojt03UhX34hxjaYa',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:17',
  'JOHNNY HEARTSMAN',
  'JOHNNY''S HOUSE PARTY PT.2',
  'BAY AREA BLUES BLASTERS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:21',
  'EDDIE BURNS',
  'BISCUIT BAKING MAMA',
  'JUICY HARMONICA',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4U4HrkaYabj9qcVc5qTxZ8',
  'found',
  73.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:22',
  'BIG JOHN WRENCHER',
  'LONESOME IN MY CABIN',
  'BIG JOHN''S BLUES',
  'blues, classic blues, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3tLaaHvjEIhHoRDwBT01Dl',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:26',
  'NATHANIEL MAYER',
  'I FOUND OUT',
  'I JUST WANT TO BE HELD',
  'doo-wop',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/11w9LTwn933nCcGZ1GQr4T',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:31',
  'THE DOORS',
  'YOU MAKE ME REAL',
  'MORRISON HOTEL',
  'psychedelic rock, classic rock, acid rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1MR950KaknDDJ2PyU5NQDa',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:33',
  'PHILIP WALKER',
  'I CAN''T LOSE (WITH THE STUFF I USE)',
  'THE BOTTOM OF THE TOP',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:36',
  'LONNIE JOHNSON',
  'HOT FINGERS',
  'HOT FINGERS',
  'blues, country blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/09y5OIFQigYwLIDhw4VVmW',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:41',
  'RAY SHARPE & THE BLUES WHALERS',
  'OH, MY BABY''S GONE',
  'FORT WORTH SHUFFLE: TEXAS R&B 1958-64',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:44',
  'JACK LOGAN',
  'GREY STEEL TRAIN',
  'BULK',
  'alt country',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5HilytkbpXv2E74XzrNy34',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:44',
  'PINK ANDERSON',
  'John Henry',
  'THE BLUES OF PINK ANDERSON',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6Oxwv228V20ITgwYxlV5bA',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:50',
  'JOSH WHITE',
  'ONE MEAT BALL',
  'THE BEST OF JOSH WHITE',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2M6fzGnovYgjAm5H5d5FOz',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:54',
  'DOCK BOGGS',
  'DOWN SOUTH BLUES',
  'THE HARRY SMITH B SIDES',
  'bluegrass, traditional folk, country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4BV6PlNpPjODN3karK36ux',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '14:57',
  'LONNIE JOHNSON',
  'LOW DOWN ST. LOUIS BLUES',
  'HISTORICAL RECORDINGS VOL.2 1927-32',
  'blues, country blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6WiT49bTDEw9x8AQckuegJ',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:00',
  'ELMO WILLIAMS & HEZEKIAH EARLY',
  'Do Your Thing',
  'TAKES ONE TO KNOW ONE',
  'footwork, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2wubAD6asgcHlEbvCu2gfj',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:06',
  'ELMO WILLIAMS & HEZEKIAH EARLY',
  'blues jumped the rabbit',
  'TAKES ONE TO KNOW ONE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:08',
  'LITTLE FREDDIE KING',
  'CAN''T DO NOTHIN'' BABE',
  'YOU MAKE MY NIGHT',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2hZ4xQ3iG9lBEaEujUiHVE',
  'found',
  89.7,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:16',
  'JR KIMBROUGH',
  'I GOT TO TRY YOU',
  'GOD KNOWS I TRIED',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:22',
  'FLOYD DIXON',
  'ALARM CLOCK BLUES',
  'HOUSTON JUMP',
  'boogie-woogie, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6NtJcUhLoukG20ApcdVzNG',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:26',
  'OTIS CLAY',
  'TOO MANY HANDS',
  'TRYING TO LIVE MY LIFE WITHOUT YOU',
  'soul blues, northern soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1nRkYBrS81ncQBvIYDBL9Z',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:28',
  'LITTLE JOHNNY TAYLOR',
  'OPEN HOUSE AT MY HOUSE',
  'OPEN HOUSE AT MY HOUSE',
  'soul blues, northern soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1omH2PvCbjSMGUSvxtpTqT',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:31',
  'CANDI STATON',
  'THE BEST THING YOU EVER HAD',
  'EVIDENCE: THE COMPLETE FAME RECORDS MASTERS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7ffQPUGIGFerU8sAkgkAWF',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:33',
  'FREAKWATER',
  'HERO/HEROINE',
  'OLD PAINT',
  'alt country, americana, southern gothic',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0GzGPzL8KSrOtxKa6j7K8G',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:37',
  'BESSIE JONES',
  'SO GLAD I''M HERE',
  'PUT YOUR HAND ON YOUR HIP AND LET YOUR BACKBONE SLIP',
  'country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/676IuMn9Cy07Y82sPMc0jF',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:38',
  'WALTER MILLER',
  'DOWN TO ARKANSAS',
  'I AIN''T GONNA DRINK NO MORE, NOT MUCH',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7amvYcAYJNlc88lrqOG1g9',
  'found',
  73.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:42',
  'ARBEE STIDHAM',
  'I''M TIRED OF WANDERING',
  'TIRED OF WANDERING: THE BLUES OF ARBEE STIDHAM',
  'classic blues, blues, jazz ballads',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3tLbYfM0KDBrmWG6WZ5Zz8',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:44',
  'BARBARA LEWIS',
  'SLIP AWAY',
  'THE MANY GROOVES OF BARBARA LEWIS',
  'northern soul, doo-wop',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1lz98Qz5zzH3hbKhyLFqxo',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:48',
  'KING CURTIS',
  'MEMPHIS SOUL STEW',
  'MEMPHIS SOUL STEW',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6MqfTP3OwngywVTOS5OAFt',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:51',
  'ROCKIN DUPSEE',
  'RUN HERE TO ME BABY',
  'ROCKIN DUPSEE & CLIFTON CHENIER',
  'zydeco, cajun, ragtime',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7wCCs59rjsoDqYx4NJ4yBc',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:54',
  'T-MODEL FORD',
  'SAIL ON',
  'SHE AIN''T NONE OF YOUR''N',
  'blues, modern blues, footwork',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5fskbEFsgdSYQel0zip3rw',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '15:56',
  'johnnie johnson',
  'blues in g',
  'i''m just johnnie',
  'blues, boogie-woogie, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4T5fmw7VGQogbG6RzPmuFO',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
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
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:01',
  'Bobbi Humphrey',
  'Fun House',
  'Satin Doll',
  'jazz funk, jazz fusion, soul jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6vK3fJg9GHA8j5g1lA4Nig',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:12',
  'The Band',
  'Life Is A Carnival Inst and Vocal',
  'Cahoots 2021 Remaster',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:14',
  'Benny Goodman and His Sextet',
  'Wholly Cats',
  NULL,
  'big band, swing music, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/18t0ZjEhc707LUtDpiDzdp',
  'found',
  73,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:15',
  'Benny Goodman and His Sextet',
  'Breakfast Feud 1941',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:23',
  'Gonzalo Rubacaba6.00',
  'Unforgettable',
  'A Tribute to Benny More and Nat King Cole',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:26',
  'Nat King Cole',
  'Cachito',
  'Nat King Cole En Espanol',
  'christmas, adult standards, vocal jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/68XbEHDqjefcO6fVfNssfb',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:26',
  'Nat King Cole',
  'El Bodeguereo',
  'Nat King Cole En Espanol',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:34',
  'Celia Cruz',
  'Patica De Chivo',
  'Mi Vida Es Cantar',
  'salsa, son cubano, bolero',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3OvvKztH08G97E0I8KpS1n',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:38',
  'Charlie Parker Quartet Featuring Erroll Garner',
  'Cool Blues',
  '1947 Dial 78',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:44',
  'Benny More',
  'Bonito y Sabroso',
  'King Of Son',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:45',
  'Chick Corea',
  'Spain Alternative Take',
  'Light As A Feather Deluxe Ed',
  'jazz fusion, jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0CqYB7v0PNnFSJorkyQXy9',
  'found',
  98,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:49',
  'Dave Brubeck',
  'Take Five Alternate Take',
  'Time Out Takes',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '16:58',
  'Tito Puente And His Latin Ensemble',
  'Take Five LIVE',
  'Mambo Diablo 1985',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:07',
  'Jon Cleary & The Absolute Monster Gentlemen',
  'Zulu Strut',
  'Mardi Gras 2008 Basin Street Sampler',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:11',
  'Red Allen',
  'Love Is Just Around The Corner 1957',
  'Ride Red Ride',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:19',
  'Christian MacBride Big Band',
  'Murder By Numbers',
  'Without Further Ado Vol 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:24',
  'Christian McBride Big Band f/Jeffrey Osborne',
  'Back In Love Again',
  'Without Further Ado Vol 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:28',
  'Mnelik Et La Tribu',
  'Un Petit Rein De Jazz',
  'French 45 1993',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:31',
  'DJ Earworm',
  'Brazillian Diamonds',
  'Mashup Paul imon Vs Django Reinhart',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:37',
  'count basie feat lester young',
  'lester leaps in,',
  'essential count basie',
  'big band, swing music, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4Wq8HlQgd0mXYYD7zf9DPP',
  'found',
  90.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:47',
  'Jon Batiste Feat No ID',
  'Angels',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1GeMrNbeem2fNCvTEcuBRT',
  'found',
  90.1,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:49',
  'Jeff Beck',
  'She''s A Woman',
  'Blow By Blow',
  'jazz fusion, blues rock, blues',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1duCwvL46t9SlaUcAskHJR',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '17:58',
  'Allen Toussaint',
  'Mardi Gras In New Orleans',
  'American Tunes',
  'cajun',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/62HLlahXTI5VhETLiye5NL',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:00',
  'April March',
  'Garcon Glacon',
  'Rendezvous A Paris',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:04',
  'Dollar Brand / Abdulla Ibrahim',
  'Capetown Fringe / Mannenberg',
  'Capetown Fringe',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:17',
  'The Sweet Talks',
  'Akampanye',
  'GHANA SPECIAL 2 LP',
  'northern soul',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5XxdSbmHePxgKOsrMvvDtS',
  'found',
  84,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:24',
  'Pinnetes brass band',
  'Mardi Gras Morning',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:26',
  'Duke Ellington & Ivy Anderson',
  'Carnival In Caroline',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:29',
  'Neville Bros',
  'Brother John / IKO IKO',
  'Fiyo On The Bayou',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:35',
  'Quincy Jones',
  'Desifinado',
  'Big Band Bossa Nova',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:38',
  'Fat Freddy s Drop',
  'Fish In The Sea',
  'Bays 2017',
  'nz reggae, dub',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/70SPK9QNAwD1AyfH9Zy1fm',
  'found',
  98,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:44',
  'Eddie Harris',
  'I Need Some Money',
  'I Need Some Money',
  'soul jazz, jazz funk, hard bop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3e82RSXls3pltyQzA8h8oK',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:51',
  'David Sanborn',
  'Herbs EQ',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '18:53',
  'Big Chief Romeo Bougere ft Dawn Richard',
  'I''m Feeling Good! (remix)',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:04',
  'Juke Boy Bonner',
  'Tryin'' to Keep it Together',
  'Authenti City',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:08',
  'Champion Jack Dupree',
  'Rampart Street Blues',
  'Natural & Soulful Blues',
  'classic blues, blues, boogie-woogie',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/62QHQDCHBqen10phLDzQ2e',
  'found',
  82.3,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:13',
  'Champion Jack Dupree',
  'How Long Blues',
  'Natural & Soulful Blues',
  'classic blues, blues, boogie-woogie',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4lQp1OqMLwYNlkZ73mZU9a',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:17',
  'Big Bill Broonzy',
  'The Flood (Backwater Blues)',
  'Last Session Part Two',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:22',
  'Champion Jack Dupree',
  'Death of Big Bill Broonzy',
  'Champion Jack''s Natural & Soulful Blues',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:25',
  'Howlin'' Wolf',
  'Can''t Put Me Out',
  'From Early til Late',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4dKXvJ2MHB7g2Waf12mTvl',
  'found',
  94.2,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:29',
  'Howlin'' Wolf',
  'rollin'' and tumblin''',
  'From Early ''Til Late',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/48mLutxZGbIXtsji9yg2nq',
  'found',
  83.6,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:35',
  'Lillian Glinn',
  'Cravin A'' Man Blues',
  'When Women Sang the Blues',
  'blues, country blues, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1qC6DcFfjHtItmmxSXccKr',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:35',
  'Lillian Glinn',
  'Shreveport Blues',
  'When Women Sang the Blues',
  'blues, country blues, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5imRzZykl2aHH9C9IshA5R',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:36',
  'LILLIAN GLINN',
  'SHAKE IT DOWN',
  'SHAKE IT DOWN',
  'blues, country blues, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3xmhV9jFsMMn8H5jh6hZKk',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:39',
  'Big Mama Thornton',
  'No Jody For Me',
  'Quit Snoopin'' Round My Door',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:41',
  'Big Mama Thornton',
  'Let Your Tears Fall Baby',
  'Quit Snoopin'' Round My Door',
  'blues, classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3pHI202XGLCwNL6JSvy2Uy',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:49',
  'Lil Green',
  'Romance in the Dark',
  'Romance in the Dark',
  'blues, classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6NEIO2ucysGYE46RNPcInZ',
  'found',
  93.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:49',
  'Saunders King',
  'S. K. Blues Pt 2',
  'West Coast Blues',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:50',
  'Lil Green',
  'Just Rockin''',
  'Romance in the Dark',
  'blues, classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7B2FXO7RUXpG7Z1GIP6wd0',
  'found',
  87.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:53',
  'Wynonie Harris',
  'Lovin'' Machine',
  'Risky Blues',
  'boogie-woogie, swing music, rockabilly',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3UV8u4aqSU60xR4l7wYzYX',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '19:56',
  'Lucky Millinder',
  'Silent George',
  'Risky Blues',
  'swing music, big band, boogie-woogie',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7DlyQkpNxjSOxe5rVqpSSF',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:05',
  'Jimmy Rushing',
  'She''s Mine, She''s Yours',
  'Two Shades of Blues',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:06',
  'Jimmy Smith',
  'Funky Broadway',
  'Respect',
  'hard bop, soul jazz, jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2CAgx55oNmNRUjC1XKNDe4',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:06',
  'Mavis Staples',
  'Last Train',
  'You Are Not Alone',
  'soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1wj5OwWpPsdHG1QZxoj14N',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:16',
  'Meters',
  'It Ain`t No Use',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3MaqEiVpKGxqd2JhMH9xR7',
  'found',
  72.4,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:17',
  'The Meters',
  'It Ain''t No Use',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3MaqEiVpKGxqd2JhMH9xR7',
  'found',
  98,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:21',
  'Manu Dibango',
  'Waka Juju Part 2',
  'Dibango 82',
  'afrobeat, afropop, afro soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/54DBhZHidY3FVayTqKN46q',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:23',
  'Manu Dibango',
  'Waka Juju Part 3',
  'Dibango 82',
  'afrobeat, afropop, afro soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/03MsbyYzTPkm53z2kiB4ps',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:32',
  'Lord Nelson',
  'Shango',
  'Lord Nelson',
  'calypso',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3Sc24MXNk0PJ3pAWj4mbkY',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:34',
  'R. L. Burnside',
  'Sitting on top of the World',
  'Sound Machine Groove',
  'blues, country blues, modern blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1Vi9TLYIBoI4tc2qZaCEz1',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:38',
  'J.B. Lenoir',
  'FEELIN'' GOOD',
  'Alabama Blues!',
  'blues, classic blues, country blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5T8ZVDzQhYK3mjRonBHaW4',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:41',
  'jb lenoir',
  'the whale has swallowed me',
  'Alabama Blues!',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:44',
  'Lucinda Williams',
  'Fruits of My Labor',
  'Live at the Fillmore',
  'alt country, americana, outlaw country',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/31nItlXwgCCFpttS50Rbxf',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:50',
  'James Booker',
  'Cool Turkey',
  'Gonzo- More Than All The 45`s',
  'boogie-woogie, cajun, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/51zcA2e1WYYZhhAH6Ii6QU',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:55',
  'Booker T. & the MG''s',
  'Blue on Green',
  'Doin'' Our Thing',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5TZv7MUTLm0N1cRNcCQeOt',
  'found',
  82,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '20:58',
  'Doin'' Our Thing',
  'You Keep Me Hanging On',
  'Doin'' OurThing',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:05',
  'Doug Clark & the Hot Nuts',
  'Can''t Sit Down',
  'Nuts to You',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:13',
  'Doug Clark & the Hot Nuts',
  'Ding-A-Ling',
  'Nuts to You',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:22',
  'Lucinda Williams',
  'You Gotta Move',
  'You Are Cordially Invited. . . A',
  'alt country, americana, outlaw country',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5bwl1DvWJdE1CDxOceBAir',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:23',
  '101 Runners',
  'Sew, Sew, Sew',
  'New Orleans Funk 101',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:27',
  'Memphis Minnie',
  'Nothing in Ramblin''',
  'Legends of the Blues',
  'blues, classic blues, country blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/483Mgxc0NpJWkjxC69ylRU',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:28',
  'Sippie Wallace',
  'Suitcase Blues',
  'Sippie',
  'classic blues, blues, country blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/229YxLsqG69wROyMo8zTFt',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:36',
  'Marvin Phillips & His Men from Mars',
  'Wine Woogie',
  'I Want to Boogie Woogie',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:41',
  'James Booker',
  'Black Night',
  'New Orleans Piano Wizard Live!',
  'boogie-woogie, cajun, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7ulVsqbqiS5AFWMNjYiNkG',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '21:48',
  'James Booker',
  'A Taste of Honey',
  'A Taste Of Honey- Live In New Or',
  'boogie-woogie, cajun, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/33nG0fJo3CDSC0b2bvKmGc',
  'found',
  86.2,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:00',
  'Lupe Fiasco/ Nayirah',
  'Seattle',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:05',
  'Nirvana',
  'All Apologies',
  NULL,
  'grunge, rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1Ic9pKxGSJGM0LKeqf6lGe',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:09',
  'J Balvin/ Bad Bunny',
  'La Cancion',
  NULL,
  'reggaeton, latin, trap latino',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0fea68AdmYNygeTGI4RC18',
  'found',
  77.3,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:13',
  'Sault',
  'Why Why Why Why Why',
  '5',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4zwq3QUKgMNk0NSLl7fpbP',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:18',
  'Ozomatli',
  'Super Bowl Sundae',
  NULL,
  'latin alternative',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7fkR28P1V241etTyO4DK5B',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:22',
  'Miami Sound machine',
  'Conga!',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/53pZ8y3yMYUNpclGwIufu0',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:27',
  'Jamiroquai',
  'Space Cowboy( David Morales Mix)',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:35',
  'J Dilla',
  'Rico Suave bossa nova',
  NULL,
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6i25xfPdUfIzcMsA4VrGRO',
  'found',
  98,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:36',
  'N.E.R.D.',
  'RUN TO THE SUN',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4Bjwyj8KM85xblkSt5A24j',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:43',
  'Vegas Cola',
  'Summer Rain (Remix)',
  NULL,
  'new orleans bounce, bounce',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5C2gIZu93AarKk7V2H3UN3',
  'found',
  74.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:47',
  'Kraftwerk',
  'The model',
  NULL,
  'krautrock, neue deutsche welle, synthpop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7G3zERqh2d2tij0pVQfohU',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '22:56',
  'kid frost',
  'La Raza',
  NULL,
  'latin hip hop, mexican hip hop, west coast hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3zCg6CUmhxHukbUs0nd7ar',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:00',
  'Cardi B/ Bad Bunny/ J Balvin',
  'I Like It',
  NULL,
  'reggaeton, trap latino, latin',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/58q2HKrzhC3ozto2nDdN4z',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:04',
  'KAYTRANADA/ Dawn Richard',
  'hold on',
  NULL,
  'alternative r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2MlwYYIm8JUNrA5807mdLm',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:07',
  'Daft Punk',
  'Derezzed',
  NULL,
  'french house, electronic, electro',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7hqlHZIXhwAzpWQxm9KzBd',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:09',
  'Sister Sledge',
  'He''s The Greatest dancer',
  NULL,
  'disco, philly soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/79Qx11rnBlMFWmtk2xKMaz',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:15',
  'Orishas',
  'QUE PASA',
  NULL,
  'latin hip hop, latin alternative, son cubano',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/68qLs1UE25gr5t8z8CTT6u',
  'found',
  79.6,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:20',
  'Sade',
  'Paradise',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4tReFKumS5bcFahdXDiM1b',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:23',
  'Freddie Hughes',
  'Send My Baby Back',
  NULL,
  'northern soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6E38X2GiWcO44MqZ7Ow20y',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:26',
  'J Dilla',
  'Brazilian groove (ewf)',
  NULL,
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7HRJilRSLN3cxBFY3e4WeP',
  'found',
  81.5,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:28',
  'Soundgarden',
  'Fell on Black days',
  NULL,
  'grunge, post-grunge, hard rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1wlKw9NAWVWpx7OIAyg9EA',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:33',
  'Jimi hendrix',
  'Little wing',
  NULL,
  'psychedelic rock, classic rock, acid rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1Eolhana7nKHYpcYpdVcT5',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:35',
  'Sir Mix-o-Lot',
  'My Hooptie',
  NULL,
  'old school hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4aOjDKk1s5hlsEY5ZhhX3l',
  'found',
  81.4,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:40',
  'wyclef jean/ Jon Forte/ Pras',
  'We Trying To Stay Alive',
  NULL,
  'old school hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4wwRROf47MXBX5u5Knwixx',
  'found',
  84.9,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:43',
  'Pharcyde',
  'Runnin',
  NULL,
  'jazz rap, west coast hip hop, old school hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0XgpiStoxq1IJncYlPrvZ5',
  'found',
  75.4,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:48',
  'leon Bridges',
  'Coming Home',
  NULL,
  'retro soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/65GbQI9VDTs7vo6MJL2iJA',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-09',
  '23:53',
  'J Dilla',
  'Donut(Outro)',
  NULL,
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/77cVT85pU7WH3elC1SE7Uu',
  'found',
  78.2,
  '2026-02-10 08:00:06'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-10';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:01',
  'OutKast',
  'Happy Valentine''s Day',
  'Speakerboxxx/The Love Below',
  'southern hip hop, hip hop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/32q1h0jij3ePpp47ShIqVy',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:07',
  'Solange',
  'Losing You',
  'True',
  'alternative r&b, neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5hR0wTnydz6lmErOV4c0sp',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:11',
  'Rhye',
  'The Fall',
  'Woman',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/35yZkNFNVosiHE6Uj0COVM',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:15',
  'Leon Bridges',
  'Laredo',
  'Leon',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2HyTl2ZFnRNoe56LJsETOc',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:18',
  'Karen O & Danger Mouse',
  'Super Breath',
  'Super Breath - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/71dMjqJ8UJV700zYs5YZCh',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:21',
  'TV On The Radio',
  'Careful You',
  'Seeds',
  'indie rock, indie',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7DjtLnZKMipNZDt6SE9iEq',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:28',
  'Biig Piig',
  '4AM',
  '4AM - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6Az3pxv7GSVEuWPwgbHGS2',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:31',
  'Maribou State & Andreya Triana',
  'All I Need',
  'Hallucinating Love',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3OQk21nMrEPnc5KXePcv6E',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:35',
  'Chet Faker',
  'Over You',
  'Hallucinating Love',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/036QOmnlr52hgeH1WmQ5OB',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:39',
  'Les Imprimes',
  'You & I',
  'Fading Forward',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:42',
  'The Olympians',
  'Strawberry Kiwi',
  'In Search of a Revival',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7J55uDJ84Y5CHS9rgFZ7bY',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:48',
  'SALIMATA',
  'Jackpot & Foil - A COLORS SHOW',
  'Jackpot & Foil - A COLORS SHOW - Single',
  'experimental hip hop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3fMtAAd4ZIWxHIv4ahEdHt',
  'found',
  71.8,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:50',
  'KADEEM. & Sampa the Great',
  'Self Love',
  'Self Love - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0fUBL2Y2kwjjkboj1DIKng',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:53',
  'Khalid',
  'Breathe (feat. Arlo Parks)',
  'Sincere',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '00:55',
  'Payfone and Willis Earl Beal',
  'Movin On',
  'Movin On - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:01',
  'Janelle Monae',
  'Primetime (feat. Miguel)',
  'The Electric Lady',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:07',
  'Fred again.. & Sampha',
  'fear less',
  'ten days',
  'stutter house, house, edm',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4IHblO52meh2jwqES1BA7X',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:11',
  'Tom Misch',
  'Insecure',
  'Six Songs - Ep',
  'indie soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2gn2YMeL5uvUnsmSV7Z7BI',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:14',
  'anaiis',
  'Deus Deus',
  'Deus Deus - Single',
  'alternative r&b, uk r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0Qrm0QyIXutGY2nPJxS3tD',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:18',
  'Cleo Sol',
  'Nothing Is Impossible With You',
  'Nothing Is Impossible With You - Single',
  'neo soul, alternative r&b, uk r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1jP8sjGxTpkQz13WzS1fpw',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:22',
  'Charlotte Day Wilson & Yukimi',
  'Quiet',
  'Patchwork',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3dFsDilURRvbJo90GiUqAS',
  'found',
  100,
  '2026-02-10 08:00:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:28',
  'Celeste',
  'This Is Who I Am',
  'Woman Of Faces',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3XYHmR1VSj0QLzGcOtsQgu',
  'found',
  100,
  '2026-02-10 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:32',
  'Beck',
  'I Only Have Eyes For You',
  'Enerybody''s Gotta Learn Sometime',
  'anti-folk',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4PWwobtq0cX7tynOoKc3sG',
  'found',
  100,
  '2026-02-10 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:36',
  'James Blake',
  'Assume Form',
  'Assume Form',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6cJrQc34txUzXd90xWEAOh',
  'found',
  100,
  '2026-02-10 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:41',
  'Puma Blue',
  'Hush',
  'Croak Dream',
  'bedroom pop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5d367xvZxdp7wNbnXnIoEs',
  'found',
  100,
  '2026-02-10 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:44',
  'Zero 7',
  'Passing By (feat. Sophie Barker)',
  'When It Falls',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-10 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:51',
  'Orion Sun',
  'Mary Jane',
  'Mary Jane',
  'alternative r&b, bedroom pop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1coqWiiu5XGN3sgSBoJ3A5',
  'found',
  100,
  '2026-02-10 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '01:54',
  'Sade',
  'Is It a Crime? (Live)',
  'Lovers Live',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1WFao0rkH7gKrxvTowXxnq',
  'found',
  98,
  '2026-02-10 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '05:28',
  'Earl King & Roomful Of Blues',
  'Mardi Gras In New Orleans',
  'Glazed',
  'cajun, zydeco',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/2QJwPMhCShKYuzqQQ25uck',
  'found',
  91.9,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:07',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:09',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:12',
  'Pud Brown And His New Orleans Ja',
  'How Come You Do Me Like You Do,',
  'Palm Court Strut',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:19',
  'Ethel Waters',
  'I`ve Found A New Baby',
  'Cabin In The Sky [Milan]',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/489nJ42bUnTGATbC0FTf6T',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:22',
  'Fats Waller',
  'There`ll Be Some Changes Made',
  'I`m Gonna Sit Right Down- The Ea',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3FElAk9AiSylE04JqVea41',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:26',
  'Fats Waller',
  'St. Louis Blues',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/34VGrMR1FkMHnUOfNn8Dvo',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:29',
  'Fats Waller',
  'The Viper`s Drag',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7itDgUveD8ISEzy4tvRHRa',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:40',
  'Viper mad trio',
  'Sweet Marijuana Brown',
  NULL,
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/51Xy9NFAtazp1i17HhJzSB',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:41',
  'TRIXIE SMITH',
  'JACK I''M MELLOW',
  'SIDNEY BECHET 1937-38',
  'classic blues, blues',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1dhXHPcUiYZgOP0NS6B3w2',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:44',
  'Dr. Michael White',
  'Give It Up (Gypsy Second Line)',
  'Dancing In The Sky',
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3WwoO74AaIeh9aQloQ2NiC',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:45',
  'The melatauns',
  'Coffee and Chickory',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:51',
  'Mark Braud',
  'At The Carnival',
  'Living The Tradition',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:58',
  'Sweet Emma Barrett',
  'If Ever I Cease To Love',
  NULL,
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0wCOvLjKSuPoHbkcDl08tY',
  'found',
  74.5,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:01',
  'Wild Magnolias',
  'All On Mardi Gras Day',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  77.5,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:05',
  'Fat Babies',
  'Tight Like This',
  'Chicago Hot',
  'ragtime, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6Ezf6JulRr057xEKjgQuUA',
  'found',
  84,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:16',
  'Don Vappie',
  'Skoodle-Um-Skoo',
  'Creole Blues',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:27',
  'Ben Redwine',
  'His Marriage Wow',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2uZD1JaDA66Lcqv7v7uaqK',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:30',
  'Louisiana Repertory Jazz Ensembl',
  'Clarinet Marmalade',
  'The Moods Of Old New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:34',
  'Miss Sophie Lee',
  'It`s Only A Paper Moon',
  'Love Street Lullaby',
  'swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2Vz77wcRw7SvGhXo3m5DMT',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:38',
  'Lars Edegran',
  'You Were Only Fooling',
  'Lars Edegran Presents Lionel Fer',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:50',
  'Cast of Waiting Around',
  'The Cocktail Conga',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:58',
  'Cast of Waiting around',
  'Waiting Around',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:10',
  'THE SPIRIT OF FI YI FI & THE MANDINGO WARRIORS',
  'I DON''T WANNA GO',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0LeaKIpuBwexedOINYpwPH',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:14',
  'Big Chief Bo Dollis Jr',
  'Young Time Indians Indian Red',
  'Chip Off The Old Block',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1FCiIlhhYQ8dS1X3Tm0mGC',
  'found',
  79.5,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:18',
  'Galactic',
  'Karate (Featuring KIPP Renaissance High School Marching Band)',
  'Carnivale Electricos',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:22',
  '79ers Gang',
  'Trouble',
  'Expect the Unexpected',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:26',
  'THE GOLDEN EAGLES',
  'Little Liza Jane',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:35',
  'Jon Cleary',
  'Zulu Coconuts',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:39',
  'DERRICK FREEMANS AND SMOKERS WORLD',
  'BUMBLE JUMBLE',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:43',
  'Nigel Hall and Dj Harrsion',
  'Happy Feelin',
  'urning Bush: A Journey Through The Music Of Earth, Wind a',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:46',
  'CIMAFUNK AND BIG FREEDIA',
  'PRETTY',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:49',
  'MIKE DOPSIE',
  'EXPLODE',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7AcY7RlrtmgsSDr2OXn1HY',
  'found',
  70,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:57',
  'BIG CHIEF DONALD HARIRSON JR.',
  'WE ROLLIN',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:03',
  'IRMA THOMAS',
  'LOVE IS THE FOUNDATION',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:11',
  'IRMA THOMAS',
  'IT''S STARTING TO GET TO ME NOW',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6CBrcdC2fZFp0XeEQYKgcc',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:13',
  'IRMA THOMAS',
  'BREAK-A-WAY',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0GPmDShYYjV9RDUnIIx8gd',
  'found',
  89,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:17',
  'IRMA THOMAS',
  'NO USE TALKIN''',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0mLTujiJBcBoCsf4113k2c',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:20',
  'Irma Thomas',
  'You Can Have My Husband',
  'Irma Thomas Live!',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3s4M1MDsZjmTEcyPUQ5e8m',
  'found',
  93.8,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:24',
  'IRMA THOMAS',
  '(YOU AIN''T) HITTIN'' ON NOTHING',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6OkvYV7KpKT2ylFo9b3p8X',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:25',
  'Galactic - Irma Thomas',
  'Lady Liberty',
  NULL,
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1SKe4wKuS1BoSLi7oTemWF',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:29',
  'IRMA THOMAS',
  'THAT''S ALL I ASK',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3MtvGGPIetbUUhKlrUSAPh',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:31',
  'Irma Thomas',
  'Back Water Blues',
  '50th Anniversary Celebration',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0JjxpW2i161phUkLc3zTxh',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:34',
  'CHARMAINE NEVILLE BAND',
  'YELLOW SUBMARINE',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/67UB2Iv3ZmjApiSPVCzsQ2',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:40',
  'MAHALIA JACKSON',
  'I''D RATHER HAVE JESUS',
  NULL,
  'traditional gospel, gospel, christmas',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0JGmbgi2R1SCs8gq6xv7lg',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:52',
  'BETTY HARRIS',
  'RED ROSES',
  NULL,
  'northern soul, soul jazz',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3dBnTuKvbHXjnllZQQLVzg',
  'found',
  87.7,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:52',
  'Betty Harris',
  'A Bible And A Beer',
  'Intuition',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:54',
  'GERMAINE BAZZLE',
  'where or when',
  NULL,
  'vocal jazz',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3HPBrF3ZqqK9wDdsmljpNO',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:09',
  'CHOCOLATE MILK',
  'CONFUSION',
  NULL,
  'funk, post-disco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0PI3xxkBP77am5DjX0eNZU',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:10',
  'Ernie K-Doe',
  'Loving You',
  'Here Come The Girls- A History 1',
  'doo-wop, northern soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4SvVIHI1nCa6QfyOPAkVYv',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:13',
  'KING FLOYD',
  'IT''S NOT WHAT YOU SAY',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:19',
  'CYRIL NEVILLE',
  'Indian Red',
  NULL,
  'jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2KKaKPQ9CDfFA3nPhZ3tjc',
  'found',
  81.6,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:27',
  'Big Cheif Monk Boudeaux and Spyboy Jwan Boudeaux The Golden Eagl',
  'Hey La Hey',
  'Slip Don;t Fall',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:27',
  'SUNPIE AND THE LOUISIANA SUNSPOTS',
  'LA CHANSON DU MARDI GRAS',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:34',
  'Alexey Marti',
  'Get Up (feat MarkKibbleSeanCarey',
  'I Know What You Want',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:34',
  'The Rumble',
  'Now You Know',
  'Now You Know (single)',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:37',
  'george porter jr',
  'tito''s dumpling machine',
  NULL,
  'soul blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3Hdr3V83E8qOQAWr366NlO',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:41',
  'Sporty''s Brass Band',
  'NO NAME!',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:48',
  'Dirty Dozen Brass Band',
  'Big Chief',
  'Medicated Magic',
  'jam band, southern rock, newgrass',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/68Bre3epNtsNIKwZYujDpT',
  'found',
  76.2,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:53',
  'Corey Henry & The Treme Funkte',
  'Slip Into Darkness/HeyPockeyWa',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
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
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:16',
  'SUN RA',
  'DISTSANT STARS',
  'FATE IN A PLEASANT MOOD',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:17',
  'TONY ALLEN',
  'lA mAQUINA DE TONY',
  'lA bOA MEETS TONY ALLEN',
  'afrobeat, latin afrobeats',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3hxycCIzd1bsXtOra7ywgi',
  'found',
  77,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:18',
  'jIOHNNY ADAM S',
  'YOU''RE IN A FOR A BIG SURPIRSE',
  'wALKIN A TIGHT ROPE',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:19',
  'CASSA OVERALL',
  'freedom jazz dance',
  'CREAM',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:19',
  'brandee younger',
  'new pinnacle',
  'gadabout season',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/7ee080RYC16iycYfkO8O8C',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:29',
  'brandee younger',
  'discernment',
  'gadabout season',
  'experimental jazz, jazz, ambient jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4iV5wHX3Fb6TtFoTTJY028',
  'found',
  75.1,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:42',
  'LAUFEY',
  'CASTLE IN HOLLYWOOD',
  'A MATTER OF TIME',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3zTnSPti5JjNsowJH4SS3u',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:55',
  'Orlando Gilbert',
  'Wildman ft. Donald Harrison',
  'A Crescent City Connection',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:07',
  'KIRK KNUFFKE',
  'BRIGHTNESS',
  'LIVE IN AMSTERDAM',
  'free jazz, avant-garde, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/7wkhW71obWrevxHFvuzcJc',
  'found',
  83,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:08',
  'MAKAYA MCCRAVEN',
  'BRADDAS',
  'POP UP SHOP',
  'nu jazz, experimental jazz, indie jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5Q0rO4daGhF81fmdYPONWx',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:09',
  'MIGUEL ZENON',
  'BENEDICIOIN',
  'VANGUARDIA SUBTERRANEO',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:16',
  'JOHN ELLIS AND DOUBLE WIDE',
  'THE WHISTLER',
  'FIREBALL',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:23',
  'JOHN ELLIS AND DOUBLE WIDE',
  'CROCODILE TEARS',
  'REBALL',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:24',
  'John Scofield and Lionel Loueke',
  'You i love',
  'memories of home',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:32',
  'Out Of/Into',
  'The Catalyst',
  'Motion II',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:32',
  'SML',
  'how you been',
  'how youbeen',
  'ambient jazz, indie jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2D9WheW0H8NKkcDfLtmz0h',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:48',
  'james brandon lewis',
  'prince eugene',
  'apple cores',
  'free jazz, jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5ZKLkw9eF6hkDIaFYayOlr',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:48',
  'joel ross',
  'trinity',
  'gospel music',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:59',
  'luedji luna',
  'Karma Song',
  'Um Mar Pra Cada',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '18:00',
  'robert glasper',
  'Waitingon arrival',
  'code derivation',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-11';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:08',
  'Eddie Bo',
  'Mardi Gras At The Boiler Room',
  'New Orleans Solo Piano',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1C0LNYbECXQZIx53MDxlUF',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:13',
  'Delfeayo Marsalis & Uptown Jazz',
  'Uptown On Mardi Gras Day',
  'Uptown On Mardi Gras Day',
  'big band, jazz, smooth jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7HYOyCRwgUUVMhGSvcMfLM',
  'found',
  89.9,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:16',
  'Charmaine Neville Band',
  'Carnival Time',
  'Queen Of The Mardi Gras',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2dcgiAEIJCu7Ha3jJLUdqE',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:23',
  'Preservation Hall Jazz Band',
  'Go To The Mardi Gras',
  'Songs Of New Orleans (CD01)',
  'brass band, swing music, ragtime',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/33xTIZJALCksGN4xgNsagC',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:30',
  'Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Ri',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  72.5,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:37',
  'Harry Connick Jr.',
  'Mardi Gras In New Orleans',
  'Chanson Du Vieux Carre',
  'big band, christmas, vocal jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/14era6xqyLlqPC72zLqYTg',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:44',
  'Donald Harrison Jr',
  'Hiko Hiko',
  'Indian Blues',
  'brass band, cajun, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2x2U7jgUop3F3lTnv0QEYc',
  'found',
  74.8,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:48',
  'Margie Perez and The King Cake B',
  'Mardi Gras Carnival',
  'Mardi Gras Carnival',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:55',
  'Sayles Silverleaf Ragtimers',
  'If Ever I Cease To Love',
  'Sayles Silverleaf Ragtimers',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:58',
  'Johnette Downing',
  'Who Got da Baby in the King Cake',
  'Swamp Romp',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:04',
  'James Sugar Boy Crawford',
  'Jock-A-Mo',
  'Mardi Gras In New Orleans, Vol',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:06',
  'Schatzy',
  'Every Day Is Mardi Gras',
  'Macaroni and Bees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4IlLbR8eBdJRUnkENDXtRb',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:08',
  'Dr. Michael White',
  'Take Me To The Mardi Gras',
  'Adventures In New Orleans Jazz,',
  'ragtime, brass band, cajun',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6MSIfFjnIfKXGyib11QjK4',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:15',
  '79rs Gang',
  'Iko Kreyol (w Lakou Mizik)',
  'Expect The Unexpected',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:19',
  'Trombone Shorty',
  'Got To Get Ready (MG)',
  'Orleans & Claiborne',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:29',
  'Al Johnson',
  'Carnival Time',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:32',
  'Patrice LeBlanc/Kermit Ruffins',
  'Ready For Mardi Gras Day',
  'Lovin'' New Orleans',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:39',
  'Original Pin Stripe Brass Band',
  'Dancin` At The Mardi Gras',
  'I Wanna Go Back To New Orleans',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:49',
  'The Dixie Cups',
  'Iko Iko',
  'The Complete Red Bird Recordings',
  'doo-wop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0hc44Di7G79vgVhwEwgZbJ',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:51',
  'Big Chief Monk Boudreaux',
  'Sew Sew Sew',
  'Mr. Stranger Man',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:57',
  'Earl King & Roomful Of Blues',
  'Mardi Gras In New Orleans',
  'Glazed',
  'cajun, zydeco',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2QJwPMhCShKYuzqQQ25uck',
  'found',
  91.9,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:01',
  '79rs Gang',
  'Needle Don''t Lie',
  'Expect The Unexpected',
  'brass band',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/44eXeGJzVLqbSCPb6PCq4p',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:05',
  'Shamarr Allen',
  'House of Dance and Feathers',
  'Nine Lives - Vol I',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:09',
  'Galactic/Big Freedia/MannieFresh',
  'Act Like You Know',
  'Take Me To The River New Orleans',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:13',
  'Trombone Shorty & The New Breed',
  'Under the Bridge',
  'Second Line Sunday',
  'brass band, jazz funk, cajun',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2MpDHwb7ZhvfzoZPuxxsyx',
  'found',
  80.7,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:17',
  'Dr. John',
  'Big Bass Drum (On A Mardi Gras D',
  'On A Mardi Gras Day',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:21',
  'Cubanisimo',
  'Mardi Gras Mambo',
  'Mardi Gras Mambo',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:26',
  'Kristin Diable',
  'Iko Iko',
  NULL,
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:28',
  'Vic Shepherd',
  'If Ever I Cease to Love',
  'Crescent City Serenade',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4CuWq8ZqvPnhaiH4b8SiXO',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:30',
  'Big Chief Roddy',
  'Mardi Gras Day',
  'Calliope''s Finest Shot Callers',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1hHRkezBozPseM9KljLUvF',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:37',
  'New Orleans Nightcrawlers',
  'Mardi Gras Mumbles',
  'Live At The Old Point',
  'brass band, cajun, zydeco',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0clijMofa3f89zGsoa5C8b',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:44',
  'Oscar Washington`s New Wave Bras',
  'Mardi Gras',
  'Life Styles in Traditional Jazz',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4F2s4cnir8vlwqcryzcLjM',
  'found',
  81.5,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:52',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:56',
  'Tin Men',
  'Peace Pipe',
  'Exclusive copy to WWOZ',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:06',
  'tuba fats chosen few brass band',
  'joe avery''s piece',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:10',
  'wynton marsalis',
  'ory''s creole trombone',
  'louis armstrong''s hot fives and hot sevens',
  'jazz, latin jazz, big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2p3yuvdAlWRq0te3f5jFyG',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:15',
  'Ray Charles',
  'Basin Street Blues',
  'The Genius Hits The Road',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:17',
  'wynton marsalis',
  'basin street blues',
  'louis armstrong hot fives and hot sevens',
  'jazz, latin jazz, big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7nSbfHxMCEI3QuQOG4QYxj',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:21',
  'Louis Armstrong',
  'Basin Street Blues',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5Jf9KnZKBTmaFDmSwWSawU',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:24',
  'Pete Fountain',
  'Basin Street Blues',
  'Do You Know What It Means To Mis',
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2U2NUhr1IK7eP5QkVCxkFK',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:28',
  'Troy Andrews & Lionel Ferbos',
  'Basin Street Blues',
  'Trombone Shorty Meets Lionel F',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:34',
  'Pud Brown And His New Orleans Ja',
  'Eh La Bas',
  'Palm Court Strut',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:39',
  'milt hinton and danny barker',
  '.heart of my heart',
  'old man time',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:40',
  'milt hinton and danny barker',
  'i ain''t gonna give you none of my jelly roll',
  'old man time',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:48',
  'Capt John Handy',
  'Come To The Mardi Gras',
  'All Aboard Vol II',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:55',
  'Derrick Shezbie',
  'Dancing At The Mardi Gras',
  'Spodie`s Back',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:04',
  'Professor Longhair',
  'No Buts and No Maybes',
  'House Party New Orleans Style',
  'cajun, zydeco, classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6P5003nbAuEgLpkZt8LKrn',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:04',
  'professor longhair',
  'no buts and no maybees',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:07',
  'treme brass band',
  'hey pocky way',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:10',
  'Wonderful World of Louis Armstro',
  'The Peanut Vendor',
  'A Gift To Pops',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:33',
  'slim gaillard',
  'babalou',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:33',
  'slim gaillard',
  'make it do',
  NULL,
  'swing music, bebop',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1eM9yQqcwcJoTAK2tO8ZYe',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:33',
  'slim gaillard',
  'peanut vendor',
  NULL,
  'swing music, bebop',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/18W82f4VY53EpFHW4SsSmE',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:35',
  'slim gaillard',
  'bassology',
  NULL,
  'swing music, bebop',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7HDJ1Au7va7kYHeMOHNndF',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:38',
  'wycliffe gordan and ron westray',
  'mayfest junction',
  'bone structure',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:45',
  'wycliff gordan & ron westray',
  'hush your mouth',
  'bone structure',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:50',
  'LINCOLN CENTER JAZZ ORCHESTRA',
  'C-JAM BLUES',
  NULL,
  'swing music, big band, jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5egcvD0mnAU1hLQulxxPKI',
  'found',
  73.8,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:52',
  'Billie Holiday',
  'Them There Eyes',
  'God Bless The Child- The Very Be',
  'jazz, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7tFXpD29uEFFs9hhTza7G2',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:55',
  'Don Vappie',
  'Absolutely',
  'Creole Blues',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:08',
  'Joe Krown Trio',
  'Feels So Good',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:11',
  'Camile Baudoin',
  'I Aint Ready For It',
  'This Old House',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:15',
  'Harry Connick Jr.',
  'Here Comes The Big Parade',
  'She',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6PzXZ5SNK6U2RCpGjme036',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:23',
  'Jon Cleary & The Absolute Monster Gentlemen',
  'Zulu Strut',
  'Mardi Gras 2008 Basin Street Sampler',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:25',
  'BO DOLLIS AND WILD MAGNOLIAS',
  'Meet da Boys at the Battlefront',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:31',
  'Big Sam''s Funky Nation',
  'Carnival Thing',
  NULL,
  'brass band, jazz funk, funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/45JUrvSaTjTL6Cjg842shE',
  'found',
  72.4,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:36',
  'earl king',
  'ain''t no city like new orleans',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:53',
  'beau jocque and the zydeco hi rollers',
  'beau''s mardi gras',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3LxVmTMbtCTEkrIQpLFMw5',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:53',
  'bonerama',
  'meters medley',
  'So Much Love',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:59',
  'dr john',
  'going back home to new orleans',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/05VMAXUx7Aozx4sJNXJWat',
  'found',
  75.8,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:02',
  'Allen Toussaint',
  'I Love a Carnival Ball',
  'Mr. Mardi Gras',
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5PcFsmeYoGOA7FsYjWGv41',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:02',
  'Leroy Jones',
  'Carnival Is In The Air',
  'I''m Talkin'' Bout New Orleans',
  'brass band, ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/23PPvWfm9ADbvhJ8irwipP',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:05',
  'Joseph Zigaboo Modeliste',
  'Gonna Have A Party',
  'Zigaboo.Com',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:10',
  'Trombone Shorty',
  'Gettin'' Ready For The Mardi Gras',
  'Orleans & Claiborne',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:14',
  'bo dollis, monk boudreaux, and the REBIRTH BRASS BAND',
  'LET''S GO GET ''EM',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:24',
  'Cha Wa',
  'All On A Mardi Gras Day',
  'Funk`n`Feathers',
  'brass band, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/75SlNNvRMOnD0O9d88W27z',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:28',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans [Mardi',
  'cajun, zydeco, classic blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:33',
  'dejean brass band',
  'It Ain''t my Fault',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:37',
  'delfeayo marsalis',
  'midnight at the zulu ball',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:41',
  'Harry Connick Jr.',
  'Smokey Mary',
  'Smokey Mary',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0fvcL4yrfFB8EeiLI16MkO',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:50',
  'Steve Conn',
  'Mardi Gras Morning',
  'SINGLE',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0lMW1wERB9bx2KvymdZl6R',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:55',
  'C.J. Chenier',
  'Zydeco Mardi Gras',
  'Step It Up',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7JdghTDA8U4Jw7t9DxXlYq',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:16',
  'Little Queenie',
  'If Ever I cease To L Little Queenie MUS 004:35',
  'Purple Hearts',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:17',
  'harry connick and big band',
  'mardi gras in new orleans',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:21',
  'Bobby Charles',
  'The Mardi Gras Song (edit)',
  'Homemade Songs',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:26',
  'Tim Laughlin',
  'King Of The Mardi Gras',
  'Blue Orleans',
  'ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0UvP6Gat08ZrFC7VXXG3Ax',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:32',
  'Irma Thomas',
  'Mardi Gras Mambo',
  '45 SINGLE',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:35',
  'The Rumble',
  'New Suit',
  'Live at The Maple Leaf',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:42',
  'Bruce Sunpie Barnes',
  'La Chanson Du Mardi Gras',
  'Lick A Hot Skillet',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:47',
  'Golden Eagles Featuring Monk Bou',
  'Sew, Sew, Sew',
  'Lightning and Thunder',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:52',
  'Kermit Ruffins With The Rebirth',
  'Mardi Gras Day',
  'Throwback',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:17',
  'bud powell',
  'bouncin'' with bud',
  'the amazing bud powell,vol.1',
  'bebop, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2xQLaX3QWBs2c3kQ04WYSz',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:18',
  'terence blanchard',
  'in time of need',
  'a tale of god''s will',
  'jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7szGUyll8OYzIlPJHs0VpG',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:20',
  'milt jackson and john coltrane',
  'bags and trane',
  'bags and trane',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6JfWlP0wKOuG46Tj6xEEJ2',
  'found',
  78.3,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:23',
  'ray bryant',
  'please send me someone to love',
  'all blues',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3CpSZeI5nqxhV9PE86qE0L',
  'found',
  82,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:31',
  'wynton marsalis',
  'sister cheryl',
  'wynton marsalis',
  'jazz, latin jazz, big band',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0C85pnGNzVvIQHc5vMbPJm',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:42',
  'nina simone',
  'i wish i knew how it would feel to be free',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5CKHhg31HcYYhwUeeGqvhq',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:10',
  'oscar peterson',
  'hymn to freedom',
  'night train',
  'jazz, cool jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1kGQzSasZr4HY5CzjHqCPG',
  'found',
  84.4,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:51',
  'kenny garrett',
  'intro to africa',
  'sketches of md',
  'jazz, jazz fusion, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6B1jhwhDE1n4pQNUyHdRnb',
  'found',
  71.1,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:52',
  'charles mingus',
  'freedom',
  'epitaph',
  'jazz, hard bop, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4Tn5epAPRcslFBwv8INS7f',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:58',
  'alexey marti',
  'travesia',
  'travesia',
  'afro-cuban jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3iGdX3iiX7WQra5woeCfyl',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:23',
  'oscar brown,jr.',
  'bid ''em in',
  'sin and soul',
  'vocal jazz, soul jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7lylqofnIoCvOYQzZ24NsI',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:30',
  'max roach/abbey lincoln',
  'driva'' man',
  'we insist:freedom now suite',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/21aQUkjPwuKCuG4bHbnzGp',
  'found',
  77.6,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:32',
  'kim weston',
  'lift ev''ry voice and sing',
  'black power:music of a revolution',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:33',
  'dizzy gillespie',
  'kush',
  'an electrifying evening',
  'bebop, jazz, afro-cuban jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3Z87tfg5O06pGozV6fTOkZ',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:38',
  'chief smiley ricks',
  'second line',
  'feathercraft',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:38',
  'solomon burke',
  'none of us are free',
  NULL,
  'soul, soul blues, classic soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1MBgaJoraHR7RHgAV58QU4',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:53',
  'donald harrison,jr.',
  'i''m the big chief of congo square',
  'quantum leap',
  'brass band, cajun, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2DTf1EejKb4q0adUO3JzVq',
  'found',
  82.7,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '19:02',
  'Lloyd Lambert',
  'Hop & Jump',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
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
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:00',
  'The New Orleans BINGO! Show',
  'New Orleans',
  'For A Life Ever Bright - Vol II',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2rt9eK9x0xmZt8KVto6TDw',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:08',
  'Clifton Chenier',
  'Party Down At The Blue Angel Club',
  '60 Minutes with the King of Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3ae7pYMYNAVEPTA96UsNIf',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:13',
  'Galactic',
  'Voyage Ton Flag',
  'Carnivale Electricos',
  'jam band, jazz funk, funk rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2ZjFlT7l8Wk4S8LDmTu9VP',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:17',
  'Steve Riley and the Mamou Playboys',
  'King Zydeco',
  'Bayou Ruler',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4aOCQDuyviia1IegmG8XFX',
  'found',
  91,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:20',
  'Boozoo Chavis',
  'Zydeco Mardi Gras',
  'Cajun & Zydeco Mardi Gras',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0SZI1reQd7sg1DK9iGxyNb',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:27',
  'Alex McMurray',
  'Glue Stick Sitaution',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:31',
  'R Scully',
  'N.O.L.A',
  'New Confusion',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:33',
  'Galactic feat. Josh and Ryan from M40F',
  'Liqour Pang',
  'Ya-Ka-May',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:37',
  'Andre Williams and The New Orleans Hellhounds',
  'Can''t Take ''Em Off',
  'Can You Deal With It?',
  'northern soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6LCHOKCXWbfOUPpR3d7Hi4',
  'found',
  94,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:40',
  'Andre Williams',
  'Let Me Put It In',
  'Silky',
  'northern soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/68p6HPZlvrJdFTAY5gDEpT',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:46',
  'Morning 40 Federation',
  'Chew It',
  'Live Personal Hygiene',
  'cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2cnrFvPeA45zk64gqz2qE6',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:50',
  'Bobby MG and The Creeps',
  'Mardi Gras Qreep',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:56',
  'Quintron',
  'Wild West(bank)',
  'Jam Skate',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:59',
  'Ricky B / DJ Black Pearl',
  'Big Boss Man',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:08',
  'Big Chief Monk Boudreux and the Golden Eagles',
  'Indian Red',
  'Live At The H & R Bar',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:14',
  '79rs gang',
  'drama',
  NULL,
  'brass band',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6BF1FcKDZu35Vys6beKuJu',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:19',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:25',
  'DJ Jubilee',
  'Stop Pause, Do The Jubilee All',
  'The Cartoon Crew',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:32',
  'J Dilla/ Common/ D'' Angelo',
  'So far to go',
  NULL,
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4omO3Xwm4REEK5HGT6e6yY',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:38',
  'J Dilla',
  'Lightworks',
  'Donuts',
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0TIItu69NmCbgvJUD0Zbnb',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:40',
  'D''Angelo',
  'Ain''t That Easy',
  'Black Messiah',
  'neo soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2yx7XX9v7M6yhm2fBG7K3E',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:46',
  'The Carriere Brothers',
  'Bosco Stomp',
  NULL,
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/38coEav2xr3xInbkdv3itJ',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:47',
  'Vin Bruce',
  'Dans Le Claire De La Lune',
  'Greatest Hits',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6HcsAb4WhC6PqwOG4oAD4h',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:50',
  'Maddy Kirgo',
  'Crush',
  'Shadow On My Light',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1y0TFhfY7ILfkOCqvV8gBG',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:54',
  'Jeff Parker',
  'Freakadelic',
  NULL,
  'bluegrass, christian bluegrass, experimental jazz',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/32tkzMaROMJN9Adl2Wu86V',
  'found',
  100,
  '2026-02-12 07:11:25'
);