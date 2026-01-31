-- WWOZ Database Export
-- Generated: 2026-01-31T07:11:40.064Z
-- Mode: INCREMENTAL
-- Last export: 2026-01-30 14:46:53
-- Days: 3
-- Tracks: 613

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-28',
  'https://open.spotify.com/playlist/7JvoJW4fi1lmyemPkruwfq',
  '{"totalTracks":183,"successfullyFound":95,"notFound":88,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-01-28 22:40:47',
  '2026-01-31 07:11:36'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-29',
  'https://open.spotify.com/playlist/2KFtxG097JXui9HLB8qVFI',
  '{"totalTracks":206,"successfullyFound":118,"notFound":88,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-01-29 08:07:21',
  '2026-01-31 07:11:36'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-30',
  'https://open.spotify.com/playlist/4iEyRzHsVncmwDjDPGOyFk',
  '{"totalTracks":208,"successfullyFound":135,"notFound":73,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-01-30 07:22:02',
  '2026-01-31 07:11:36'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '02:33',
  'Earl King',
  'Mardi Gras In The City',
  'King Of New Orleans',
  '',
  'Overnight Music - Thursday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-29 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '04:33',
  'Claire DeBrett',
  'The Mardi Gras Dance',
  'Cadien Chansons Du Bayou',
  '',
  'Overnight Music - Thursday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:07',
  'Mike Dillon',
  'Waltz While You Sleep',
  'Mike Dillon',
  'jam band, cajun',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2NKjAkLZQq2ysa4Oq427kH',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:08',
  'Maridalen',
  'Koral',
  'Maridalen',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0dPxHD183nCG40RawgOncy',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:12',
  'Chris Corsano',
  'Low Experience',
  'The Key (Became The Important Thing (And Then Just Faded Away))',
  'free jazz, experimental jazz, avant-garde',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/6WNM2lCUu2T7NLIb8s8tUG',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:12',
  'The Awakening Orchestra',
  'The Desc(Diss)ent',
  'Volume ll: To Call Her to a Higher Plain',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/11pezMiv2Oz7eS4QDmhXbT',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:25',
  'Linda May Han O',
  'Strange Heavens',
  'Strange Heavens',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:33',
  'Bill Evans',
  'Peace Piece',
  'Everybody Digs Bill Evans',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/58yFroDNbzHpYzvicaC0de',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:40',
  'Keith Jarrett',
  'Koln, January 24, 1975 Part ll c',
  'The Koln Concert',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:46',
  'James Singleton String Quartet',
  'Lento',
  'Gold Bug Crawl',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:51',
  'Colluctor',
  'Continuation',
  'Continuation',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '07:06',
  'Charles Mingus Sextet',
  'Fables of Faubus',
  'Bremen 1964 & 1975',
  'jazz, hard bop, bebop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2Cvpb5vlITM7JYE0LQxByn',
  'found',
  83.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '07:20',
  'Grachan Moncour',
  'Thandiwa',
  'Some Other Stuff',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '07:42',
  'Miles Davis',
  'In A Silent Way',
  'In A Silent Way',
  'jazz, cool jazz, hard bop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/07mM15LHxoWaQwHcLn2ZgF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:02',
  'Bitchin Bajas',
  'Lanquidity',
  'Switched On Ra',
  'space rock, krautrock, ambient jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2MCWogZJ7AcXkRwRN0xV73',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:02',
  'Herbie Hancock',
  'Hidden Shadows',
  'Sextant',
  'jazz, jazz fusion, jazz funk',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/24hwI6OhnNKAOpRDmoSi3q',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:13',
  'Joe Henderson',
  'Black Narcissus',
  'Power To The People',
  'hard bop, jazz, jazz ballads',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3IbZO1Ml6LyntT83JZ2VG4',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:18',
  'Donald Byrd',
  'The Dude',
  'Electric Byrd',
  'hard bop, jazz funk, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5tcx0hDhFwLR3ThQXHfxF1',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:26',
  'James Carter',
  'Blue Hawaiian',
  'Gold Sounds',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:35',
  'Horacee Arnold',
  'Sing Nightjar',
  'Tales Of The Exonerated Flea',
  'jazz fusion, free jazz, jazz funk',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7hr6iGfC1WPvW7GG1pTkAJ',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:45',
  'Jack DeJohnette''s Directions',
  'Fantastic',
  'Unittled',
  'jazz fusion',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3yUj9CpPho7zJaYrsN1w7I',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:59',
  'Dr. Lonnie Smith',
  'tch Doctor',
  'Jungle Soul',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:05',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:08',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:11',
  'Lars Edegran',
  'I`m Gonna Sit Right Down And Wri',
  'Lars Edegran Presents Lionel Fer',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:16',
  'Jazzology All Stars',
  'Blue Turning Grey Over You',
  '50th Anniversary Jazz Bash',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:21',
  'Tim Laughlin',
  'Farewell Blues',
  'Blue Orleans',
  'ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2j1nW7SCLNOK2RXDIgKkIP',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:29',
  'Jack Teagarden',
  'Sugar',
  '100 Years From Today',
  'big band, swing music, jazz',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/6lgdGwpwllJZRye9ZWKCbu',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:32',
  'Kevin Louis & the Palm Court Jazz Band',
  'Pennies From Heaven',
  'Last Chance To Dance',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3J9dYLIFHf3MX2oIPPzKlb',
  'found',
  86.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:37',
  'Preservation Hall Jazz Band',
  'Corrina, Corrina',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:52',
  'Blu Lu Barker',
  'I Feel Like Laying In Some Other Women''s Arms',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:54',
  'Little Queenie',
  'If Ever I cease To Love',
  'Purple Hearts',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/42X7UAxXvRPg8JigOwrmYh',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:56',
  'Alberta Hunter',
  'Take Your Big Hands Off It',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:57',
  'Kyle roussel/ Irma thomas',
  'True',
  NULL,
  'classic soul',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2JZwBaSBGvvaN6ncQFTGiF',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:57',
  'Louis Cottrell, Jr',
  'You Don`t Love Me',
  'New Orleans- The Living Legends',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:05',
  'Al Hirt',
  'NEW ORLEANS',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4WH8Y5I8XNzMGImp8yERPe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:06',
  'Pete Fountain',
  'Stomp, Mr Henry Lee',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3yIgg0OMYJS8PBkh28uKfC',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:10',
  'Mari Watanabe',
  'Stompin At The Savoy',
  'Old Friends',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:16',
  'Shake''Em Up Jazz Band',
  'I Double Dare You',
  'The Boy In The Boat',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:20',
  'Seva Venet',
  'Give Me That Good New Orleans Ja',
  'New Orleans Banjo Vol. 1 Musieu',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1lBjUT2nsBkBgtucz6u50F',
  'found',
  92.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:24',
  'Gauthe`s, Jacques Creole Rice Ye',
  'Cassoulet Stomp',
  'Cassoulet Stomp',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:29',
  'Red Hot Brass Band',
  'Go To The Mardi Gras',
  'Hot Off The Press',
  'brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4i66nbKrkrQARH8RPCouHe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:33',
  'Fats Waller And His Rhythm',
  'Got A Bran` New Suit',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:36',
  'Wild Magnolias',
  'New Suit',
  'They Call Us Wild',
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/48gaRnJBOc3xNp7UoV7cOX',
  'found',
  82.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:45',
  'Charlie Gabriel',
  'That''s a Plenty',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:46',
  'Pfister Sisters',
  'Everybody Loves My Baby',
  'New Orleans',
  'boogie-woogie',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0ITOMpaTDjwJBx7gmMFIV2',
  'found',
  84,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:49',
  'Tuba Skinny',
  'Mardi Gras Mambo',
  'Mardi Gras EP 2021',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:56',
  'Original Tuxedo Jazz Band',
  'Exactly Like You',
  'Original Tuxedo JB Centennial',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:04',
  'Professor Longhair',
  'Big Chief, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:06',
  'Professor Longhair',
  'Big Chief, Pt. 2',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:10',
  'Earl King',
  'No City Like New Orleans',
  'Hard River To Cross',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:14',
  'Earl King',
  'Street Parade',
  'Mardi Gras In New Orleans [Mardi',
  'new orleans bounce, classic blues, cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:18',
  'MICHAEL PELLERA WITH JOHNNY V. AND JAMES SINGLETON',
  'BULLDOG RUN',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:24',
  'ORIGINAL PIN STRIPE BRASS BAND',
  'I ATE UP THE APPLE TREE',
  NULL,
  'brass band, cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6Ioq8xVNU65YABcoPlPzlU',
  'found',
  91.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:30',
  'DAVE FAT MAN WILLIAMS',
  'I ATE UP THE APPLE TREE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:36',
  'LULU & THE BROADSIDES',
  'THAT''S A PRETTY GOOD LOVE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5FIAKon4CWIpliYCW5PcoR',
  'found',
  74.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:38',
  'Wild Magnolias',
  'Fire Water',
  'They Call Us Wild',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0ntargjdcVC7MW0J6VQfEX',
  'found',
  82.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:43',
  'Dr. John',
  'Mardi Gras Day',
  'Mos` Scocious- Anthology (CD01)',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:51',
  'Charmaine Neville Band',
  'If I Ever Cease To Love',
  'Queen Of The Mardi Gras',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/74KtUkoIffKvXMR1B1EES3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:57',
  'HELEN GILLET',
  'DQTSM',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3BM1g486LdsEesXjlM8Aji',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:03',
  'MAHALIA JACKSON',
  'DON''T LET NOBODY TURN YOU AROUND',
  NULL,
  'traditional gospel, gospel, christmas',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3oOqSuuanq8NBbBCS6jLeL',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:05',
  'JESSIE HILL',
  'NATURALLY',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:10',
  'Nolatet',
  'Bongo Joe',
  'Dogs',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5GUCfCRlSInar2igvragMS',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:28',
  'Tank And The Bangas',
  'Cafe Du Monde',
  'Red Balloon',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:33',
  'MACEO PARKER',
  'ROCK STEADY',
  NULL,
  'jazz funk, funk, soul jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/03sGuhK9eaqwZOFuLMIwdB',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:43',
  'CHRIS KENNER',
  'SOMETHING YOU GOT',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/25RjrV1Zw6y6ROYs1me2gJ',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:45',
  'Don Vappie',
  'Absolutely',
  'Creole Blues',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:55',
  'louie michot',
  'TI COUER BLEU',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:56',
  'balfa brothers',
  'la danse du mardi gras',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:57',
  'Meters',
  'Hey Pocky A-Way',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4RvopSUhdibG1zPwgYAMHl',
  'found',
  73.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:05',
  'Meters',
  'People Say',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/746CCMLis8SK64lLVXMF1d',
  'found',
  73.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:16',
  'the clash',
  'guns of brixton',
  'london calling',
  'punk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1d0RJmZXAncCnTYHFlhaj4',
  'found',
  91.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:23',
  'the clash',
  'know your rights',
  NULL,
  'punk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5XtFjSwftFzhQsq0le0rTF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:32',
  'Bobby Charles',
  'Why Are Peolpe Like That',
  'Secrets Of The Heart',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:35',
  'Happy Talk Band',
  'Other Than Everything, Everythi',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:46',
  'Rough Seven',
  'St. Anthony',
  'Give Up Your Dreams',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:54',
  'Malevitus',
  'Sugar and Salt',
  'Malevitus',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5ClX1PeIey5OwxKsETTczz',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:01',
  'Dr. John',
  'Eleggua',
  'Locked Down',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5zbKKnn0Ar6EMkP9q7nzd9',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:03',
  'Marvin Gaye',
  'Got To Give It Up',
  'Great Songs and Performances [19',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4JmZyfkzXWN7pHJsJpN6XP',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:08',
  'BILL WITHERS',
  'KISSING MY LOVE',
  'STILL BILL',
  'soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/262qk9k0LTyMXmjH9YT2xU',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:11',
  'Meters',
  'Hey Pocky A-Way (Single Version)',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7Jea2uirtEcZMqUTjuvJtq',
  'found',
  73.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:15',
  'JAMES & BOBBY PURIFY',
  'I''M YOUR PUPPET',
  'SHAKE A TAIL FEATHER!',
  'northern soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6H8WMHCov3QGaPLbpOMpcJ',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:17',
  'Joe Simon',
  'I Need You, You Need Me',
  'Best Of Joe Simon',
  'philly soul, classic soul, northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2qp7vrDPvoo0I5CI8JUDmx',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:20',
  'Bobby Blue Bland',
  'I Need Your Love So Bad',
  'Members Only',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4BuoEvRdm26Fgia0gHsM2V',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:24',
  'BETTY EVERETT',
  'AIN''T GONNA CRY',
  'AT HER BEST',
  'northern soul, doo-wop, motown',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6bwRo6ZZY4IMsqHFKuklP0',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:27',
  'Albert King',
  'I Get Evil',
  'New Orleans Heat',
  'blues, classic blues, blues rock',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0V9RMOrY4i89IBIBqDLYdW',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:31',
  'STEVIE WONDER',
  'THAT GIRL',
  'ORIGINAL MUSIQUARIUM',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5oNi6zJgIcGh8pv3XlmZb3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:36',
  'Chocolate Milk',
  'Say Won`t Cha',
  'Ice Cold Funk- The Greatest Groo',
  'funk, post-disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/30aIAA5c5m6Xl3zrzpZCJD',
  'found',
  80.2,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:41',
  'G.Q.',
  'SITTING IN THE PARK',
  'TWO',
  'disco, post-disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/079XHGz5pinsXizxTcJUfX',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:44',
  'Big Al Carson',
  'Dip My Dipper',
  'Take Your Drunken Ass Home',
  'zydeco, cajun',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3yJMepo0DH7VdZqDcmyd0l',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:51',
  'Koko Taylor',
  'Don`t Put Your Hands On Me',
  'Force of Nature',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2WX1Opbc92E3zwBThDJUAb',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:54',
  'ENCHANTMENT',
  'Sunshine',
  'THE BEST OF ENCHANTMENT',
  'quiet storm, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5piWzIoOx8VJbtWHP3KYOX',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:59',
  'Aretha Franklin',
  'Until You Come Back To Me (Tha',
  '30 Greatest Hits [Disc 2]',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3iX0BMs9dX9CsgrHhiB173',
  'found',
  81.5,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:08',
  'Johnny Guitar Watson',
  'Ain`t That A Bitch',
  'The Best Of The Funk Years',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5tcrRMV4ibCLHx8s2yp2O3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:13',
  'SOLOMON BURKE',
  'CRY TO ME',
  'THE VERY BEST OF SOLOLMOM BURKE',
  'soul, soul blues, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0sDeU2murnLh4yVHQ5IV70',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:16',
  'Lee Dorsey',
  'Lottie Mo',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/59Vvb8xnK2YoToN5wfOs8Z',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:18',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda',
  'Thirty Years and Still Wild',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:19',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:22',
  'LATIMORE',
  'QUALIFIED MAN',
  'STRAITEN IT OUT',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5bCrFgw4doVSYLQpoJdR4x',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:26',
  'Snooks Eaglin',
  'Lipstick Traces',
  'The Crescent City Collection',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:30',
  'JERRY BUTRLER',
  'AIN''T UNDERSTANDING MELLOW',
  '20TH CENTURY MASTERS',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:34',
  'Johnny Guitar Watson',
  'Telephone Bill',
  'The Funk Anthology (CD02)',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/55VYCKfhY4S6mPM3dee2Cj',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:39',
  'Dr. John',
  'Food For Thot',
  'The Best Of The Parlophone Years',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0pS0ArJxesOWbEbRBDKKBh',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:43',
  'ROTARY CONNECTION',
  'LOVE HAS FALLEN ON ME',
  'HEY,LOVE',
  'classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/12P5G3TPyFc0Jpi4Ys3044',
  'found',
  92.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:48',
  'BILL WITHERS',
  'LET ME BE THE ONE YOU NEED',
  'THE BEST OF BILL WITHERS',
  'soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/22beaVB5KBAffAVT6NhpJ2',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:56',
  'JOCELYN BROWN',
  'SOMBODY ELSE''S GUY',
  'SINGLE',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:57',
  'TONYA BOYD-CANNON & DA TRUTH BRASS BAND',
  'EVERYWHERE ELSE IT''S TUESDAY',
  'SINGLE',
  'brass band, footwork',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4aruXzSviX46ixqKG9mAM9',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:07',
  'ellis marsalis',
  'softly as in a morning sunrise',
  'on the first occasion',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0tUfo9y9UjzgweLTdtHrMK',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:13',
  'Emmet Cohen',
  'spillin'' the tea',
  'Uptown In Orbit',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/1MrBiLHSHib7J1vOmZhNTj',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:20',
  'The Dave Brubeck Quartet',
  'How High The Moon',
  'Jazz At Oberlin',
  'jazz, cool jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/1JSJA9Ju2bdqRghnTXabU2',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:29',
  'Snooks Eaglin',
  'Nine Pound Steel',
  'Live In Japan',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:36',
  'Herbie Hancock',
  'Tell Me A Bedtime Story',
  'The Essential Herbie Hancock',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/6eimz6jvlZaPwtflDWCTa0',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:36',
  'Miles Davis',
  'E.S.P.',
  'The Essential Miles Davis',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/61K5CsgNZy69TFzrsFS1XM',
  'found',
  81.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:41',
  'Joe Henderson',
  'Johnny Come Lately',
  'Lush Life',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/6klmQRMwixVFcjxUndqTp3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:48',
  'Kenny Garret & Pharoah Sanders',
  'Sketches Of MD',
  'Live At The Iridium',
  'jazz, jazz fusion, free jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/29Ly6ilQ5zfnNZQOiFwZK0',
  'found',
  81.5,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:59',
  'John Michael Bradford',
  'Monie',
  'Something Old, Something New',
  'jazz funk, brass band, cajun',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/7cEJzvZWMHk0czM16qV1ky',
  'found',
  82.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:14',
  'Nicholas Payton',
  'Hangin'' In and Javin''',
  'Smoke Session',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:14',
  'Nnenna Freelon',
  'The Meaning Of The Blues',
  'Jazz After Dark',
  'vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/629xvARvFaQOjTqGc6nAaZ',
  'found',
  93.7,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:20',
  'Nubya Garcia',
  'Fly Free',
  'Nubya''s 5ive',
  'nu jazz, jazz, indie jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5vOACtNZ1QU7Qv3PJARUDR',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:33',
  'Oliver Nelson',
  'Stolen Moments',
  '''THE BLUES AND THE ABSTRACT TRUTH'' (Impulse! Records)',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/1sce5VJvCOYYDAR9rp9KdG',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:40',
  'Sonny Rollins',
  'Tune Up',
  'Newk''s Time',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/2uKNim3AX8fos0QuUv62Da',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:46',
  'Charles Mingus',
  'Farewell, Farwell',
  'Jazz Classics',
  'jazz, hard bop, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4citv7RrPPQO3DVbA604b8',
  'found',
  78.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:53',
  'Nancy Wilson',
  'These Golden Years',
  'Turned To Blue',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:10',
  'Pat Metheny',
  'In On It',
  'Side-Eye',
  'jazz fusion, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/7jKhWfwscF6ZYXCKM9iA9k',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:10',
  'Terrence Martin & Curly',
  'Final Thought',
  'Curly',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:27',
  'Branford Marsalis',
  'Mr. Steepee',
  'Crazy People Music',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:27',
  'John Clotrane',
  'Mr. P.C.',
  'The Atlantic Years',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:33',
  'Herlin Riley',
  'The Crossbar',
  'New Directions',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5jM46z8x7M1KJsZOHGPVsQ',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:41',
  'Tito Puente',
  'New Arrival',
  'Calle 54',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5jvwfgu3bwWyLh1OcmvugM',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:54',
  'Johnny Adams',
  'Blue Gardenia',
  'The Verdict',
  'soul blues, blues',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5QOschV0NMGDvN6DqmvW7C',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:00',
  'DIRTY DOZEN BRASS BAND',
  'JOHN THE REVELATOR',
  'Funeral For A Friend',
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2YDUeulONtt8IFIsZfmRst',
  'found',
  90.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:04',
  'mahalia jackson',
  'when the saints#',
  NULL,
  'traditional gospel, gospel, christmas',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3dqHgnU7v6p1eBlDaitYtX',
  'found',
  81.7,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:12',
  'edith wilson with doc straine',
  'it''s gonna be a cold cold winter',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/50u1CtuGJX1EOZRTueQeeC',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:12',
  'sonny boy williamson',
  'nine below zero',
  NULL,
  'roots rock, blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4swf6Tl5tJCLhdo7Cpuazk',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:15',
  'Bob Howe & Frankie Griggs',
  'The Hottest Stuff In Town',
  'Them Dirty Blues',
  'ragtime',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0cppqPO5sjvWNTVlge0GkA',
  'found',
  89.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:18',
  'jimmy shaw',
  'the right to love you',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:19',
  'jackie mittoo',
  'get up and get it',
  'the keyboard king of studio one',
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4KKLXmRB71huKAf5vS0t9A',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:22',
  'jimmy shaw',
  'we''re gonna make it.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:30',
  'Betty Harris',
  'There''s A Break In The Road',
  NULL,
  'northern soul, soul jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0CokZkflJLq2mE4ZBwpWFw',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:30',
  'jimmy shaw the mighty hannibal',
  'wake up.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:31',
  'mary jane hooper',
  'harper valley pta.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5uX7qH7hyt5ulypk6FGFoh',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:37',
  'jackie mittoo',
  'juice box',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5i37sTuV3K3IbBWHNuXihe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:37',
  'jimmy shaw the mighty hannibal',
  'big chief hug-um an'' kiss-um',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:37',
  'jimmy shaw the mighty hannibal',
  'hymn no 5',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:49',
  'mitty collier',
  'pain.',
  NULL,
  'northern soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2RMYWiLkrJOIKiiTjgh28E',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:52',
  'jimmy shaw the mighty hannibal',
  'black girl',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:55',
  'mable john',
  'stay out of the kitchen',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0I4GvWSMxMzorS3YTQji5F',
  'found',
  91.2,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:02',
  'baby washington',
  'it''ll never be over for me',
  NULL,
  'northern soul, doo-wop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2Co8otif6KH0pIMwzNrIdf',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:02',
  'jimmy shaw the mighty hannibal',
  'same ole fool again',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:03',
  'jimmy shaw the mighty hannibal',
  'party life',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:10',
  'chuck jackson and maxine brown',
  'hold on i''m coming.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:11',
  'jimmy shaw the mighty hannibal',
  'i got that will',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:12',
  'jackie mittoo',
  'black organ',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3MZm4t1kRJ2e5JyaYQpjrF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:12',
  'the foundations',
  'jerkin'' the dog',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5VEcEIS8pyq7uOEbsPy1q3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:18',
  'jimmy shaw the mighty hannibal',
  'motha goose breaks loose',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:24',
  'jimmy shaw the mighty hannibal',
  'sputnik 69',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:27',
  'the mighty sparrow',
  'russian satellite',
  NULL,
  'calypso, soca, parang',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5FGc1IRSeb4DqtdVucFf9a',
  'found',
  84.7,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:32',
  'jimmy shaw the mighty hannibal',
  'fall in love with me',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:38',
  'jackie shane',
  'in my tenement',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0cf14MaYcwoYrpLHFrJegI',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:38',
  'jimmy shaw the mighty hannibal',
  'my name is hannibal',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:39',
  'jackie mittoo',
  'reggae rock',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/00hPnVmMynXSUIeIXapFZE',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:41',
  'jimmy shaw the mighty hannibal',
  'baby sister',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:44',
  'little ann',
  'one way street',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4EBWQ9peB7oehL3K7U4T2p',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:46',
  'jimmy shaw the mighty hannibal',
  'stay away from the crack',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:49',
  'the trinikas',
  'remember me,',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5zYNA33su43OcRKLYgeeFI',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:51',
  'jimmy shaw the mighty hannibal',
  'show me the money.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:54',
  'jackie mittoo',
  'oboe',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4QGoeQ77QvTihnoG3wGogJ',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:03',
  'jimmy shaw the mighty hannibal',
  'who told you that?',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:07',
  'Zilla MAyes',
  'All I Want Is You',
  'TOU SEA 45',
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5hjimJL3xC0VIjYuzPBvRY',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:15',
  'doris duke',
  'to the other woman (i''m the other woman',
  NULL,
  'soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2nRk3PqhhekI963sCvoRrm',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:15',
  'jimmy shaw the mighty hannibal',
  'operation G.O.D. news break: god''s the only cure for crack',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:21',
  'ella washington',
  'the grass is always greener',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0kziLNaWRBy1jgGul4o3SL',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:21',
  'jimmy shaw the mighty hannibal',
  'what the blind man sees',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:23',
  'jimmy shaw the mighty hannibal',
  'the old ball game',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:26',
  'jackie mittoo',
  'killer diller',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2hUuLfZEqlAGqlp5aWmcaU',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:30',
  'jimmy shaw the mighty hannibal',
  'rerun',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:32',
  'the devonnes',
  'i couldn''t build a world with you on the outside',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1KkwnFkwvF3aHKktgbozKx',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:35',
  'jimmy shaw the mighty hannibal',
  'love is funny',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:37',
  'ann sexton and the masters of soul',
  'you''ve been gone too long',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:41',
  'jimmy shaw the mighty hannibal',
  'take a chance on me',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:43',
  'marva whitney',
  'unwind yourself.',
  NULL,
  'funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0h7pMUK2EKEj7E4gGvhDO5',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:44',
  'jimmy shaw the mighty hannibal',
  'ain''t nobody perfect',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:48',
  'marie queenie lyons',
  'fever.,',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/03o3ZWoDz3yQ1EGIGlQrkR',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:54',
  'jackie mittoo',
  'hot tamale.',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5BXNlV5rOz5sfBMEOJEZyb',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:54',
  'jimmy shaw the mighty hannibal',
  'obama stomp',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:54',
  'jimmy shaw the mighty hannibal',
  'the truth shall make you free',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:08',
  'Big Chief Romeo Bougere ft Dawn Richard',
  'I''m Feeling Good! (remix)',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:11',
  'Champion Jack Dupree',
  'Death of Big Bill Broonzy',
  'Champion Jack''s Natural & Soulful Blues',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:12',
  'Champion Jack Dupree',
  'Don''t Leave Me Mary',
  'Champion Jack''s Natural & Soulful Blues',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7bfd7R8V77RcZi7rZ3Nj6q',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:15',
  'Champion Jack Dupree',
  'Rampart Street Special',
  'Champion Jack''s Natural & Soulful Blues',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/62QHQDCHBqen10phLDzQ2e',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:16',
  'Champion Jack Dupree',
  'Walking the Blues',
  'Two Shades of Blue',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4g4mTh2VIVOKj28cfVyX27',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:25',
  'Champion Jack Dupree',
  'Harelip Blues',
  'Two Shades oif Blue',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0mh8lhIUzBi69nZZDe5Fgp',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:26',
  'Muddy Waters',
  'Back to the Chicken Shack',
  'Muddy Waters Live in Paris, 1968',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:28',
  'Muddy Waters',
  'Train Fare Home',
  'Muddy Waters Live in Paris, 1968',
  'blues, classic blues, blues rock',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/27F9rTl4ehEsix8eVI9I0Z',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:35',
  'Lil Green (& Big Bill Broonzy)',
  'Why Don''t You Do Right',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:36',
  'Lil Green (& Big Bill Broonzy)',
  'How Can I Go On?',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:40',
  'Lil Green (& Big Bill Broonzy)',
  'Country Blue Blues',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:41',
  'Lil Green (& Big Bill Broonzy)',
  'If I Didn''t Love You',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:46',
  'Django Reinhardt',
  'Night and Day (1938)',
  'Minor Swing',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:47',
  'Django Reinhardt',
  'Nuages',
  'Minor Swing',
  'swing music, jazz, french jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6LCy9KJjMcAkyEHrAcXVfN',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:52',
  'Doug Clark & the Hot Nuts',
  'LET''S HAVE A PARTY',
  'Nuts to You with Doug Clark & the Hot Nuts',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:54',
  'Doug Clark & the Hot Nuts',
  'Gay Cabalerro',
  'Nuts to You with Doug Clark & the Hot Nuts',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:57',
  'Doug Clark & the Hot Nuts',
  'A Soldier',
  'Nuts to You with Doug Clark & the Hot Nuts',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:58',
  'Lil Green (& Big Bill Broonzy)',
  'My Mellow Man',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:05',
  'Benin Vodun',
  'Polyrythmie pour Hevioso',
  'Benin Vodun',
  'riddim',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/45ga4WWvnra1hyXOTJAkiF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:06',
  'Petit Miguelito',
  'JULIA',
  'Petit Miguelito',
  'zouk, kompa, coupé décalé',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7MTtDMqz9GZecoAeOZE5E8',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:14',
  'Vincent Ahehehinnou',
  'Y a pas moyen',
  'Benin Passion',
  'afrobeat, highlife',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5KXqN3DDXitZ9adllW4xYb',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:22',
  'Sedjro Bona, Norbeka',
  'Ovi',
  'Sedjro Bona, Norbeka',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/08lFWM2E9mxmjLDFTWUrl6',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:25',
  'Mama Franco',
  'Fo Sabi Fo',
  'Benin Passion',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4IgG283RX2SuAqZytHkcnO',
  'found',
  76.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:27',
  'Vodoun Benin',
  'Vodunche',
  'Benin Pasion',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:37',
  'Gnonnas Pedro',
  'Djedjevi Gnin',
  'Benin Pasion Vol 2',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:39',
  'Clement Melome',
  'Angelina',
  'Benin Pasion Vol. 2',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:44',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:47',
  'El Rego',
  'Feeling You Got',
  'Legends of Benin',
  'afrobeat, afro soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7d9K7WaGycc1rRnHs7vo15',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:55',
  'Honore Avolonto',
  'Tin Lin Non',
  'Legends of Benin',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

DELETE FROM wwoz_tracks WHERE date = '2026-01-30';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:00',
  'The Funkees',
  'Akula Owu Onyeara',
  'Dancing Time',
  'afrobeat, highlife',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/5ww9r75Y8JPRgAAc3qJPms',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:05',
  'Galactic',
  'Second and Dryades with Big Chief Monk Boudreaux',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:08',
  'LOUIS ARMSTRONG',
  'SKOKIAAN',
  NULL,
  'jazz, swing music, vocal jazz',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/6vfEUUTFn1d2NM7P95gFYh',
  'found',
  72.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:14',
  'Johannesburg Street Band, Hugh Masakela',
  'Awe Mfana',
  NULL,
  'afrobeat, afro soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/2hEc1rplAykZgCWHPbtS5p',
  'found',
  86,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:19',
  'Nina Simone',
  'Revolution Pt 1 and 2',
  'Forever Young Gifted And Black',
  'vocal jazz, soul jazz, soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/056XUz8cao9mA3TuORDTVh',
  'found',
  89.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:23',
  'Tricicio Circus Band, Son Rompe Pera',
  'Cantilero',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:25',
  'Bandiera Rossa',
  'bella Ciao',
  NULL,
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/5vUoJGjCjjA7bDEV5oUk8J',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:27',
  'Fela Kuti',
  'O.D.O.O.',
  NULL,
  'afrobeat, highlife, afropop',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4mBmp4aYwoHnfxLrTkcuIS',
  'found',
  77.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:36',
  'Ruby Ibarra',
  'Bakunawa',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:42',
  'Rebirth Brass Band',
  'Mexican Special',
  NULL,
  'brass band, zydeco, new orleans bounce',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/5mFyn783ePoPmaVcnglL2P',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:45',
  'Jon Batiste',
  'We Are',
  NULL,
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/7cx51c7voFYPh3MjkocCwD',
  'found',
  70.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:50',
  'Dur Dur Band',
  'Ohiyee',
  NULL,
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4sdiyrH1I74GAzSlfhi68L',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:00',
  'Dr. John',
  'Shining as Hard as I Can',
  NULL,
  'cajun, zydeco',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/7onowyolRIWDRYOlrWBTGs',
  'found',
  83.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:05',
  'The Spirit of the Fi Yi Yi',
  'Big Chiefs Meet',
  'The Spirit of the Fi Yi Yi & the Mandingo Warriors',
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/7M2ZTYP3TEKrLZvacgUjda',
  'found',
  81.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:10',
  'The Staple Singers',
  'For What It''s Worth',
  NULL,
  'soul, motown, classic soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4la9jiqXYHQlEwbRhqYsd7',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:12',
  'Resistance Revival Chorus, Rhiannon Giddens',
  'All You Fascists Bound to Lose',
  NULL,
  'folk, americana, southern gothic',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/0lYykZNNBNE33o5izvZFrG',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:17',
  'Jon Batiste',
  'American Symphony Theme',
  'Beethoven Blues',
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/12YNZAFHGLIrtzQU7cfnQ6',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:20',
  'Hanoun Brass Band',
  'Ya Zareef / Del''aouna/Wein ''a Ramallah',
  'From New Orleans to Palestine',
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:26',
  'Trendafilka',
  'Kaliora Ne'' Xoun I Elyes',
  'For the Olives',
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:34',
  'Mike Dillon, Brian Haas, Nikki Glaspie',
  'Houser',
  'Run White Boy Run',
  'jam band, cajun, nu jazz',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/0ilY9qK1otuaQpy5LAuk2j',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:36',
  'John Zorn, Kris Davis Quartet',
  'Bagatelle #86',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:39',
  'archie shepp',
  'attica blues',
  'attica blues',
  'free jazz, jazz, avant-garde',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/6VdtTwF9ZW5m9Lct4ep02s',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:40',
  'James Booker',
  'Fur Elise/One Helluva Nerve',
  'Rhapsody In Bronze',
  'boogie-woogie, cajun, ragtime',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/0Yx6ytd4nCdRIacZ4dIvd3',
  'found',
  86,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:45',
  'Greg Schatz',
  'Siren in the Sky',
  'The Sun is Still Going to Shine',
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/6AufoUleHquinpXIBmZTJG',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:48',
  'woody guthrie',
  'tear the fascists down',
  'my dusty road',
  'folk, traditional folk, americana',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/649Zk1kqe5TpkMYSCr0sI6',
  'found',
  88.8,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:58',
  'Mardi Gras Indians',
  'Red Whie and Blue got a Golden Band',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '06:04',
  'Buddy Rich',
  'Cardin Blue',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '06:24',
  'Larry Coryell',
  'Wrong is right',
  NULL,
  'jazz fusion, smooth jazz, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2aG4J8PSSJQS2DCEVpaTqG',
  'found',
  98,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '06:43',
  'Brad Allen Williams',
  'satellites are spinning (feat. Fay Victor)',
  'light rivers',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:04',
  'Dave Stryker',
  '2 Blue Fire',
  'Blue Fire',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:04',
  'Marques Carroll',
  'The March On Montgomery',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:23',
  'Anika Nilles',
  'Radiate',
  'False Truth',
  'jazz fusion, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/03e1HJGTY4u6aeRCMkjQY2',
  'found',
  100,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:31',
  'Lafayette Harris, Jr.',
  'We Are One in the Spirit',
  'All in Good Time',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/6NclZfQcE4dBcvQt6iQra5',
  'found',
  100,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:38',
  'Bill Laurance & WDR Big Band',
  'Golden Hour (Live)',
  'Live at the Philharmonie, Cologne (Live)',
  'jazz fusion, nu jazz, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/3ERGmWeUJn2Vt7GRyhXY8s',
  'found',
  98,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:13',
  'John Scofield & Dave Holland',
  'Mine Are Blues',
  'Memories of Home',
  'jazz fusion, jazz, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/31ddIeqh5m0Lupl9qigYb5',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:13',
  'Jon Batiste',
  'Saint James Infirmary Blues',
  'The New Americana Collection',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5jzF5gswFsruIjQIDNyZYt',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:23',
  'James Booker',
  'Tico Tico',
  'Behind The Iron Curtain Plus...',
  'boogie-woogie, cajun, ragtime',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4P5mQQcRvLu6rwGwaTTjfK',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:36',
  'Lettuce',
  '7 Tribes',
  'Cook',
  'jam band, funk, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/638G7bULDh52AOZyZTBTTa',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'James Fernando',
  'The Parisian',
  'Philly 3',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Mark Christian Miller',
  'Strange Meadowlark/Skylark',
  'Strange Meadowlark',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Melissa Aldana',
  'Dime Si Eres TÃº',
  'Filin',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Something Blue',
  'Like Miles',
  'In The Beginning',
  'hard bop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4S9yePAA9wSOg0C2nOMXFO',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Wynton Marsalis & Lincoln Center Jazz Orchestra',
  'Hammer Head',
  'The Music Of Wayne Shorter',
  'latin jazz, big band, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0CJf84KdLVygefOqDX4ajr',
  'found',
  84.3,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:53',
  'Brian Blade',
  'Perceptual',
  'Perceptual',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4rIdBCDVxxiAeKRXT5E610',
  'found',
  78.8,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:03',
  'Sidney Bechet',
  'I''ve Found a New Baby',
  NULL,
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:07',
  'Fats Waller',
  'I Got Rhythm',
  'The Savory Collection 1935-1940',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/64ERJk46NhMNvT4ypIZsB0',
  'found',
  72.6,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:09',
  'Chick Webb',
  'Spinnin` The Webb',
  'Spinnin` The Webb',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/54X3ZM1XTaB7trXHImAjXI',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:12',
  'Fletcher Henderson',
  'Tidal Wave',
  'Tidal Wave',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5oBCfB5iCnF4sGuIQFJ0Js',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:15',
  'Fats Waller And His Rhythm',
  'Spreadin` Rhythm Around',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:17',
  'Fletcher Henderson',
  'I''m Crazy ''Bout My Baby (And My',
  'Tidal Wave',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4VjaGlNheSkWiMoQLKr7xB',
  'found',
  92.3,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:21',
  'Sidney Bechet',
  'Crazy Rhythm',
  'Jazz At Storyville',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5D3C37EYRLqYYPnygVYuJ6',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:26',
  'Fats Waller And His Rhythm',
  'When Somebody Thinks You`re Wond',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:30',
  'Chick Webb',
  'Heebie Jeebies',
  'Spinnin` The Webb',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5KmDrWz3wSCeDRfogd3K7Q',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:33',
  'Fletcher Henderson',
  'Limehouse Blues',
  'Tidal Wave',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6ULcIs4B2Ds0OyHlIv8zrA',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:36',
  'Fats Waller',
  'I Hate To Talk About Myself',
  'I`m Gonna Sit Right Down- The Ea',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:39',
  'Sidney Bechet',
  'Sweetie Dear',
  NULL,
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6p4wvBOU7A4vdw0qQI9TvZ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:42',
  'Oscar Papa Celestin-Sam Morgan',
  'Careless Love',
  'The Complete Recordings In Chron',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:45',
  'Preservation Hall Jazz Band',
  'Blue Skies',
  'Preservation- An Album To Benefi',
  'folk, traditional folk, americana',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2A8Rn3D3L1YT1EqSvGyzsY',
  'found',
  85,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:50',
  'Preservation Hall Jazz Band',
  'Red Wing',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:55',
  'Oscar Papa Celestin-Sam Morgan',
  'Short Dress Gal',
  'The Complete Recordings In Chron',
  'ragtime, brass band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3YXw0zqm7GOoQtQ0MYeTpC',
  'found',
  91.6,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:58',
  'Preservation Hall Jazz Band',
  'Ti-Pi Ti-Pi Tin',
  'Songs Of New Orleans (CD01)',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2SgV7N4g0ra1Jecg4ifRoG',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:08',
  'Lars Edegran',
  'Alice Blue Gown',
  'Lars Edegran Presents Lionel Fer',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:11',
  'Pfister Sisters',
  'It`s The Girl',
  'Change In The Weather',
  'boogie-woogie',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5cmEHjqlzCXHaaDm8Dtu3A',
  'found',
  84,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:15',
  'Lars Edegran',
  'Shout Sister Shout',
  'Shout Sister Shout- Edegran Orch',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:19',
  'Billie And DeDe Pierce',
  'Careless Love',
  'New Orleans- The Living Legends',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2ZmqdtV74YSpFptVuwsqFQ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:22',
  'Pfister Sisters',
  'There`ll Be Some Changes Made',
  'Change In The Weather',
  'boogie-woogie',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4ACdhAJUfQjL6Z2FrNcf98',
  'found',
  84,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:26',
  'Billie And DeDe Pierce',
  'Get A Working Man',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2UtoxMiITEc70DHUA4r4Og',
  'found',
  83.2,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:30',
  'George Lewis',
  'My Old Kentucky Home',
  'Ice Cream',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4zfx3qwTZ85jvV3rqvHsP6',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:34',
  'Colossus Brass Band',
  'By and By',
  'Sing On',
  'brass band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0REXDReqM7YDt8DYqHwxee',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:42',
  'George Lewis',
  'Burgundy Street Blues',
  'The Beverly Caverns Sessions',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6rMN3NP34S3PghhruNd0tc',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:46',
  'Preservation Hall Jazz Band',
  'Back Porch',
  'Shake That Thing',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3SCxDbi9R2s8Fb7azvbCbZ',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:54',
  'Louis Cottrell, Jr',
  'Runnin` Wild',
  'New Orleans- The Living Legends',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:58',
  'Excelsior Brass Band',
  'Didn`t He Ramble',
  'Jolly Reeds & Steamin` Horns',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:05',
  'Electric Yat Quartet',
  'Buona Sera',
  'Stringin'' with Some BBQ',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0hlXz1BYcijr42zWodJDye',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:07',
  'little queenie',
  'My Darlin New Orleans',
  'purple heart',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0SoOlkZ09atUsYgubWBcKh',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:12',
  'Viper Mad Trio',
  '8 9 & 10',
  'Buddy Bolden''s Blues',
  'ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6LuFG0hYjBycWbSyqs6Ow1',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:16',
  'Meschiya Lake & Tom McDermott',
  'I`m Gonna Live The Life I Sing',
  'Live At Chickie Wah Wah',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:19',
  'Gal Holiday',
  'Don`t Think Twice',
  'Set Two',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:25',
  'Daria & the Hip Drops',
  'Battleship',
  'Hipnotic',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4u9tti5abFTH3L9cHJjTvd',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:29',
  'Serabee',
  'Bayou Baby',
  'Humminbird Tea',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6C6dSgv2kuYZ9sZGqLhow4',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:39',
  'Electric Ramble',
  'Let It Roll',
  'Let It Roll',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1y84O1wXWJbLuMNI3vWrGD',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:46',
  'John Boutte',
  'Accentuate the Positive (Live at Auditorium Stravinski 2007)',
  'John Boutte',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:49',
  'Paul Sanchez',
  'Stew Called New Orleans',
  'Reclamation of the pie-eyed Piper',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/626Yrsu3w80kMFLawEkvq4',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:52',
  'Doreen Ketchens',
  'Cabaret',
  'New Orleans The Band! The Band!',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:03',
  'Dr John',
  'Let''s Make A Better World',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1pQDCxe6aZCXyYBuRHlpIQ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:07',
  'Ella Fitzgerald & Louis Armstron',
  'Moonlight In Vermont',
  'Ella And Louis',
  'vocal jazz, jazz, swing music',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2JLmmgIwdkc197jV0rvaVd',
  'found',
  83.2,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:12',
  'Chip Wilson',
  'How High The Moon',
  'Live in studio 2/19/99',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:16',
  'Phil Melancon',
  'Left on Tulane Avenue',
  'Alive at La Pavilion',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:17',
  'Kermit Ruffins With The Rebirth',
  'It`s Later Than You Think',
  'Throwback',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:23',
  'Aaron Neville',
  'Stompin` Ground',
  'Apache',
  'classic soul',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/58Bjt0GyKR4t9ESw43QFZN',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:38',
  'Corey Henry & the Treme Funket',
  'Slip Into Darkness/Hey Pockey Way',
  'Live at Vaughan''s',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:48',
  'Preservation Brass & the Preservation Hall Jazz Band',
  'Medley',
  'For Fat Man',
  'brass band, ragtime, swing music',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4aipRw6veKbnuc1zcTKOhE',
  'found',
  93,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:52',
  'Kyle Roussel feat. George Porter, Jr. & Charlie Gabriel',
  'African Gumbo',
  'Church of New Orleans',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:04',
  'eLECTRIC yAT qUARTET',
  'Blue Rondo a La Turk',
  'Stringin'' with some BBQ',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3dJutXNcy3ss6TEPzf2iYe',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:08',
  'sullivan fortier',
  'Southern Nights',
  'southern nights',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:13',
  'Kenny Wayne Shepard & Bobby Rush',
  'Who Was That',
  'Young Fashioned Ways',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:18',
  'Samantha Fish',
  'Paper Doll',
  'Paper Doll',
  'modern blues, blues, blues rock',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7lwkSZbanDg3mFgaG0Uf9B',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:20',
  'Jon Batiste & Randy Newman',
  'Lonely Avenue',
  'BIG MONEY',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/43fnovfvtK8e3PFuiYx2Wt',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:31',
  'shannon mcnally, keith frank, and molly tuttle',
  'Tout le temps en temps',
  'A tribute to the king of zydeco',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:32',
  'Marcia Ball & Geno Delafolse',
  'It May Be Wrong',
  'A Tribute to the King of Zydeco',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:37',
  'Bonerama',
  'Ohio',
  'so much love',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:43',
  'Trombone Shorty and New Breed Brass Band',
  'Line Em Up',
  'Line Em Up',
  'brass band, jazz funk, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0pt4dmsmMSmJVokF5H9HqL',
  'found',
  94,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:47',
  'Center of the River',
  'Little Milton',
  'Americana Art Music From the Mississippi',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:52',
  'Big Chief Romeo Bougere ft Dawn Richard',
  'I''m Feelin Good!',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:59',
  'Dr. John',
  'Going Back to New Orleans',
  'Going BAck to New Orleans',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1Pm466s6uewgUglATVbZgN',
  'found',
  80.5,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:02',
  'Bobby BLue Bland',
  'Its My Life Baby',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6Rdwl4NM4XoT0RimoZRp93',
  'found',
  86,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:05',
  'Elmore JAmes',
  'Take Me Where You Go',
  'VeeJay 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3yFuCaud8nTAotpM2kMyCm',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:07',
  'Bobby Blue Bland',
  'You DId Me Wrong',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2WdzgF9zhiCzolYgVffA5O',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:10',
  'Snooks Ford Eaglin',
  'Im SLippin In',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:13',
  'Bobby Blue Bland',
  'Honey Child',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4X8vayDYHMlOQy3X4GMdHO',
  'found',
  82.6,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:17',
  'Elmore JAmes',
  'Cry For Ma Baby',
  'VeeJay 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:19',
  'Bobby Blue Bland',
  'Bobbys Blues',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2LwHXGwMwukA9ltTB78cAi',
  'found',
  79,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:22',
  'Snooks FOrd Eaglin',
  'My Head Is Spinning',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:25',
  'Elmore JAMes',
  'Coming Home',
  'CHIEF 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0ZHYqt8DQZAc88LwceuAOY',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:26',
  'Bobby Blue Bland',
  'Farther Up The Road',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2hPyG7NMpHAmOrmlSziAx2',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:32',
  'George Perkins',
  'Crying In The STreets',
  'GOLDEN RECORDS 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:35',
  'Bobby BLue Bland',
  'I Dont Believe',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1WIuy2j0Ry5ieI5EYINBVs',
  'found',
  83.2,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:41',
  'Elmore JAmes',
  'Everyday I Have The Blues',
  'ENJOY 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3buTinCR9WQ22qfUJcJuoa',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:41',
  'Ford Eaglin',
  'By The Water',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:44',
  'Bobby Blue Bland',
  'I Smell Trouble',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5ITYKbMfPny7XZ4sTwljhk',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:48',
  'Elmore JAmes',
  'Held My Baby LAst Night',
  'FIRE 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/48Z6oiZm3tuDkp3NOm6wcV',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:51',
  'Bobby Blue Bland',
  'Wishing Well',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0AOLGRtIPWVip9D342PLgP',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:54',
  'Roscoe Gordon',
  'Lets Get High',
  'SUN 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:57',
  'Elmore JAmes',
  'Stranger Blues',
  'FIRE 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1rJ4QXyMDbqPEIFwoZq5bw',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:00',
  'Bobby Blue Bland',
  'Loan A Helping HAnd',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0GcU9jQ8L0Z8jDCTZ8SRvb',
  'found',
  93.4,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:07',
  'Elmore JAmes',
  'The 12 Year Old Boy',
  'CHIEF 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5sfAXKq9HHiXxADpMIGIOr',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:11',
  'Bobby Blue Bland',
  'Woke Up Screaming',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/215ppZm5eMd1fZXashHx6h',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:13',
  'Ford Eaglin',
  'Yours Truly',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:16',
  'Elmore JAmes',
  'No LOve In My Heart',
  'FLAIR 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0liGqYyiUPj6iiyvbjEL5q',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:19',
  'Bobby BLue Bland',
  'Shoes',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4UCqGjORleQ0uz6lFzESlf',
  'found',
  73.7,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:24',
  'Elmore JMAes',
  'Sunnyland',
  'KENT 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:24',
  'Lee Williams',
  'Im Tore Up',
  'FEDERAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:27',
  'Bobby Blue Bland',
  'Teach Me How To LOve You',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0fFfgUtKAucLY24AZEu7WD',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:31',
  'Aaron Neville',
  'Out Of My Life',
  'MINIT 45',
  'bhangra, classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7cLekQbHdbuOoEKjolvRfY',
  'found',
  93.3,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:31',
  'Ford Eaglin',
  'Travellin Mood',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:36',
  'Bobby Blue Bland',
  'I DOnt Want No Woman',
  'DUKE 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:39',
  'Aaron Neville',
  'Over You',
  'MINIT 45',
  'classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0Mw7P0ACIXvrIgLcdV9C5x',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:41',
  'Elmore JAMes',
  'Standing at The Crossroads',
  'KENT 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1e6qkPMUiaWZfVk7WdRByQ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:44',
  'Bobby Blue Bland',
  'Cry Cry Cry',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2hP6oI5fZAta0kj8nYn5CK',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:46',
  'Ford Eaglin',
  'Nobody Knows',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:00',
  'Eric Alexander',
  'Triste',
  'Like Sugar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4kmmLFlwCNm4L2LSQ25eSU',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:04',
  'James Suggs',
  'Grazing In The Grass',
  'For All We Know',
  'jazz ballads, ragtime, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6y4m01fYdlTRnH62Wb0QfS',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:09',
  'Roy Hargrove',
  'Lada',
  'Public Eye',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:16',
  'Steve Masokowski',
  'Things I Like',
  'Things I Like',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:25',
  'Wynton Marsalis',
  'Stardust',
  'Stardards and Ballads',
  'jazz, latin jazz, big band',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1mtyrNHJMM3UGgFlQWGQoI',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:29',
  'Donald Harrison',
  'Watermelon Man (Short Version)',
  'SINGLE',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:37',
  'JD Allen',
  'Don''t Go To Strangers',
  'Love Letters (The Ballad Sessions)',
  'hard bop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2b9qr9lAmrTJOe2mOC2b3D',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:41',
  'Steve Rosenbloom Big Band',
  'San Francisco 1948',
  'San Francisco 1948',
  'big band',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6a9x2PiSeyXnJBmidWevum',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:49',
  'Kenny Barron f/Tyreke McDole-vocal',
  'Marie LaVeau',
  'Song Book',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:55',
  'Ron Carter',
  'Caravan',
  'Ron Carters Great Big Band',
  'jazz, hard bop, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7sLjmXVuBBa7aefT9NG52E',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:05',
  'Herbie Hancock',
  'Maiden Voyage',
  'Maiden Voyage',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4RWugQDZAShxVwaEceKXHi',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:11',
  'Donald Byrd',
  'Love`s So Far Away',
  'Blue Breakbeats (1967-1976)',
  'hard bop, jazz funk, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2bSEu2bC76Wyj9hszTTFrh',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:20',
  'Nick Finzer',
  'Say When',
  'The Jazz Orchestra Volume 1',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5rrHwrjJBIEY3feIND6U4F',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:24',
  'Ledisi',
  'This Bitter Earth',
  'For Dinah',
  'neo soul',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4iyJ286IupiSTKMXE2ejPr',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:28',
  'Johnny Griffin & Eddie Lockjaw Davis',
  'Sophisticated Lady',
  'Live At The Penthouse',
  'hard bop, soul jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4LykiwYPUGgbgzu7S99oeS',
  'found',
  89.8,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:36',
  'Brandon Sanders',
  'Soul Eyes',
  'Lasting Impressions',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5BVYyDmIeBMcVPJHWRZZcT',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:39',
  'Dave Brubeck Quartet',
  'Bluette',
  'Time Further Out',
  'jazz, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0io8Uq8AO7qiFaF3eaPXr2',
  'found',
  88.1,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:46',
  'Hank Mobley Lee Morgan',
  'High And Flighty',
  'Peckin Time',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:51',
  'Nat Adderley Jr',
  'Superstar',
  'Took So Long',
  'smooth jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4iRaxdnypUZZlRbxhz6MY0',
  'found',
  86.5,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:58',
  'Dave Brubeck Quartet',
  'It''s A Raggy Waltz',
  'Time Further Out',
  'jazz, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1LH3R7OkZFtlALGtmpGXPb',
  'found',
  88.1,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:01',
  'Ellis Marsalis',
  'Brown Georgia',
  'On The Second Occasion',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/43KNjs9VKI77UO23t3zxdZ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:07',
  'Mike LeDonne',
  'After The Love Has Gone',
  'The Anniversary Quartet Live At The Cellar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2i4dJyDNZnSP6kBAypOfmW',
  'found',
  73.5,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:21',
  'Gregory Lewis',
  'Who Knows',
  'Monk Going Home',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4gCGks65z6WVRfd19M0QCk',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:26',
  'Dr Lonnie Smith',
  'Three Blind Mice',
  'Think',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/04QEpeQdYBCOPrhSpmQLLd',
  'found',
  75.9,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:38',
  'Dee Dee Bridgewater & Bill Charlap',
  'In The Still Of The Night',
  'Elemental',
  'vocal jazz, french jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5jSeACw2qskkLiVFgxh2FL',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:46',
  'Thelonius Monk Quartet w/John Coltrane',
  'Evidence',
  'At Carnegie Hall',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:54',
  'Kyle Roussel',
  'African Gumbo',
  'Church of New Orleans',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:57',
  'Ellis Marsalis',
  'Chapter Two',
  'Heart Of Gold',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:09',
  'rory gallagher',
  'do you read me',
  NULL,
  'blues rock, blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5vJhT8eiyvNbFzbRnkabE8',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:18',
  'dock boggs',
  'country blues',
  NULL,
  'bluegrass, traditional folk, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2srxx9rYIYBDWYIwwcwC9T',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:18',
  'walter trout',
  'Bleed',
  NULL,
  'blues, blues rock, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6o6XBDZv0mCRRnQbtYnynE',
  'found',
  75.7,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:24',
  'ken manyard',
  'the lone star trail',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:27',
  'bertha henderson',
  'black bordered letter',
  NULL,
  'ragtime, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7o4XaVi86bKiZgufkzjV6O',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:27',
  'janis joplin',
  'down on me',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:33',
  'deacon leon davis',
  'everybody''s down on me',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/59bIbksy9b6bPUth8HbzZu',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:37',
  'walter ''sandman'' howard',
  'cuttin'' out',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:39',
  'jerry lee lewis',
  'hold on i''m coming',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:45',
  'big mama thornton',
  'ball n chain',
  NULL,
  'blues, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0D1S1rK4M8D3kJDFN50u0G',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:50',
  'west, bruce & laing',
  'Pleasure',
  NULL,
  'blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0fwCJatj2Du69qhjwQnDVp',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:51',
  'swamp cabbage',
  'Dixieland',
  NULL,
  'blues rock, cajun, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3WiC3cIMGxCgGqcoSDZmL7',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:56',
  'Buddy Guy',
  'Where U At',
  'Ain''t Done With the Blues',
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:08',
  'CW Stoneking',
  'jungle lullaby',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:08',
  'chuck E Weiss',
  'no hep cats',
  NULL,
  'blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2mm5vuiIBRAUWhuHTMohi9',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:12',
  'leon russell & tedschi trucks band',
  'dixie lullaby',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:16',
  'R.L. Burnside',
  'Come On In',
  NULL,
  'blues, country blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4zUM42SUS7DITeLBZ1ULre',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:18',
  'tav falco',
  'Prologue',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:22',
  'woody guthrie',
  'talking fishing blues',
  NULL,
  'folk, traditional folk, americana',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5uRZQacQqmhdRwoAMbYnlW',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:25',
  'otis taylor',
  'black''s mandolin boogie',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:29',
  'sheryl crow & jason isbell',
  'everything is broken',
  NULL,
  'alt country, americana, roots rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5EZzpwaya04PRQIxtkTkeY',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:34',
  'radiators',
  'City Of Refuge',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:39',
  'blind willie johnson',
  'I''m gonna run to the city of refuge',
  NULL,
  'blues, country blues, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0zn0NvZ9QZGthU5r6sc3Sr',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:45',
  'alvin youngblood hart',
  'shoot me grin',
  NULL,
  'blues, modern blues, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2qb1fUyn6HaEn7OZYePnlh',
  'found',
  92,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:50',
  'double trouble wih charlie sexton & doyle bramhall II',
  'skyscraper',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:58',
  'jay hooks',
  'evinrude boat motor',
  NULL,
  'blues rock, roots rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6Y3Ea43RAuNuCoGcAQY7be',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:58',
  'roky erickson',
  'it''s a cold night for alligators',
  NULL,
  'proto-punk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7bK0jdbUtkkOj4utqmFkKN',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:05',
  'barbara dane',
  'way behind the sun',
  NULL,
  'folk, traditional folk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4EXJ7ObB2LwJMNZ9eJ6i4p',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:11',
  'wailin'' jennys',
  'motherless child',
  NULL,
  'bluegrass, newgrass, folk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/75vOE38gusG7TvHwHoR1Cs',
  'found',
  83,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:14',
  'springsteen',
  'streets of minneapolis',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6AtgHxdvghUjcjdPX1VhWN',
  'found',
  73,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:17',
  'john butler trio',
  'zebra',
  NULL,
  'jam band',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1tUuMjAJR9vBu2vNWvlYmy',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:21',
  'eddie turner',
  'pomade',
  NULL,
  'blues rock, modern blues, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4LdTYtWHfNkIBmmPT609KI',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:29',
  'pops staples',
  'nobody''s fault but mine',
  NULL,
  'blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4Xuqm38Td7iop6a12gBh3J',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:30',
  'JJ Grey & mofro',
  'harp & drums',
  NULL,
  'modern blues, jam band, southern rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3zKMiNs3Aw42bvN8hL05P2',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:36',
  'guadalupe plata',
  'la ciguena',
  NULL,
  'space rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/69CfdRaA0VmQm17Dx7dPy4',
  'found',
  74.9,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:37',
  'marty stuart',
  'all the pretty horses',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'Dr. John',
  'Keep That Music Simple',
  NULL,
  'cajun, zydeco',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3W3yvXMl1LXzl90Cd7Xoeb',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'THE METERS',
  'GIVE IT WHAT YOU CAN',
  NULL,
  'funk, soul, jazz funk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6A30ZmNYud0lLeakiTag7X',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'Tommy Ridgely',
  'Double Eyed Whammy',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'allen toussaint & bonnie raitt',
  'what is success',
  NULL,
  'cajun, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5TKBT9Yhh7cAOmbzmR17rf',
  'found',
  100,
  '2026-01-31 07:11:36'
);