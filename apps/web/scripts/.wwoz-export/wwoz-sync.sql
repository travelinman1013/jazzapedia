-- WWOZ Database Export
-- Generated: 2026-03-14T09:30:08.047Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-14 06:37:10
-- Days: 3
-- Tracks: 376

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-11',
  'https://open.spotify.com/playlist/42mHZIG8AgpKYYLM6VVyYf',
  '{"totalTracks":94,"successfullyFound":62,"notFound":32,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-12 06:06:46',
  '2026-03-14 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-12',
  'https://open.spotify.com/playlist/7gC4JMUKFeDNlBTcawLgH0',
  '{"totalTracks":129,"successfullyFound":97,"notFound":32,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-12 06:06:46',
  '2026-03-14 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-13',
  'https://open.spotify.com/playlist/3lm6am0TvJYpyT5q8ZvBWl',
  '{"totalTracks":138,"successfullyFound":98,"notFound":40,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-13 06:24:34',
  '2026-03-14 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-03-11';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:05',
  'John Coltrane',
  'Welcome',
  'The Gentle Side of John Coltrane',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6875x2ACym3agd95Ma677q',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:14',
  'Bil Evans Trio',
  'Jade Visions (Take 2)',
  'Sunday at the Village Vanguard',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:21',
  'Phil deGruy',
  'Drume Degrita',
  'Hello Dali',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:24',
  'Chano Dominguez',
  'Drume Negrita',
  'Over the Rainbow',
  'latin jazz, flamenco',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3oAYCUrdXC4MFmeeHRndCE',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:28',
  'Paul Desmond Quartet',
  'Wave',
  'Paul Desmond Quartet Live',
  'cool jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0H8HB0DhfdBg4vTkXaUng2',
  'found',
  79.2,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:35',
  'Rebeca Martin & Guillermo Klein',
  'In the Nick of Time',
  'Upstate',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:40',
  'Pat Metheny',
  'Bright Size Life',
  'Side Eye',
  'jazz fusion, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6UwTR0kjCtlT4FMNtIvLac',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:46',
  'Miles Davis',
  'Bags'' Groove',
  'Bags'' Groove',
  'jazz, cool jazz, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7s3OAhWhek166ScKTf1Cgc',
  'found',
  98,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '06:56',
  'Jerome Sabbagh',
  'Lone Jack',
  'Stand Up!',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
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
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '07:10',
  'Jan Garbarek',
  'Where the Rivers Meet',
  'Rites',
  'ambient jazz, jazz, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1FjCky7DWBsarpj9NAw49D',
  'found',
  98,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '07:17',
  'Ellen Rowe Quartet',
  'The Loons of Vinton''s Cove',
  'Vinton''s Cove',
  'drone',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5m5FTj5F1kq1QfDhoAvuZp',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '07:23',
  'Marcus Roberts Trio with Wynton Marsalis',
  'Blue Skies',
  'Together Again: Live in Concert',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '07:31',
  'Walter Smith III',
  'Ask Me Now',
  'Twio',
  'jazz, tamil pop, kollywood',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0tXQyvN8o9KoxaU2INUKrJ',
  'found',
  70.4,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '07:37',
  'Orrin Evans',
  'Levels',
  'The Magic of Now',
  'jazz, big band, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6gLdX7Qt1mClhbGYekd42P',
  'found',
  98,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '07:46',
  'Clalude Bolling & Yo Yo Ma',
  'Bolling: Suite for Cello and Jazz Piano Trio: Comncertante',
  'Bolling: Suite for Cello and Jazz Piano Trio',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '07:56',
  'McCoy Tyner',
  'Angelina',
  'Solo: Live from San Francisco',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '08:00',
  'Joel Ross',
  'Hostile',
  'Gospel Music',
  'jazz, christian jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3jwXDaVo1erMTGCvSerayk',
  'found',
  98,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '08:07',
  'Peter Martin',
  'Guaracha''s Parish',
  'What Lies Ahead',
  'jazz ballads, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5WRA9Rl0XFuTnqyO27bfDS',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '08:18',
  'Patricia Barber',
  'The Beat Goes On',
  'Companion',
  'vocal jazz, french jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2ZFmNlinOMABynh5ai9DDf',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '08:23',
  'WJ3 Allstars',
  'Can''t Buy Me Love',
  'My Ship',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '08:29',
  'Grant Green',
  'Alone Toegher',
  'Green Street',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '08:39',
  'Fleur Debris',
  'In the Keyhole',
  'unreleased',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '08:57',
  'Benito Gonzalez',
  'Fly With the Wind',
  'Passion Revernce Transcendence',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '09:08',
  'FLETCHER HENDERSON AND HIS ORCHESTRA',
  'ROLL ON MISSISSIPPI ROLL ON',
  'THE C OMPLETE FLETCHER HENDERSON',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '09:22',
  'BO B CROSBBY ORCHESTRA',
  'MY INSPIRATION',
  'FAZ',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '09:59',
  'SHARKEY BONANO',
  'WHEN YOU''RE SMILING',
  'SHARKEY BONANO',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/4fYc7GjPWazbNF7ZvPlGly',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:00',
  'BOSWELL SISTERS',
  'I''M ON A DIET FOR LOVE',
  'SYNCOPATING HARMONIES FROM NEW ORLEANS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:10',
  'CAB CALLOWAY',
  'HAPPY FEET',
  'CAB CALLOWAY AND THE MISSOURIANS',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/29Z5N7BZfdSyAi3FChibOJ',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:12',
  'LIL HARDIN ARMSTRONG AND HER SWING ORCHESTRA',
  'LET''S GET HAPPY TOGETHER',
  'LIL HARDIN ARMSTRONG 1936-40',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:24',
  'JOSEPH ROBICHAUX AND HIS NEW ORLEANS RHYTHM BOYS',
  'KING KONG STOMP',
  'JOSEPH ROBICHAUX AND HIS NEW ORLEANS RHYTHM BOYS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:24',
  'TONY PARENTI',
  'GUMBO',
  'STRUT YO STUFF',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:25',
  'HALFWAY HOUSE ORCHESTRA',
  'SNOOKUM',
  'HALFWAY HOUSE ORCHESTRA',
  'jazz house',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6J16inOnTtSop3AFlxcMms',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:25',
  'NEW ORLEANS OWLS',
  'MEAT ON THE TABLE',
  'THE OWL''S HOOT',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/74U083PdvlEBBE1yTXel38',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:28',
  'JOE STEE3LE AND HIS ORCHESTRA',
  'COAL YARD SHUFFLE',
  'DON''T YOU LEAVE ME HERE',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:30',
  'BLUE LU BARKER',
  'DON''T YOU MAKE ME HIGH',
  'BLUE LU BARKER 1938-39',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:39',
  'EARL HINES AND HIS ORCHESTRA',
  'BEAU-KOO-JACK',
  'EARL HINES 1928-32',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5ahDsj0OmnVsfu6vOhnwgZ',
  'found',
  90.2,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:41',
  'LUIS RUSSELL AND HIS ORCHESTRA',
  'PANAMA',
  'LUIS RUSSELL 1929-30',
  'ragtime, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5rYJ6gHtPRW8vToYXWXURC',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:50',
  'LOUIS ARMSTRONG AND HIS ORCHESTRA',
  'MAHOGANY HALL BLUES STOMP',
  'LOUIS IN LOS ANGELES',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '10:51',
  'LOUIS ARMSTRONG AND HIS ORCHESTRA',
  'I''VE GOT MY FINGERS CROSSED',
  'LOUIS ARMSTRONG AND HIS ORCHESTRA 1934-36',
  'enka, kayōkyoku, jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6mGL7AeMc7TJNiaowUkhUi',
  'found',
  73,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
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
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '11:22',
  'Dr. John',
  'Tangerine',
  'Mercernary',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1qe7mFhEGIFvcTXwqntTf1',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '11:27',
  'Lil Rascals Brass Band',
  'For The Love Of Money',
  'Buck It Like A Horse',
  'brass band, new orleans bounce, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1mGk0KnGHJ0bQ0b5k3Fbna',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '11:40',
  'Mama Digdown`s Brass Band',
  'Gimme My Money Back',
  'Slippery 7',
  'brass band',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/43IaBgnoKP0ukqfmGz71BJ',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '11:47',
  'Bobby Charles',
  'All The Money',
  'Bobby Charles',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/44ENmWvaX1fwj2dpspTjeC',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '11:52',
  'Anders Osborne',
  'Greasy Money',
  NULL,
  'modern blues, jam band, blues rock',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0gxL9fRRxCDquNPbaXv5FI',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:07',
  'Fats Domino',
  'I Spent All My Money Loving You',
  'Alive And Kickin`',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:11',
  'Tommy Ridgley',
  'I Want Some Money',
  'She Turns Me On',
  'new orleans bounce, northern soul, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7F5hu46rIl6IHCIbBkj8i1',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:24',
  'Meters',
  'Little Old Money Maker',
  'Funkify Your Life- The Meters An',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2hHgXUYNStutg4iUgm9SP7',
  'found',
  73.9,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:27',
  'Creole String Beans',
  'Let The Money Drop',
  'Golden Crown',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2zMmwQeOP6yk7MDDv26KMa',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:37',
  'Ted Hefko And The Thousandaires',
  'Ten Dollar Hat',
  'Gas Station Guru',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2RzTQOGIPd4pK3LQW4efHk',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:42',
  'ray charles',
  'greenbacks',
  NULL,
  'soul, soul blues, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1oUcpCvpLemOfxtwtoMykL',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:54',
  'Louis Jordan',
  'A Dollar Down',
  'The Aladdin X And Vik Recordings',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '12:57',
  'Aaron Neville',
  'Money Honey',
  'My True Story',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4b1IrBAcz8sGf0Cjd43rjr',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:18',
  'Marcia Ball',
  'Mobile',
  'Gatorhythms',
  'zydeco, cajun, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/162OoNpqclgcvEKCulu3jF',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:22',
  'Jon Cleary',
  'Viva La Money',
  'Occapella!',
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1xAWrJ75IyaEPBxYSYurYZ',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:24',
  'Little Freddie King',
  'Pocket Full of Money',
  'Chasing Tha Blues',
  'blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6UCzeUkzBaLqgCoOalpANz',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:35',
  'Dr. John',
  'Money (That`s What I Want)',
  'Television',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1iedUraP6XpxaFszWLeBKd',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:38',
  'Louis Armstrong',
  'Money Blues',
  'With Fletcher Henderson Vol 2',
  'big band, swing music, ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6kshXjZiDTaVlWUUNAXUBe',
  'found',
  73.7,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:46',
  'Jay McShann',
  'Drunk, Broke And Hungry',
  'Piano Playhouse',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:49',
  'Bobby Charles',
  'Nickles, Dimes and Dollars',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7myn8k1GfsuvzZqf1ZTfWQ',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '13:54',
  'the radiators',
  'party til the money runs out',
  NULL,
  'jam band, cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0BWaXZzAWCFqHn6DEBSi3c',
  'found',
  92,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '14:00',
  'Dr. John',
  'Thank You (Falletin Me Be Mice E',
  'Television',
  'cajun, zydeco',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4YoBBHvAQx6Hao6aKGUikL',
  'found',
  90,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '14:04',
  'John Sinclair, Mark Stone, Armand StMartin',
  'Crossroad Blues',
  'LIVE ON WWOZ - Jam Session',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '14:06',
  'Big Daddy O''',
  'Got No Blues Today',
  'LIVE ON WWOZ',
  'blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5Bn45xjNWka1rT8yX82Sas',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '16:17',
  'red garland',
  'birks'' works',
  'soul junction',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1pPZFw5d0Y95WNgQXMxUZN',
  'found',
  78.4,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '16:39',
  'dee dee bridgewater',
  'all blues',
  'live in paris',
  'vocal jazz, french jazz, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1s6KkgOGO663Nb8htsqOx7',
  'found',
  88,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '16:41',
  'duke ellington',
  'intimacy of the blues',
  'the duke ellington small bands',
  'jazz, big band, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7q11Vdkh86HGPLUzXfMFB5',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '16:55',
  'pharoah sanders',
  'you''ve got to have freedom',
  'journey to the one',
  'free jazz, ambient jazz, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1v6w5EA8iNF0Bvqdwt4npI',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '17:12',
  'lou donaldson',
  'the truth',
  'sunny side up',
  'hard bop, jazz, soul jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4BNL2dokKzQ6wO6sNUNS9X',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '17:14',
  'gene ammons',
  'the jungle boss',
  'the boss is back',
  'jazz, hard bop, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7Cbn1CiPoI7TdsjGGrVw0h',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '17:15',
  'coleman hawkins',
  'squeeze me',
  'back in bean''s bag',
  'jazz, jazz ballads, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2XfnpOIOui5DE6IXjihY0R',
  'found',
  75.6,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '17:53',
  'miles davis',
  'milestones',
  'milestones',
  'bebop, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1tBgP6ajgs4s8nLJVcCFdV',
  'found',
  72.6,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '17:55',
  'miles davis/gil evans',
  'concierto de aranjuez',
  'sketches of spain',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/75eQChDaY1ryhC1XGkVws0',
  'found',
  84.8,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '18:09',
  'ella fitzgerald and louis armstrong',
  'stompin'' at the savoy',
  'ella and louis again',
  'jazz, vocal jazz, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4Vlx6e5XTN3aQ9MjUF1p6q',
  'found',
  91.6,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '18:14',
  'les mccann and eddie harris',
  'kathleen''s theme',
  'swiss movement',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '18:30',
  'ahmad jamal',
  'poinciana',
  'but not for me',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4lyupu0V7V9CoKhH52sfS8',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '18:31',
  'willie bobo',
  'fried neckbones and some home fries',
  'finest hour',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '18:49',
  'clark terry',
  'mumbles',
  NULL,
  'hard bop, latin jazz, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2Ln2iuMXAcDMuT3t1ttehs',
  'found',
  80.5,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '18:52',
  'ray bryant',
  'little susie',
  'little susie',
  'hard bop, jazz, afro-cuban jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6KrPPZ07tAov6R7UzqJsEj',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
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
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:08',
  'Dave Bartholomew',
  'Jax Beer Boogie',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:08',
  'Soul Creole',
  'Trois rangs dub',
  'Single',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7fXLuuwv8fVJSVUNzrUl8W',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:15',
  'Clifton Chenier',
  'Drifting Blues',
  'King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6LamocRDxnnuXS1UaOVUHw',
  'found',
  89.8,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:17',
  'Clifton Chenier',
  'You Can''t Sit Down',
  'Single',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6eoGc8hKnRk2Fww8iiVR8Z',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:22',
  'Sir Douglas Quintet',
  'She''s About A Mover',
  NULL,
  'tejano, country rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3WOQyDgWccVsC7W5I0pkcy',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:22',
  'Tommy McClain',
  'somebody',
  'I Ran Down Every Dream',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:26',
  'Tony Joe White',
  'Even Trolls Love Rock N Roll',
  'Live From Austin Texas',
  'blues, blues rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1qvLvxRv5zSDJCXUqgIRJR',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:31',
  'King Louie One Man Band',
  'Headin For The Big City Lights',
  'Jesus Loves My One Man Band',
  'garage rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1HilMyRXCyNgeOjFn4iGFn',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:36',
  'Texas Tornados',
  'Who Were You Thinkin Of',
  NULL,
  'tejano, latin country, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/19WnP6fC16MWHXRTFm8SuB',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:40',
  'Sir Douglas Quintet',
  '(Is Anybody Goin'' To) San Antone',
  'Live From Austin Texas',
  'tejano, country rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2SwZ0mqrr21DSSE3GnVUfS',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:42',
  'Doug Sahm and Band',
  'Me and Paul',
  'Doug Sahm and Band',
  'tejano, outlaw country, country rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/16Q9eoVd6wXwjnuwfpRQTq',
  'found',
  75.7,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:46',
  'Doug Sahm',
  'Too Many Docile Minds',
  'Rough Edges',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:49',
  'Sir Douglas Quintet',
  'The Rains Came',
  'Sir Douglas Quintet Live',
  'tejano, country rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0Bgq0I6dY9g0X1pzc2BoFP',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '22:52',
  'The Beatles',
  'Rain',
  'Past Masters',
  'classic rock, psychedelic rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1tKIjoQcUf1uR9amQEo3wk',
  'found',
  80.9,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '23:18',
  'Austin Pitre',
  'Don''t Shake My Tree',
  NULL,
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0u6jE2ffDjbdlR4xpzjmuS',
  'found',
  72.2,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '23:18',
  'Esther Rose',
  'Jump Down Baby',
  NULL,
  'alt country, americana',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/5WGiqHm7fco7sBzlPHIBUh',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '23:22',
  'Country Joe and the Fish',
  'I Feel Like I''m fixin'' To Die Rag',
  NULL,
  'psychedelic rock, acid rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/696VULlD2aRBuUtAGJ5tm4',
  'found',
  83.7,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-11',
  '23:25',
  'Country Joe and the Fish',
  'Superbird',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-12';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:08',
  'Nappy Nina',
  'Omakase (ft. Swarvy, Stas THEE Boss)',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:09',
  'Demplz',
  '96 Impala',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:11',
  '504icygrl',
  'Sesh Baddies',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:15',
  'Jill Schott',
  'Liftin'' Me Up',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:16',
  'Oshun',
  'Solar Plexus',
  NULL,
  'alternative r&b',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/1XVYz91S2ezXuvckxIo5BE',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:20',
  '7een',
  'Karmelo',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/7jKp1NXtB2dPaHpsZt4Zyz',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:23',
  'Kelly Moonstone',
  'Day 1',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:27',
  '$leazy EX',
  'Give It To Me',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:27',
  'Flying Lotus, Dawn Richard',
  'let Me Cook',
  NULL,
  'idm, experimental hip hop, nu jazz',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/6aU3cf7zDyZlfdiFNYeRNQ',
  'found',
  100,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:33',
  'Liv.e',
  'lesson from my mistakes....but i lost your number',
  NULL,
  'alternative r&b, experimental hip hop, neo soul',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/2TWARt7BPHQiyhuet7JxFU',
  'found',
  94.4,
  '2026-03-12 06:06:46'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:35',
  'GENA',
  'TDG',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 09:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:39',
  'Teedra Moses',
  'Be Your Girlfriend x Luxurious',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 09:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:41',
  'ILL CAMILL, Sir',
  'Found It',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 09:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:49',
  'Layfullstop',
  'Receipts',
  NULL,
  'uk r&b',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/3kZIgZzN71mvbzRY19dCXQ',
  'found',
  100,
  '2026-03-12 09:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:50',
  'Fiyah Like Ayanna',
  'Dropping Jewels',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-12 09:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '00:54',
  'Rubii',
  'Jealousy.',
  NULL,
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/0uU6wpqMrSe8SuIAJNIje9',
  'found',
  100,
  '2026-03-12 09:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
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
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '06:14',
  'Sahib Shihab',
  'Campi''s Idea',
  'Summer Dawn',
  'hard bop, bebop, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/32oXx9nxYYqm3p6GR0j0qf',
  'found',
  98,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '06:29',
  'Cal Tjader',
  'Black Orchid',
  'Breeze From The East',
  'latin jazz, afro-cuban jazz, exotica',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1WycfwDZxgNuRUAPmIK0op',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '06:37',
  'Ahmad Jamal',
  'Tranquility',
  'Tranquility',
  'jazz, cool jazz, hard bop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/090xZH9L1iqS6i97xyA3hQ',
  'found',
  98,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '06:38',
  'Duke Ellington',
  'Money Jungle',
  'Money Jungle',
  'jazz, big band, swing music',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/4p8zO20vjE54GCkIq630KD',
  'found',
  86.7,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '06:57',
  'Thelonious Monk',
  'Epistrophy',
  'Bremen 1965',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0wum4PRBdmUBsPvoF26A8g',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '07:18',
  'Don Ellis',
  '33 222 1 222',
  'Don Ellis Live at Monterey',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '07:38',
  'jackie mcclean',
  'old gospel',
  'new and old gospel',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '07:39',
  'Ted Curson',
  'Elephant Walk',
  'The New Thing & The Blue Thing',
  'hard bop, experimental jazz, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2G9aiW7a3Yw2LDO0jFLkwT',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '07:59',
  'Golden Arm Trio',
  'Silverware',
  'The Golden Arm Trio',
  'avant-garde',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5TimNxRqQavyU5nv7P1Q1Z',
  'found',
  75.4,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '08:12',
  'Larry Young',
  'The Cradle',
  'Heaven On Earth',
  'hard bop, jazz, soul jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/65mowrbVimla4SwSYF2aLJ',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '08:16',
  'Peter Harris',
  'Looky Here',
  'The Jackal',
  'renaissance, baroque',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3n9co3RxEAjuL3D4ttLlH6',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '08:21',
  'willie bobo',
  'fried neckbones and some home fries',
  'finest hour',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '11:08',
  'Dr. John',
  'Sweet Home New Orleans',
  'The Best Of The Parlophone Years',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6qFUn74CAPq9P9syPi3M5v',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '11:09',
  'billy preston and earl palmer',
  'greazee',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '11:23',
  'Earl King',
  'Love Can Save The World',
  'Hard River To Cross',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '11:29',
  'King Floyd',
  'I Feel Like Dynamite',
  'Choice Cuts',
  'classic soul, motown',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3icEt2TCIsw0kPZvGRyA5K',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '11:41',
  'Galactic',
  'You Don`t Know',
  'Ya-Ka-May',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '11:46',
  'Galactic',
  'Does It Really Make A Difference',
  'Into The Deep',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0tySZ0V0fn3OOeES0r3BXP',
  'found',
  91.7,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '12:00',
  'Irma Thomas',
  'Love is the Foundation',
  'Love is the Foundation',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '12:15',
  'louie prima',
  'oh marie',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '12:17',
  'Cubanismo',
  'It Do Me Good',
  'Mardi Gras Mambo',
  'latin jazz, afro-cuban jazz, son cubano',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/24oNKiH1IDXb5hx47SqWOs',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '12:29',
  'john boutte',
  'Louisiana 1927',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '12:42',
  'deacon john and tricia boutte',
  'let the good times roll',
  'deacon john''s jump blues',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '12:55',
  'nathan and the zydeco cha-cha''s',
  'let''s go!',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6LubEDE0kwqVRsIcYPSpSr',
  'found',
  82,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '12:58',
  'Rolling Stones/ Steve Riley',
  'Zydeco Sont Pas Sales',
  'A Tribute To The King Of Zydeco',
  'classic rock, rock, cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6t4QKiYbyoLfsa0NrOBUSr',
  'found',
  76.2,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:12',
  'jessie hill',
  'whip it on me',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7AZSMzpxHjKaQpg117FWcQ',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:13',
  'james andrews',
  'treme shuffle',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1VHtFxOUA5asfar9Cd9lMu',
  'found',
  90.7,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:15',
  'jessie hill',
  'naturally',
  'naturally',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:28',
  'Jon Batiste',
  'We Are (Montmartre Remix)',
  'We Are',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/24FTItPpegSlDEz8U6ni3N',
  'found',
  74.8,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:32',
  'Jon Cleary',
  'Tuburculucas and the Sinus Blues',
  'So Swell',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:35',
  'champion jack dupree',
  'pigfoot and a bottle of beer',
  NULL,
  'classic blues, blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3dnd32QeL8H4IF7kgdvxgq',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:42',
  'the iguanas',
  'oye mi cumbia',
  NULL,
  'garage rock, cajun, proto-punk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7KjkAtdVN8ed1JGnoRnTBY',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '13:56',
  'CASSANDRA WILSON',
  'WATERS OF MARCH',
  'BELLY OF THE SUN',
  'vocal jazz, jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/74lmvssWZ5mlz157oFIqEZ',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
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
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '14:04',
  'Dr. John',
  'Food For Thot',
  'Creole Moon',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0pS0ArJxesOWbEbRBDKKBh',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '14:18',
  'OHIO PLAYERS',
  'Fire',
  'FIRE',
  'funk, soul, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/06xkqQuJzl1ddeK48jG6qa',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '14:22',
  'Johnny Guitar Watson',
  'A Real Mother For Ya',
  'The Best Of The Funk Years',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/27QTVCKEfq41PjPKQVa7vW',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '14:32',
  'ASHORD & SIMPSON',
  'DON''T COST YOU NOTHING',
  'SEND IT',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '14:37',
  'Earth, Wind And Fire',
  'On Your Face',
  'Spirit',
  'funk, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1364cfVtDUV74zIeMl6ydQ',
  'found',
  89.5,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '14:46',
  'Stevie Wonder',
  'I Wish',
  'Songs In The Key Of Life [Disc',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/687YZan9Gol1UVvbpUSO6Y',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '15:06',
  'STEVIE WONDER',
  'DO I DO',
  'THE DEFINITIVE COLLECTION',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4P91jW5QmEkhoLgdMujp82',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '15:10',
  'YARBROUGH & PEOPLES',
  'Don''t Stop The Music',
  'THETWO OF US',
  'post-disco, funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7C7TiKlyYsVGNdvNJR1QeS',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '15:20',
  'labelle',
  'LADY MARMALADE',
  'NIGHTBIRDS',
  'disco, philly soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/17VWTx7LD7liGlpnlGhUbn',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '15:25',
  'RICK JAMES',
  'BUSTIN'' OUT (ON FUNK)',
  'THE BEST OF RICK JAMES',
  'funk, motown, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0wYo8gcZCREyPoWOv0FzCX',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '15:42',
  'STEVIE WONDER',
  'LOVE LIGHT IN FLIGHT',
  'THE WOMAN IN RED ( SOUND TRACK )',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5TKz8J4Noz4nZSFIOpHpMm',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '15:50',
  'THE COMMODORES',
  'LADY (YOU BRING ME UP)',
  'IN THE POCKET',
  'motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5CLozJK4pKWoPpFf2Z1Mye',
  'found',
  73.6,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '15:52',
  'THE SPINNERS',
  'It''s A Shame',
  '2ND TIME AROUND',
  'philly soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1l1YTy9nJ0trwhsCGcimly',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '16:01',
  'Walter Wolfman Washington',
  'Are You The Lady',
  'My Future Is My Past',
  'soul blues, blues',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/7MlDeZXQUR1kwea0gF2vlE',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '16:06',
  'Johnny Adams',
  'One Foot In The Blues',
  'One Foot In The Blues',
  'soul blues, blues',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/3ShhKUWOeBTsVLaCuzkBRX',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '16:33',
  'Jamil Sharif',
  'New Orleans 5/4 Step N''',
  'New Orleans 5/4 Step N''',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '16:35',
  'The Marsalis Family',
  'Syndrome',
  'Music Redeems',
  'brass band, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4dDsI8FAm4RolLBRdQIfZO',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '17:04',
  'Karen Shiraishi',
  'Now I Know',
  NULL,
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/62Ph3y6AcqiL8v7fmtILY9',
  'found',
  74.2,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '18:49',
  'john coltrane',
  'giant steps',
  'giant steps',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0gCKwy3YmhKc9rzjYjTQKx',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
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
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:06',
  'sister rosetta tharpe',
  'when the saints,.''',
  NULL,
  'traditional gospel, blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/53AQi86FYZYGm3cWAAxRCy',
  'found',
  81.7,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:10',
  'Link Wray',
  'Fire and Brimstone',
  NULL,
  'surf rock, rockabilly, proto-punk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3bEECCaIejir3Amq4iTpCg',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:14',
  'bobby hutcherson and harold land',
  'goin down south',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:14',
  'jeanne and the darlings',
  'soul girl',
  NULL,
  'classic soul, soul, northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3TG3hZnDvuFz4Dpp3plPMp',
  'found',
  89.5,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:22',
  'rl burnside',
  'fireman ring the bell',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:25',
  'lyn collins',
  'fly me to the moon..',
  NULL,
  'funk, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0WKkPALALLjMjA9sp6TFys',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:28',
  'macbeth the great',
  'matrimony',
  NULL,
  'calypso',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1bb2Zyik8eLt7MYVsjHy1L',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:31',
  'john hammond',
  'jockey full of bourbon',
  NULL,
  'blues, country blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/444K26ZZpRg8kFlVK0vLZ1',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:34',
  'david fathead newman and ray charles',
  'tin tin deo.',
  NULL,
  'hard bop, bebop, soul jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1RmFzOaj3pw7gnbIbvJtNb',
  'found',
  93,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:40',
  'Lonnie Johnson',
  'Tomorrow Night',
  'Rhythm & Blues 1945-1951 - Music Sampler Vol. 1',
  'blues, country blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2eXgdiB8q1M5hWR1BOdSVk',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:44',
  'LEE DORSEY',
  'EVERYTHING I DO GOHN BE FUNKY',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4VTf5dPyBntcYFwW9b3fto',
  'found',
  89.3,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:47',
  'odetta',
  'hit or miss',
  NULL,
  'folk, traditional folk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4YJ1KDI6tUSapyD6XTAg8i',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:50',
  'little walter',
  'dead presidents',
  NULL,
  'blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7mf2HpYaq0uLSQKbiqILO1',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '19:53',
  'al casey',
  'buck jumpin''',
  NULL,
  'surf rock, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/68Gis873b7QKPdtufqlNhv',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:00',
  'jessie mae hemphill',
  'she-wolf',
  NULL,
  'country blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3c0LKucNXSYtmbuHUtiNPf',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:04',
  'jon batiste',
  'petrichor.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7jmeenh8fzx9gxhJfMq2r2',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:11',
  'etta james',
  'cigarettes and coffee',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:12',
  'john holt',
  'pledging my love',
  NULL,
  'rocksteady, reggae, lovers rock',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7idCY1kEQwOjSVbgQQ4XPf',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:14',
  'al casey',
  'casey''s blues',
  NULL,
  'surf rock, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0WtUigRZCipki9Etye7BEV',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:23',
  'baby huey',
  'california dreamin''.',
  NULL,
  'soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1HzIPQceSx4GYLUyag9EPm',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:26',
  'nancy wilson',
  'i''m always drunk in san francisco',
  NULL,
  'vocal jazz, jazz, jazz ballads',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/75v6Iil3NwEyac1y3EBKi3',
  'found',
  86.4,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:28',
  'jeanette jones',
  'i want action',
  NULL,
  'northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2h3vC1gFL6gKudxi5N6pq9',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:31',
  'phil flowers',
  'i saw her standing there',
  NULL,
  'afro soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1q45rRGc26lIzzgvblnG79',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:32',
  'herbie mann',
  'hold on i''m coming..',
  NULL,
  'afro-cuban jazz, latin jazz, jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0FGUAf9SNXetna5y1mOS2g',
  'found',
  98,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:43',
  'snooks eaglin',
  'careless love.,',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2WzYjNRwrQgafmPE7UcjAC',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:45',
  'the staple singers',
  'this old town',
  NULL,
  'soul, motown, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5967WkJ51788SDyP3hSWAL',
  'found',
  86.8,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:49',
  'allen toussaint',
  'country john.',
  NULL,
  'cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5cmT2hwMDGzNEeLq4nIp0B',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:52',
  'glen david andrews',
  'southern nights.',
  NULL,
  'brass band, cajun, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1M7VneytlaaGq0arJhXcZ4',
  'found',
  87,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '20:55',
  'herbie mann',
  'chain of fools',
  NULL,
  'afro-cuban jazz, latin jazz, jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4cPIiDiSDGSvVg7f83zAM3',
  'found',
  98,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:12',
  'willie mitchell',
  'take five.',
  NULL,
  'northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3WsmTWqWYK7HpPDQl5jdMD',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:14',
  'little willie john',
  'i''m shakin''.',
  NULL,
  'doo-wop, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3ASOSLrBDFsmrGhnSPm2Fd',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:17',
  'Young Holt Unlimited',
  'Ain''t There Something Money Can''t Buy',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/01onbPmOpgmydoO1X0UTmh',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:21',
  'irma thomas',
  'fancy.',
  NULL,
  'classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1jIXrAQAoBWR7K4s6eyeUn',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:24',
  'dirty dozen brass band',
  'use your brain',
  NULL,
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1eikL7DDAJlXCjdWJcYx66',
  'found',
  90.3,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:31',
  'dr john',
  'ramblin man',
  NULL,
  'cajun, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4u4sDDaxyyAg2bStEKulSX',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:35',
  'johnny jenkins',
  'i walk on gilded splinters',
  NULL,
  'blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4QZazZRZRj9NlJzdXgSv6W',
  'found',
  89.9,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:40',
  'bobbie gentry',
  'sermon',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7ybf7v2PTsGt8kPQpgdJau',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:42',
  'mahalia jackson',
  'walk in jerusalem',
  NULL,
  'traditional gospel, gospel, christmas',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6lDmadVY9O7ae35kWMdk8m',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:45',
  'dirty dozen brass band',
  'hannibal.',
  NULL,
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/30YenR6QjqkqojUqu53Oh0',
  'found',
  90.3,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:52',
  'little freddie king',
  'tough frog to swallow',
  'YOU MAKE MY NIGHT',
  'blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6UFFAZohSJh8Ayt1BXboer',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '21:54',
  'bonnie raitt',
  'thank you.',
  NULL,
  'blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2M5yNChnDFvsaf0IDRCLjq',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:06',
  'Robert Glasper, Esperanza Spalding, Q-Tip',
  'Why We Speak [ft. Q-Tip, Esperanza Spalding]',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:13',
  'Fela Kuti & The Africa ''70',
  'Let''s Start (with Ginger Baker) [Live]',
  'Live!',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:16',
  'Hurray for the Riff Raff',
  'Rhododendron (Live at Old Town)',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:17',
  'Gary Clark Jr.',
  'When My Train Pulls In (Live) [Solo Acoustic]',
  'The Bright Lights - EP',
  'modern blues, blues rock, blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7wHFwwpg9sOEh5fcrI69eP',
  'found',
  98,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:27',
  'Jackie Venson',
  'Young',
  NULL,
  'blues, modern blues, blues rock',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4hrg19tFJVzRan0S1jCEMA',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:31',
  'Furry Lewis',
  'Shake ''em On Down',
  NULL,
  'country blues, blues, classic blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2hEM8FtSgXPrGrPcuSrFW7',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:34',
  'Furry Lewis',
  'Good Looking Girl Blues',
  '00d - Good Looking Girl Blues 10',
  'country blues, blues, classic blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/50l4Bra3HqlFHPWe46G2VM',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:37',
  'Mississippi John Hurt',
  'Avalon Blues',
  'D.C. Blues: The Library of Congress Recordings, Vol. 1',
  'country blues, blues, classic blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4scvylI3GR9z1yB0DE2uKM',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:41',
  'Algia Mae Hinton',
  'Going Down This Road',
  'Honey Babe',
  'country blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0vecst83OqgS7WpUzUGtyn',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:43',
  'Jack Kelly & His South Memphis Jug Band',
  'Ko-Ko-Mo Blues',
  'Complete Recorded Works: Jack Kelly & His Memphis Jug Band',
  'country blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/22e9F9UogbBTDe6sDjONAS',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:48',
  'R.L. Burnside',
  'Glory Be',
  'A Bothered Mind',
  'blues, country blues, modern blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2XTHsWwgPQTziAjqn9OiGN',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:53',
  'R.L. Burnside',
  'Bird Without A Feather',
  'A Bothered Mind',
  'blues, country blues, modern blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6UUh33ERmUnvvpRwqJgYAj',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '22:56',
  'Lucinda Williams',
  'So Much Trouble In The World (feat. Mavis Staples)',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:01',
  'Stevie Wonder',
  'Have a Talk With God',
  NULL,
  'motown, classic soul, soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5grvrZh5z2jsPjCOy1d8fP',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:10',
  'Piano Red',
  'Mister Moonlight',
  'Dr. Feelgood : the Doctor''s In Vol. 4',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:11',
  'Nina Simone',
  'Take Care Of Business',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2YwjSPeznyCvkUYvqKbXa9',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:13',
  'Buddy Guy',
  'Tramp',
  'Can`t Quit The Blues (CD03)',
  'blues, classic blues, blues rock',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6hK7Qu97YjYHfmzQzDKcEG',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:21',
  'Big Bill Broonzy',
  'John Henry',
  'The Blues',
  'blues, country blues, classic blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1BskJp3altXN3zjqSb59ZN',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:24',
  'Alex Chilton',
  'Tramp',
  'Alex Chilton: Live in London: Encore Edition',
  'power pop, proto-punk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6hdWy6rydOrDpteS70vsw3',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:29',
  'Kei Slaughter',
  'Strange Addiction',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6yYHkAg82XMOPwzZk7gfnR',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:29',
  'Valerie June',
  'Wanna Be On Your Mind',
  'Pushin'' Against a Stone',
  'folk, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0sEkBF6SBgYoHTpJ7wfaXs',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:32',
  'Valerie June',
  'Pushin'' Against a Stone',
  'Pushin'' Against a Stone',
  'folk, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0DhXt0ky95iGN2uhP41Nv3',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:40',
  'Booker T. & the MG''s',
  'Lady Madonna',
  'Stax Does the Beatles',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/14GOMshHsxjK9ydgMDGsXy',
  'found',
  82,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:42',
  'Bobby',
  'Two Steps from the Blues',
  'Two Steps from the Blues (Bonus Tracks)',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:44',
  'Meters',
  'Down By The River',
  'Kickback',
  'funk, soul, jazz funk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4VaU9yNVat5X3C4igPvCkQ',
  'found',
  72.4,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:55',
  'Sweet Pease Spivey',
  'Double Dozens ( You Dirty No Gooder)',
  'Super Sisters',
  'ragtime',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1yApUMT6zBWN7dEsogndD0',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-12',
  '23:57',
  'Lil Johnson',
  'Meat Balls',
  'Super Sisters',
  'blues, classic blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4UrSetqx1on1SK1oY0DAIq',
  'found',
  100,
  '2026-03-13 06:24:34'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-13';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:00',
  'Maggie Antone',
  'High Standards',
  'Rhinestoned',
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/66A7J1dZ2mKWXB6EODRZaH',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:03',
  'Victoria Spivey',
  'Let`s Ride Tonight',
  'Woman Blues',
  'classic blues, blues, ragtime',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/6ldqO2RQwprgMW7BvDez2T',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:05',
  'Wanda Jackson',
  'Shakin` All Over',
  'The Party Ain`t Over',
  'rockabilly, psychobilly, rock and roll',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/5Vpk3YQrMIvCEwRy8C2IYK',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:09',
  'Valerie June',
  'Workin` Woman Blues',
  'Pushin` Against A Stone',
  'folk, americana',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/58KQWfgO3DEu4kHlsmQEXz',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:12',
  'Tracy Nelson',
  'Living The Blues',
  'In The Here And Now',
  'modern blues, blues, classic blues',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4cMs1yEmGEZFfpQgS4s0lY',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:17',
  'Tedeschi, Susan',
  'Evidence',
  'Hope And Desire',
  'modern blues, blues, blues rock',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/1UDCFLS8MutgbQAVV6Jeg8',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:20',
  'Tasha Taylor',
  'Who''s Making Love',
  'Taylor Made',
  'blues, modern blues, blues rock',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/3qOVa2hXIKJMTResMoqf93',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:24',
  'Sugar Pie Desanto',
  'Matter of Time',
  'Refined Sugar',
  'northern soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/13wx2rE3R6K3MhyfHiBSG3',
  'found',
  100,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '00:27',
  'Sweet Claudette`s',
  'Best Damn Loving',
  'That Man`s Got To Go',
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-13 06:24:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '06:28',
  'Buddy Rich & Gene Krupa',
  'King Porter Stomp',
  'Burnin'' Beat',
  'big band, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7l8eTy1TqnF6XzmIOpJbja',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '06:28',
  'Miles Davis',
  'Miles Runs teh Voodoo',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '06:29',
  'Anika Nilles',
  'Float',
  'False Truth',
  'jazz fusion, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/6KJ5KDdEsTacVaWwX8044W',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '06:38',
  'The Jazz Defenders',
  'Snakebite Playfight',
  'Memory in Motion',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7K3HYSwHUvmBqHsXFoCVMQ',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '06:55',
  'Tony Allen',
  'Moanin''',
  'A Tribute To Art Blakey and the Jazz Messengers - EP',
  'afrobeat',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1uoW1LTqEnlHWDUol3PBse',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '06:59',
  'Carl Allen',
  'Roy''s Joy',
  'Tippin''',
  'jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5861J01TCgBevxdppsTuNC',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '07:09',
  'GoGo Penguin',
  'Friday Film Special',
  'From the North - GoGo Penguin Live in Manchester',
  'nu jazz, ambient jazz, experimental jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2U0wADexY4yIqCPXLYvUn2',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '07:15',
  'Nanami Haruta',
  'Easy Money',
  'The Vibe',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '07:27',
  'New Orleans Nightcrawlers',
  'Para Donde Vas (Featuring Yusa)',
  'Too Much To Hold',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '08:06',
  'Art Blakey & The Jazz Messengers',
  'Sweet ''N'' Sour',
  'Caravan',
  'hard bop, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/6XD49x18fDYBUS1nPOkggY',
  'found',
  84,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '08:06',
  'Poncho Sanchez',
  'Giant Steps',
  'Trane''s Delight',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7cbBXPvxPNYWm7lQiu7GKt',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '08:07',
  'Lee Morgan',
  'The Sidewinder',
  'The Sidewinder',
  'hard bop, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0jGh2myWgeSSuj0bXeYZn0',
  'found',
  98,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '08:24',
  'Al Foster',
  'Amsterdam Blues',
  'Live At Smoke',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '08:24',
  'Trombone Shorty & The New Breed Brass Band',
  'Tambourine and Fan',
  'secondline sunday',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:04',
  'Preservation Hall Jazz Band',
  'Hindustan',
  'Preservation Hall Jazz Band Live',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3BuCpbnWDLs38gTXARuedB',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:16',
  'Louis Armstrong',
  'All That Meat And No Potatoes',
  'Satch Plays Fats - A Tribute To',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4rfxu3vOUWRaOx8YwUEpbi',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:21',
  'Fats Waller',
  'Sweet Sue, Just You',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0vq2rpC3M1D896W77nMjQ2',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:29',
  'George Lewis',
  'Down By The Riverside',
  'Ice Cream',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1BHMpKJngIU4iWpzZIj7hm',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:32',
  'Fats Waller And His Rhythm',
  'Spreadin` Rhythm Around',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:35',
  'George Lewis',
  'Red Wing',
  'Ice Cream',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2rNgU7FKDhDFdPuFDx1l3K',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:45',
  'Albert Burbank with Kid Ory & hi',
  'Fidgety Feet',
  'Sounds of New Orleans Vol. 3',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '09:50',
  'Kid Ory And His Creole Jazzband',
  'Eh, La Bas',
  'Sounds Of New Orleans Vol. 9',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0si148sND8yPkFKAvs7SAv',
  'found',
  79.9,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:00',
  'Sweet Emma Barrett',
  'Just A Little While To Stay Here',
  'New Orleans- The Living Legends',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0pqpViC1UXY5Ny5re5W6BK',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:04',
  'Sweet Emma',
  'Yes Sir, That`s My Baby',
  'Sweet Emma The Bell Gal At Dixie',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:13',
  'Sidney Bechet',
  'I''ve Found a New Baby',
  NULL,
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:17',
  'Sidney Bechet',
  'Crazy Rhythm',
  'Jazz At Storyville',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5D3C37EYRLqYYPnygVYuJ6',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:28',
  'Lars Edegran',
  'It`s A Sin To Tell A Lie',
  'Lars Edegran Presents Lionel Fer',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:32',
  'Lars Edegran',
  'Shout Sister Shout',
  'Shout Sister Shout- Edegran Orch',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:35',
  'Lars Edegran',
  'Panama',
  'Shout Sister Shout- Edegran Orch',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:48',
  'Leroy Jones',
  'Armstrong Parade',
  'I''m Talkin'' Bout New Orleans',
  'brass band, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3rb3ouU4WMyAcE5U22XCiP',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '10:52',
  'Leroy Jones',
  'When My Dreamboat Comes Home',
  'Mo` Cream From The Crop',
  'brass band, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6hkPavPwg2nh4DkND4egec',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '11:01',
  'Colossus Brass Band',
  'Royal St. Parade',
  'Sing On',
  'brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7kfjo7hWrHKqkvo72XgHRR',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '11:20',
  'Big Freedia',
  'Celebration',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/723J8TT1MrywSg66aIqZio',
  'found',
  73.5,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '11:21',
  'Sean Ardoin',
  'LSU Keep On Movin',
  'LSU Keep On Movin',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '11:39',
  'Dirty Dozen Brass Band',
  'Ain''t Nothing But A Party',
  'Medicated Magic',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '11:57',
  'Irma Thomas',
  'You Can Have My Husband',
  'Irma Thomas Live!',
  'classic soul',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3s4M1MDsZjmTEcyPUQ5e8m',
  'found',
  93.8,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:00',
  'Irma Thomas',
  'Hip Shakin` Mama',
  'Irma Thomas Live!',
  'classic soul',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/78te6aZUcqgWZW881hh7h3',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:10',
  'Earl King',
  'Street Parade',
  'Street Parade',
  'classic blues, new orleans bounce, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:14',
  'Jon Cleary',
  'So Damn Good',
  'Jon Cleary And The Absolute Mons',
  'cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1t2KctU7G6O3CRLffn6cSg',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:21',
  'Trombone Shorty',
  'Tripped Out Slim',
  'Parking Lot Symphony',
  'brass band, jazz funk',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7b3ceiH1Cy03cR0GtlqgHV',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:24',
  'Trombone Shorty & The New Breed',
  'Good Time',
  'Second Line Sunday',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:33',
  'Big Chief Romeo Bougere, Dawn Ri',
  'I''m Feeling Good (Vocal)',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:37',
  'Donald Harrison, Dr. John',
  'Hu-Ta-Nay',
  'Indian Blues',
  'brass band, cajun, jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6SCRtuEGul7clJBeCy37hp',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:52',
  'james andrews/Trombone Shorty',
  'zulu king',
  '12 & Shorty',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5DLoXLKo3z4Lg46Vp84B14',
  'found',
  73,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '12:57',
  'Corey Ledet',
  'That Girl Wanna Dance',
  'Nothin'' But The Best',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1w1kMGvEVbTZutjMiHugt0',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '13:10',
  'Robin Barnes',
  'Hey Na',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '13:19',
  'Galactic',
  'Right On',
  'Into The Deep',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '13:23',
  'Jon Batiste',
  'Freedom',
  'We Are (Deluxe)',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2QOB5UiRKggr2j9uMD3GYK',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '13:33',
  'Original Pinettes Brass Band',
  'We Got The Music',
  'Finally',
  'brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7iEvK0V1mNMXHCZuLHoZtW',
  'found',
  90.4,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '13:54',
  'Meters',
  'Good Old Funky Music',
  'Funkify Your Life- The Meters An',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:00',
  'Dr. John',
  'Right Place, Wrong Time',
  'Mos` Scocious- Anthology (CD02)',
  'cajun, zydeco',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0I2ELF6uHlL4ABu9aFiou7',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:05',
  'rl BURNSIDE',
  'JUMPER ON THE LINE',
  'sound machine groove',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:09',
  'junior kimbrough',
  'feels so good #1',
  NULL,
  'blues, country blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7HQhevzEGXpA3a7kV2o724',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:13',
  'justin townes earle',
  'ain''t got no money',
  'saint of lost causes',
  'alt country, americana, bluegrass',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1JQ5tcSmqKM2RwU2E3LtI4',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:21',
  'wilson pickett',
  'i found a love',
  NULL,
  'motown, classic soul, soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/50zUfPpmT79h6NVo2OIxSg',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:21',
  'wood brothers',
  'satisfied',
  'kingdom in my mind',
  'bluegrass, newgrass, americana',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7qGjbHwQhuNM2GHcDBcssD',
  'found',
  86,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:29',
  'zion harmonizers',
  'this little light of mine',
  NULL,
  'brass band, traditional gospel, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3BCxZ8rnYudYQfOxM2KuZY',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:32',
  'rl boyce',
  'place called hell',
  NULL,
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:35',
  'warren haynes',
  'go down swinging',
  'million voices whisper',
  'southern rock, jam band, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2SCpklU7GsURUanTavO3nD',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '14:58',
  'todd snider',
  'turn me loose I''ll never be the same',
  'first agnostic church of hope and wonder',
  'alt country, americana, outlaw country',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4HCRyLQ2mt245PDjum01VU',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '15:09',
  'Tommy McClain',
  'somebody',
  'I Ran Down Every Dream',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '15:10',
  'tommy mcclain',
  'is anybody going to san antone',
  NULL,
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '15:20',
  'the sweet inspirations',
  'why am I treated so bad',
  NULL,
  'classic soul, soul, philly soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4V3KUwlCYLJXDhpWLIfYVp',
  'found',
  90.3,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '15:24',
  'shuggie otis',
  'baby i needed you',
  NULL,
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1yWjvaztVxbrJo68SOOgwM',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '15:37',
  'sharon jones and dap kings',
  'this land is your land',
  NULL,
  'retro soul, soul, funk',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3PiHGEbBLYuBPFdP9tihF0',
  'found',
  84.8,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '15:54',
  'richie havens',
  'going back to my roots',
  NULL,
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6PFsub5iIJwrBb8qBRqmiV',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:05',
  'Gregory Groover Jr',
  'Old Knew',
  'Old Knew',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:10',
  'Roderick Harper',
  'Look Into Your Eyes',
  'Confidence',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4nST0dQhCOZc1PRqXqMVkH',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:21',
  'Miles Davis',
  'I Thought About You',
  'Love Songs',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/35cVPYey7qARqHMRKn5fio',
  'found',
  91.6,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:26',
  'Eric Alexander',
  'Early Morning Stroll',
  'Like Sugar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/432n8eGB20ZQb4oT0IArwG',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:39',
  'Kermit Ruffins',
  'Song For My Father',
  'Livin'' The Treme Life',
  'brass band, cajun',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5i19UHS02oiAFq0zQOf08T',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:41',
  'Donald Harrison8:37',
  'Easy Living',
  'New York Cool Live at the Blue Note',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:48',
  'Nayo Jones',
  'Don''t Explain',
  'With Love',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/40qYpHlygIgfXiEJ7dBDza',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '16:52',
  'John Coltrane',
  'All Or Nothing At All',
  'Ballads',
  'jazz, jazz ballads, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/34awem0NGNdHpLkTt3t1vI',
  'found',
  83.2,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:02',
  'Clifford Brown & Max Roach',
  'Delilah',
  'Clifford Brown And Max Roach',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0Pb99v5cF2WuVAPURHCX8E',
  'found',
  98,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:11',
  'Monty Alexander',
  'Sly Mongoose',
  'Jamboree',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2dS6eSoDZwM6aPcBMO8VBq',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:14',
  'Delfeayo Marsalis',
  'Up & Down, Up & Down',
  'Sweet Thunder',
  'big band, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1qT0KDL7zAtuKjeb3kAhuG',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:19',
  'Brandon Sanders',
  'Soul Eyes',
  'Lasting Impression',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5BVYyDmIeBMcVPJHWRZZcT',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:23',
  'Nat Adderley Sextet',
  'Mozart-In',
  'In The Bag',
  'soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5qMFRc6U8tXVYW1QQCEtzs',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:40',
  'Cory Weeds Jerry Weldon',
  'Oh, Lady Be Good',
  'Cory Weeds Meets Jerry Weldon',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:41',
  'Jason Stewart',
  'Wailing Jane',
  'Cyclicality',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1p9RW6MQEHGg2SuzlfzNiG',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:48',
  'Kerry Politzer',
  'Here We Go Again',
  'Alternate Route',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '17:54',
  'Sam Pilnick''s Nonet Project',
  'Neon',
  'The Project',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:05',
  'Dave Stryker',
  'Dexterity',
  'Blue Fire The Van Gelder Session',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:08',
  'Tony Monaco',
  'Cars Trucks Buses',
  'The Definition Of Insanity',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:15',
  'Hank Crawford & Jimmy McGriff',
  'Caravan',
  'Road Tested',
  'soul jazz, hard bop, jazz funk',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1c2IDsDiS2qC8SEFKfioDR',
  'found',
  98,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:24',
  'Charles Earland',
  'Aquarius',
  'Black Talk',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1jtt5j3DoK8R9OEz2AEAOW',
  'found',
  78.4,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:39',
  'Ahmad Jamal',
  'I''ll Always Be with You',
  'Saturday Morning',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0pImeImuCN0zxzIK1TjeRD',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:47',
  'Terence Blanchard',
  'Chinatown',
  'Jazz In Flim',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:55',
  'Bobby Hutcherson',
  'Somewhere',
  'For Sentimental Reasons',
  'hard bop, jazz, free jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2BxUdIEwAy5xpOc70Zhyk3',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '18:57',
  'Bobby Hutcherson',
  'Little Angel',
  'Montara',
  'hard bop, jazz, free jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6s8w9lqpq1iUFL3eWQ9BIh',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:08',
  'rory gallagher',
  'I take what I want',
  NULL,
  'blues rock, blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4dPecRVM0vySL56BdDpBeb',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:11',
  'luther allison',
  'all the king''s men',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:18',
  'billy murray',
  'camptown races',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:27',
  'george hannah',
  'the ducks yas yas',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:29',
  'MISSISSIPPI MATILDA POWELL',
  'hard working woman',
  'FOUR WOMEN BLUES',
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:31',
  'country joe mcdonald',
  'feel like I''m fixin'' to die rag',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/11WZ9dAAscfEs8IB46iYm8',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:35',
  'louis armstrong',
  'Muskrat Ramble',
  NULL,
  'jazz, swing music, vocal jazz',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5f0n7lN5BD7dztEXiMOsoM',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:37',
  'sir douglas quintet',
  'mendocina',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:41',
  'leon russell & tedeschi trucks band',
  'feelin'' alright',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:48',
  'dirty deuce',
  'big ol'' sexy',
  NULL,
  'blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1WM3KEHOwEGnjGX3MacFiD',
  'found',
  84.2,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:54',
  'larkin poe & tyler bryant',
  'Mississippi',
  NULL,
  'blues rock, modern blues, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7I6sXnSLWoc3LEQisxG86Y',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '19:57',
  'cactus & dee snider',
  'Evil',
  NULL,
  'psychedelic rock, blues rock, acid rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1eyAMnRMzl5yvKvxrfQsPC',
  'found',
  78.4,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:03',
  'korla pandit',
  'STORMY WEATHER',
  NULL,
  'exotica',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4jkBCU4VbnyUYpzb0QDnJC',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:07',
  'mary flower',
  'Blues My Naughtie Sweetie Gives to Me',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:10',
  'bobby lounge',
  'take me to angola',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:17',
  'fun boy three',
  'the lunatics (have taken over the asylum)',
  NULL,
  'new wave, ska',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2wQXH5K99vjpx2hge3PdFH',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:20',
  'bonzo dog doo dah band',
  'big shot',
  NULL,
  'acid rock, baroque pop, garage rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6KhYiON7gnDxGST528zRa8',
  'found',
  75.7,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:24',
  'chuck e weiss',
  'extremely cool',
  NULL,
  'blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1rkD35e7Q7HhU4LuAQMQUA',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:28',
  'golden echoes',
  'packing a grip',
  NULL,
  'funk gospel',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4Uwac64NGTYThlKgnheSkB',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:34',
  'pink anderson',
  'travelin'' man',
  NULL,
  'country blues, blues, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4f2fvu1nyVxWBVTCtoZRds',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:40',
  'floyd council',
  'runaway man blues',
  NULL,
  'country blues, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/46V3hC3sNdisMrZZ2nYPmo',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:40',
  'pink floyd',
  'have a cigar',
  NULL,
  'progressive rock, psychedelic rock, classic rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3CmHvyZQQAGkKkTjTBFWN6',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:47',
  'Tiana Hux',
  'Nola Woman',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/62ugmsW2VTvwFWO76nh9Al',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:50',
  'lucinda williams',
  'bone of contention',
  NULL,
  'alt country, americana, outlaw country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6xmfYVJJPP2mI2a6Kjo5V6',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:54',
  'jerry reed',
  'rooster jones',
  NULL,
  'classic country, outlaw country, country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/24EJJpJQY497saAQSeS2v6',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '20:57',
  'andre williams',
  'I wanna be your favorite pair of pajamas',
  NULL,
  'northern soul',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6HqGavg4vVjDH0v6R3KBRf',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:05',
  'hank williams',
  'fool about you',
  NULL,
  'classic country, honky tonk, traditional country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1yaKKWXZXjESX3d9pympeW',
  'found',
  98,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:07',
  'hazmat modine',
  'broke my baby''s heart',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7CPzTj7Ntu1f9p3K2HCWlS',
  'found',
  98,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:13',
  'tom waits',
  'wrong side of the road',
  NULL,
  'singer-songwriter, southern gothic',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/082gz1OiigBCxN8N0e4l7s',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:19',
  'white stripes',
  'death letter',
  NULL,
  'garage rock, blues rock, rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/78ZPgT0agDUG95ByxpTNBP',
  'found',
  86,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:25',
  'honey island swamp band',
  'dark end of the bar',
  NULL,
  'cajun',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4lHtxHU2TrGyIBkBB96V85',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:28',
  'brother dege',
  'hard row to hoe',
  NULL,
  'southern gothic, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/79Qa7XfXYyisrdndY6yw4Q',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:33',
  'tony joe white',
  'they caught the devil',
  NULL,
  'blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3QFlKQHEuf4jafb91gmrdA',
  'found',
  77.6,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:34',
  'blood sweat & tears',
  'go down gamblin''',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6bWjr4qT4d58NuPEepedEr',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:35',
  'clarence ''gatemouth'' brown',
  'deep deep water',
  NULL,
  'blues, classic blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5KRZu88bT1mRJsFBqiS89E',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:35',
  'dr john',
  'craney crow',
  NULL,
  'cajun, zydeco',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5HDAsKtAXtU8VcExWZuytM',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:35',
  'jessie hill',
  'oogsey moo',
  NULL,
  'cajun',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2FScFwcI1QiAz6lzJFFSkc',
  'found',
  100,
  '2026-03-14 06:36:11'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-13',
  '21:35',
  'meters',
  'People Say',
  NULL,
  'funk, soul, jazz funk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/746CCMLis8SK64lLVXMF1d',
  'found',
  73.9,
  '2026-03-14 06:36:11'
);