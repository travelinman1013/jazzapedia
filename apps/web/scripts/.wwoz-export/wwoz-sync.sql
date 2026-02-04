-- WWOZ Database Export
-- Generated: 2026-02-04T02:34:14.630Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-03 10:30:11
-- Days: 3
-- Tracks: 475

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-01',
  'https://open.spotify.com/playlist/0QxrsPnIOswp6vf1rwIPSX',
  '{"totalTracks":158,"successfullyFound":98,"notFound":60,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-01 10:30:06',
  '2026-02-04 02:34:13'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-02',
  'https://open.spotify.com/playlist/6qxgI1fAQKFU7Fp1B6GuVi',
  '{"totalTracks":223,"successfullyFound":145,"notFound":78,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-02 07:50:28',
  '2026-02-04 02:34:13'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-03',
  NULL,
  '{"totalTracks":82,"successfullyFound":45,"notFound":37,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-03 08:13:04',
  '2026-02-04 02:34:13'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-01';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '01:34',
  'Ben Sidran',
  'Can We Talk',
  'Don` Cry For No Hipster',
  'vocal jazz, aor',
  'Blues in the Night',
  'Jamie Dell''Apa',
  'https://open.spotify.com/track/4ikro8mf3UDGoYvDPRWEw4',
  'found',
  100,
  '2026-02-01 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '01:40',
  'John Prine',
  'The Lonesome Friends Of Science',
  'The Tree Of Forgiveness',
  '',
  'Blues in the Night',
  'Jamie Dell''Apa',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '01:44',
  'Wanda Jackson',
  'Rum And Coca-Cola',
  'The Party Ain`t Over',
  'rockabilly, psychobilly, rock and roll',
  'Blues in the Night',
  'Jamie Dell''Apa',
  'https://open.spotify.com/track/3PNbtlInLWQ7Q3CC5R5CwX',
  'found',
  100,
  '2026-02-01 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '01:49',
  'Sax Kari',
  'The Twitch, Pts. 1 & 2',
  'Fumigate Funky Broadway',
  '',
  'Blues in the Night',
  'Jamie Dell''Apa',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '01:54',
  'Willie Nelson',
  'Sunday Morning Coming Down',
  'Naked Willie',
  '',
  'Blues in the Night',
  'Jamie Dell''Apa',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '03:27',
  'Hawkettes',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Overnight Music - Sunday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '04:28',
  'Professor Longhair',
  'Big Chief, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Overnight Music - Sunday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '05:59',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'Overnight Music - Sunday',
  NULL,
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:05',
  'Clifford Brown',
  'Yesterdays',
  'Wtih Strings',
  'vocal jazz, jazz ballads, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0x0G8aA3tqPVq5dGSG603R',
  'found',
  75.1,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:08',
  'Houston Person',
  'Put Your Head On My Shoulder',
  'Reminiscing At Rudy''s',
  'jazz, jazz ballads, soul jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5kgaoVNkMEkyVEj6Yv2Q7R',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:14',
  'Diana Krall',
  'Let''s Fall In Love',
  'Live In Paris',
  'vocal jazz, jazz, jazz pop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4IVyX0UJzGyUk0MLiz1jVJ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:19',
  'The Dave Brubeck Quartet',
  'Swanee River',
  'Gone With The Wind',
  'jazz, cool jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0Ki6c8oZl1LqJjcI1A0Gmh',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:24',
  'Ben Webster',
  'In a Mellotone',
  'In A Mellotone',
  'jazz, jazz ballads, cool jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/7BFkbLJYFJ5BNIpyr2DlVZ',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:32',
  'Bob Eberly',
  'Green Eyes',
  'Recapturing The Excitement Of The Jimmy Dorsey Era',
  'big band, swing music',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6L7pYJTZ3MrMSx1ZcYrL6m',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:36',
  'John Pizzarelli and the Ray Brown Trio',
  'Squeeze Me',
  'Some Of My Best Friends Are Guitarists',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:42',
  'Ike Quebec',
  'Blue And Sentimental',
  'Four Classic Albums',
  'hard bop, bossa nova, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4kFv25xG46k1MH0D8741Pb',
  'found',
  75,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:57',
  'The Soft Winds',
  'Honeysuckle Rose',
  'Then And Now',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3dVHk5kxZw4FTiCGlXaY18',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '06:58',
  'Eddie Duchin and his Orchestra',
  'It''s Delovely',
  'The Elegant Eddie Duchin And His Orchestra 1933-37',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:02',
  'The Kenny Davern Quartet',
  'My Blue Heaven',
  'At The Mill Hill Playhouse',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4Ll7jB79h3Pc3a5S3ZJ8IN',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:08',
  'Hank Jones',
  'Blue Monk',
  'Jazz For A Lazy Day',
  'jazz, bebop, cool jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0u0e58YiXQEyCICJ3q97SZ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:11',
  'Ricky Ford',
  'Chelsea Bridge',
  'Jazz For A Lazy Day',
  'hard bop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/06qowkQHpkXJ7VEc3BtuOw',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:16',
  'Guy Lombardo and his Royal Canadians',
  'Mary Lou',
  'Guy Lombardo And His Royal Canadians',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:18',
  'The Gene Harris Quartet',
  'Blues In Baxter''s Pad',
  'A Little Piece Of Heaven',
  'jazz, cool jazz, soul jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0xuDv9dqInnNqpObSbfvMv',
  'found',
  94.5,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:24',
  'Paul Desmond',
  'Gira Girou',
  'From The Hot Afternoon',
  'cool jazz, jazz, bossa nova',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1db76NIO9DVRNrN4kTxuz0',
  'found',
  83.3,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:30',
  'Mildred Bailey and her Orchestra',
  'If You Should Ever Leave',
  'Away From Base',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6CcpY9mvz44GVWAAI6jtEQ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:33',
  'Benny Goodman and his Orchestra',
  'He Ain''t Got Rhythm',
  'Away From Base',
  'big band, swing music, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4zLuPY6VrF9pUQEYQ3UBtF',
  'found',
  86,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:35',
  'Milt Jackson and the Clayton-Hamilton Jazz Orchestra',
  'Bags'' Groove',
  'Explosive!',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:41',
  'Glen Gray',
  'Smoke Rings',
  'Glen Gray''s Greatest',
  'big band, swing music',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/7opCOmq4Tm7HcrWQIfqKdh',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:46',
  'Summit Reunion',
  'Apex Blues',
  'Summit Reunion 1992',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '07:58',
  'Charlie Hayden',
  'En La Orilla Del Mundo',
  'Nocturne',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '08:04',
  'Teddy Edwards and Houston Person',
  'Blue And Sentimental',
  'Close Encounters',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '08:08',
  'June Christy and the Johnny Guarnieri Quintet',
  'Everything Happens To Me',
  'A Friendly Session Vol. 1',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '08:13',
  'The George Masso Sextet',
  'It''s D''Lovely',
  'C''est Magnifique!',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '08:24',
  'Arnett Cobb',
  'Just A Closer Walk With Thee',
  'Show Time',
  'hard bop, jazz ballads, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6aDcrxrm8bt3Tnq5ZYoP3F',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:02',
  'jim and jesse',
  'i''m gonna sing',
  'i''m gonna sing',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:07',
  'THE CHIGGER HILL BOYS',
  'SONGS FOR DAYS LIKE THESE',
  'SONGS FOR DAYS LIKE THESE',
  'christian bluegrass, southern gospel, country christian',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/4BRbRsR9SHhqxUsdBJPp1k',
  'found',
  86.9,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:10',
  'BILLY DROZE',
  'IF IT WASNT FOR A SONG',
  'RENAISANCE',
  'bluegrass, newgrass, christian bluegrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/6bVqFAnbQTcv4qmW51sVpk',
  'found',
  89.5,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:20',
  'MARK WHITT',
  'I HEARD SWEET MUSIC',
  'OVER YOU',
  'bluegrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/0LZebRBohJCyVhR0QUnP2d',
  'found',
  91.1,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:25',
  'CARL STORY',
  'I LIKE MOUNTAIN MUSIC',
  'MOUNTAIN MUSIC',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:26',
  'MAC WISEMAN',
  'I SANG THE SONG',
  'SANGF THE SONG',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:29',
  'DEL MCCOURY',
  'DON',
  'HIGH LONESOME AND BLUE',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:32',
  'BLUE HIGHWAY',
  'IS NOW THE TIME',
  'IS NOW THE TIME',
  'bluegrass, christian bluegrass, newgrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/3GpRe4Op4t0KZsITUITC1d',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:39',
  'LARRY CORDLE',
  'CHEROKEE FIDDLE',
  'WHERE THE RTREES KNOW MYNAME',
  'bluegrass, christian bluegrass, newgrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/2xKshmBIAoYmfJVMRurMV6',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:57',
  'JUNIOR SISK',
  'AIN',
  'BRAND NEW SHADE OF BLUE',
  'bluegrass, christian bluegrass, newgrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/548d6A0LqxshDnJeM4heS0',
  'found',
  70.6,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:57',
  'PAM SEXTER',
  'HOME I WHERE THE MUSIC IS',
  'NOW',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '10:57',
  'TURNING GROUND',
  'BLUEGRASS MUSIC',
  'TLURNING GROUND',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:08',
  'BRAD DAVIS',
  'I NEED MUSIC',
  'INEED MUSIC',
  'bluegrass, newgrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/5wHQ8QOycPPcdvswEg61kt',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:08',
  'DONNA ULISSE',
  'HEART OF ROSINE',
  'TIME FOR LOVE',
  'bluegrass, christian bluegrass, newgrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/5vTi90ikTYW6tuE7IRI0vL',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:13',
  'RICK ENIE',
  'BLUEGRASS UNTIL THE DAY I DIE',
  'TIME FOR LOVE',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:14',
  'BIG COUNTRY',
  'MUSIC FOR THE SOUL',
  'BOYSA IN HATAS AND TIES',
  'bluegrass, christian bluegrass, country christian',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/2P9V5Ss0XES6AvfXyse43E',
  'found',
  81.2,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:20',
  'KATY KALLICK',
  'THIS OLD LONESOME SONG',
  'LONESOME CHRONICLES',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:21',
  'ALICIA NUGENT',
  'JUST ANOTHER ALICE',
  'HILLBILLY GODDESS',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:27',
  'FULL CORD',
  'MANDOLINER''S DREAM',
  'HINDSIGHT',
  'newgrass, bluegrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/7DRQ04gylz5cSiy8nObsmU',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:38',
  'HOLLY NORMAN',
  'MUSIC IN THE MOUNTAINS',
  'APPLACHIAN ANGEL',
  'bluegrass, christian bluegrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/0K6tqOejsQuaDnlbP9nNq2',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:38',
  'JERRY SALLEY',
  'SONG WRITER',
  'SONGWRITER',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:39',
  'VWBOYS',
  'LISTEN TO THE MUSIC',
  'LISTEN TO THE MUSIC',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:49',
  'ALLISON BROWN',
  'BLUEGRASS RADIO',
  'SAFE AND SOUND AND SENSIBLE',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:49',
  'WAYNE TAYLO9R',
  'SING WITHME',
  'LISTEN TO THE MUSIC',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '11:57',
  'MARTY FAILLE',
  'BLUEGEASS ON THE BAYOU',
  'BORN AGAIN BLUEGRASS',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:01',
  'Bruce Daigrepont',
  'Perrodin Two-Step',
  'Petit Cadeau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:05',
  'Bruce Daigrepont',
  'PERRONDIN TWO STEP',
  'Petit Cadeau',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:05',
  'Veranda',
  'Comme le Temps',
  'Veranda',
  'pop québécoise, chanson québécoise',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3obMCzqB8n1MFEFnk8OpqP',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:07',
  'Les Freres Michot',
  'La Danse de Mardi Gras',
  'Eleves a Pilette',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:09',
  'Vin Bruce',
  'Les Cadjins du Bayou',
  'Les Cadjuns du bayou',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5RHphNojJjizd6GBqJMNAd',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:17',
  'Bruce Daigrepont',
  'Le Vieux Maquereau',
  'Jamais de la Vie',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2tbxcwKr3vZWKawQX7z6Xc',
  'found',
  85,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:20',
  'Jo-el Sonnier',
  'Chere Alice',
  'Cajun Life',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/55LIqmpfFuMTL6Dn3bO0lB',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:25',
  'Al Berard and Errol Verret',
  'Fais Do Do Waltz',
  'It''s in the Cajun Blood',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:29',
  'T''Monde',
  'Deux Voyages',
  'Petit Paradis',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7I80o2lljXmZ4dTSZgTuit',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:31',
  'Lost Bayou Ramblers',
  'Tu Peut Pas M''arreter de Rever',
  'Pilette Breakdown',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5DjDosfI0fNkYVoU4w4b3n',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:36',
  'Waylon Thibodeaux',
  'You Waltzed back right into my life',
  'Back in my stompin'' Grounds',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:37',
  'The Savoy-Smith Cajun Band',
  'Two Step de Prairie Soileau',
  'Now & Then',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2zaU9AxmUq3f7w175OsTQA',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:43',
  'Bruce Daigrepont',
  'Nonc Willie',
  'Cajun Accordion Kings and the Queen',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7ipECoptyg9CaBCRAIt7YH',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:51',
  'Has Beans',
  'Pine Grove Road House Blues',
  'Has Beans Cookin''',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2lHt0Uma2jNNeH6w94Sw04',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:56',
  'Joe Bonsall and the Orange Playboys',
  'the Chickens Don''t Lay',
  'Cajun Jamboree',
  'cajun, zydeco, southern gospel',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7fhBf4YAlbmF3IaOhMDzSf',
  'found',
  82.6,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '12:59',
  'Belton Richard',
  'Making Believe',
  'Belton Richard The Essential Collection',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2GMvqTnENgtth8pNKUSJC5',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:03',
  'Les Freres Michot',
  'Two step de Pilette',
  'Eleves a Pilette',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3hTKGxesgWr32UJO8NXJaa',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:05',
  'Beth Patterson',
  'Je M''endors',
  'Hybrid Vigor',
  'celtic',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/53PJYlG3bl5rRXrP8mMqRt',
  'found',
  80.8,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:08',
  'Josh and claire caffery',
  'quand ils ont coupe le vieux arbre de pin',
  'Travailler c''est trop dur',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:11',
  'Beausoleil avec Michael Doucet',
  'La Flech d''amour',
  'Gitane Cajun',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:17',
  'Roddie Romero',
  'I''m a Hog',
  'Roddie romero Live at the 2025 New Orleans Jazz and Heritage Fes',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:25',
  'Salebarbe',
  'J''ai Besoin D''Quel Qu''un Mauvais',
  'Gin a L''eau Salee',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:30',
  'Jourdan Thibodeaux and les Roadailleurs',
  'Blues reconnaissant',
  'Boue, Boucane, et Bouteilles',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:34',
  'Preston Frank and the Frank Family Band',
  'The Mule',
  'Seventy Five',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:36',
  'Dwayne Dopsie and the Zydeco Hell Raisers',
  'Good Man Bon HOmme',
  'Now is the Time',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:44',
  'Corey Ledet',
  'Lavals a Selestinn',
  'Medikamen',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:44',
  'Keith Frank, Rosie Ledet, Sean Ardoin and Nathan Williams',
  'Zydeco Two Step',
  'Creole Bred',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:53',
  'Horace Trahan',
  'Guilty Till Proven Innocent',
  'Keep Walking',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:55',
  'David Hidalgo & C J Chenier',
  'Hot Rod',
  'A Tribute to the King of Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2nGqJtzeqti9dbQZwYZMLq',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '13:59',
  'Zydeco Joe',
  'Pas Mo Shapo',
  'Jack Rabbit',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6aTC4p7gXSlDsBcyBIg9WT',
  'found',
  83.3,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:04',
  'Clifton chenier',
  'Ma Mama Ma Dit',
  'The Best of Clifton Chenier',
  'zydeco, cajun',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1rkyS9sVD9DMFInSVxN9Pz',
  'found',
  81.2,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:09',
  'Los Lobos',
  'Whiskey Trail',
  'Kiko',
  'roots rock',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2t5DqCib4DBAJVzfRjyhhg',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:12',
  'Shannon McNally',
  'Little Stream Of Whiskey',
  'Western Ballad',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:16',
  'Charlie Poole',
  'If The River Was Whiskey',
  'Charlie Poole & The North Caroli',
  'traditional country, bluegrass, country blues',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7yEvaYgu9QL6jNA0jkvs5n',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:19',
  'Willie Nelson',
  'Whiskey River',
  'Honeysuckle Rose [Expanded Editi',
  'outlaw country, classic country, country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6gS6XQ4OqMddkgzHNz40E5',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:23',
  'Liam Clancy',
  'Whiskey, You`re The Devil',
  'Heavenly Voices- An Irish Celebr',
  'celtic, sea shanties',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/233C3dkvZ5C1hOXmeUrhPv',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:25',
  'Buddy Guy',
  'Whiskey Ghost',
  'Rhythm & Blues - Disc 1',
  'blues, classic blues, blues rock',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7xRPfG0cM9klqDigaRl9VP',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:30',
  'Carolina Chocolate Drops',
  'Snowden`s Jig (Genuine Negro Jig',
  'Genuine Negro Jig',
  'bluegrass, newgrass, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7qQ0kz6o0LQOLK3m0xKzYp',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:43',
  'Woody Guthrie',
  'Train Blues',
  'Buffalo Skinners- The Asch Recor',
  'folk, traditional folk, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5otbo2DzEWrFm2QYsOOOCm',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:46',
  'Lucinda Williams',
  'Dead Flowers',
  'You Are Cordially Invited. . . A',
  'alt country, americana, outlaw country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/09Mqz1dOHvEERhqcFQmwzi',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '14:55',
  'Bob Dylan',
  'Thunder On The Mountain',
  'Modern Times',
  'folk rock, folk, singer-songwriter',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4wo2eRp6aHcAlmhmfwiTAH',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:01',
  'Chris Connor & Maynard Ferguson',
  'I Feel A Song Coming On',
  'Two''s Company',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:05',
  'THE RAMSEY LEWIS TRIO',
  'Little Liza Jane',
  'CHOICE!',
  'jazz funk, smooth jazz, soul jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0j99armFbhCmGhIilhQQwe',
  'found',
  74.8,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:08',
  'ELLA FITZGERALD',
  'I''M WALKIN''',
  'LADY TIME',
  'vocal jazz, jazz, swing music',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6x5Nxu2IFM3AgcaYdJGjPc',
  'found',
  90.6,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:15',
  'HERBIE MANN',
  'Watermelon Man',
  'LATIN MANN',
  'afro-cuban jazz, latin jazz, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1cjXVkof6yqnxVKY9S7HkR',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:20',
  'OSCAR PETERSON AND HERB ELLIS',
  'Seven Come Eleven',
  'HELLO, HERBIE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:25',
  'STAN GETZ',
  'CHILDREN OF THE WORLD',
  'CHILDREN OF THE WORLD',
  'bossa nova, jazz, brazilian jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6L6Mj5G5chcpNHWiUXURxu',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:33',
  'WOODY HERMAN',
  'CONGA',
  '50TH ANNIVERSARY TOUR',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:38',
  'WILLIE BOBO WITH MELVIN LASTIE',
  'SPANISH GREASE',
  'SPANISH GREASE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:42',
  'BUDDY RICH',
  'FIESTA',
  'CLASS OF ''78',
  'big band, jazz, bebop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/38XO4GmY4loan2wT2ZgksP',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:47',
  'CHARLIE BYRD',
  'THE HOUSE OF THE RISING SUN',
  'CHARLIE''S CHOICE',
  'bossa nova, brazilian jazz, latin jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2fZKYqxdNSC0fBmVesnHLD',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:56',
  'ROSEMARY CLOONEY',
  'DO YOU KNOW WHAT IT MEANS TO MISS NEW ORLEANS',
  NULL,
  'vocal jazz, big band',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3drlNzlNlYqP3eUj1wO7Jd',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '16:57',
  'RAMSEY LEWIS',
  'BLACK ORPHEUS MEDLEY',
  'DANCING IN THE STREET',
  'jazz funk, smooth jazz, soul jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5AJUVAIkJk8UeLKpX67Kte',
  'found',
  71.9,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:05',
  'THE AFRO-LATIN SOULTET',
  'AFRO SOUL',
  'WILD!',
  'latin jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3Pn8hKoWTW5jnpInhOUO10',
  'found',
  79.6,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:09',
  'CHICO HAMILTON',
  'GOT MY MOJO WORKIN''',
  'THE FURTHER ADVENTURES OF EL CHICO',
  'cool jazz, jazz, hard bop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5AuSc7QyQzcyXFFiryVuVS',
  'found',
  76.1,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:12',
  'dirty dozen brass band with dizzy gillespie',
  'Caravan',
  'DIRTY DOZEN BRASS BAND WITH DIZZY GILLESPIE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:19',
  'MAYNARD FERGUSON',
  'Theme From Shaft',
  'M.F. HORN TWO',
  'big band, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/60Wb2H9cVfDaWhG5jFsQrE',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:26',
  'JIMMY SMITH',
  'STAY LOOSE',
  'STAY LOOSE',
  'hard bop, soul jazz, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3Y3Y8GdhUNEjKli8hMv7AW',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:33',
  'DIZZY GILLESPIE',
  'FREE RIDE',
  'FREE RIDE',
  'bebop, jazz, afro-cuban jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0dFVjKC2qF2SSIk8WkLMLE',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:38',
  'RAY CHARLES',
  'ONE MINT JULEP',
  'GENIUS+SOUL=JAZZ',
  'soul, soul blues, blues',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3GiK4O8Be3xC0vYZK0Vpqo',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:39',
  'JIMMY MCGRIFF',
  'SUGAR, SUGAR',
  'SOUL SUGAR',
  'jazz funk, soul jazz, hard bop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0phN00EA01q2bjJuvVSyv6',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:43',
  'MEL LEWIS, THAD JONES, JOE WILLIAMS',
  'SMACK DAB IN THE MIDDLE',
  'PRESENTING JOE WILLIAMS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:48',
  'duke ellington',
  'blues for new orleans',
  'new orleans suite',
  'jazz, big band, swing music',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6cogtr2gYzfcvCcrM1Cbwf',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '17:57',
  'Gene Krupa Orchestra',
  'Thanks for the Boogie Ride',
  '45 Single - Okeh',
  'big band, swing music, boogie-woogie',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6OlXaFu6dst9anqntQm8Nz',
  'found',
  88.3,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '19:51',
  'Roy Milton',
  'Junior Jumps',
  'Groovy Blues',
  'boogie-woogie, blues, swing music',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/6dfuTVIRXHqKDi97cdODgP',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '19:58',
  'Louis Armstrong',
  'Hepcat''s Ball',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:19',
  'Chuck Perkins',
  'Congo Square',
  'A Love Song For NOLA',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3gDsGqW9OmHsS4Up5srDQa',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:19',
  'Tony Allen',
  'Gbedu',
  'Legos No Shaking',
  'afrobeat',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4WRoz05bYGW0uoI7qnQLBX',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:19',
  'Tuba Fats',
  'Mardi Gras Iko/Food Stamps',
  'Street Music',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:27',
  'Big Chief Monk Boudreauxn, Spyboy Jwan Boudreaux & The Golden ea',
  'Mardi Gras Morning',
  'Slip Don''t Fall',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:35',
  'Olodum',
  'Berimbau',
  'Brasilian Carnival',
  'axé, pagode baiano',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/0Uglh9lXRXwNxJbRXxUdXA',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:42',
  'Curtis Pierre',
  'MGM fa show Mardi Gra Indian Marracatu & Capoeira',
  'Mardi Gras Music Mergin with Brisil Fa Show',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:43',
  'Makhaya',
  'African Carnival',
  'African Carnival',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6xbiFAdgPfPpunmUlxvkMC',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '20:58',
  'Carib Tokyo',
  'Carnival Is For Women',
  'Carnival Jump-Ups-Steelbands of Trinidad and Tobago',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:03',
  'Phase II Pan Groove',
  'This Feeling Nice',
  'Carnival Jump-Ups-Steelbands of Trinidad and Tobago',
  'calypso',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/7CEyQLyt0qwPRJqFyuIcJ4',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:15',
  'Roaring Lion',
  'Carnival Long Ago',
  'Sofrito: Tropical Discotheque',
  'calypso',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5OQ6G9BseJ5SUgP3YtwYxY',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:17',
  'Mighty Sparrow',
  'Doh Stop de Carnival',
  'Doh Stop de Carnival',
  'calypso, soca, parang',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/0vdmIHIka9nnMFKcviVd0n',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:24',
  'Byron Lee & The Dragonaires',
  'Carnival - Wuk It Up Medley',
  'Soca Royal',
  'soca, calypso, rocksteady',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2jmSuv4D3YO873lQOKq35a',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:26',
  'Lord Melody',
  'Carnival Prolamation',
  'Lord Melody Sings Calypso',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:28',
  'Lord Kitchener',
  'Home For Carnival',
  'Home For Carnival',
  'calypso, soca, parang',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/1oTrY6fuversBuUlQn6JNU',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:31',
  'Eluard Burt',
  'Burt''s Lullaby',
  'Eluard & Co.',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:37',
  'Attila the Hun',
  'History of Carnival',
  'Calypso Carnival (1935 - 1939)',
  'calypso',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6eoexfrffUAaSWa25WAR0b',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:40',
  'Louis Armstrong and His Hot Five',
  'The King of the Zulus',
  'The Best of The Hot 5 & Hot 7 Recordings',
  'jazz, ragtime',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6xVCdroOORUMHucbfROQdQ',
  'found',
  91.9,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:41',
  'cubanismo! feat. john boutte & michael skinkus',
  'shallow water suite',
  'mardi gras mambo',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:49',
  'Allen Tousaint',
  'Mr Mardi Gras',
  'Mr Mardi Gras - Love a Carnival Ball',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:51',
  'Aswad',
  'Boom Boom Carnival',
  'Roots Revival',
  'reggae, roots reggae, lovers rock',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2Y4AVY1MmVURqnOif0EJ3w',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:54',
  'Tito Puente & His orchestra',
  'Come To the Mardi Gras',
  'Bossa Nova',
  'latin jazz, cha cha cha, afro-cuban jazz',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6te7zHV3LivlDe89334KNJ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '21:58',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:06',
  'Sariyah Idan',
  'Why You Do',
  'LIVE IN BERLIN Vol 2',
  'native american music, indie jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5v1KyIzAKADsEdjALe3yLF',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:11',
  'Cary Morin',
  'Waiting And Mad',
  'Innocent Allies',
  'blues, native american music',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6iRFBGy5RWOD5WggJSfrs6',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:19',
  'Mahmoud Chouki, Jason Marsalis',
  'Angelica',
  'Caravan From Marrakech To New Orleans',
  'swing music, ragtime',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2SmR6Y5GaaIbdqBhd9Pp5m',
  'found',
  98,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:27',
  'bonerama',
  'meters medley',
  'So Much Love',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:38',
  'Johnny Mathis',
  'Where Do I Begin?',
  'Love Story',
  'christmas',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2B4E6zFJX2KSN3i3lrA0b6',
  'found',
  77.5,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:40',
  'Center of the River',
  'Hannibal',
  'Americana Art Music from the Mississippi',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:48',
  'Pipo Romero',
  'Bailando en el tsunami',
  'Alborado',
  'flamenco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5mDSzQzUY6ky2ADWcJZPtW',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '22:55',
  'BARAKAT',
  'Mother of Pearls',
  'TAAWILAT SITTEE',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4h9xbWzBgaUyMHsmxvqfVN',
  'found',
  89.5,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:03',
  'The Lowest Pair',
  'Tiny Rebellions',
  'Always As Young As We''ll Ever Be',
  'southern gothic, bluegrass, americana',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2tMD3avQat8KdfJYQuD23M',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:07',
  'The Milk Carton Kids',
  'A Friend Like You',
  'A Friend Like You',
  'indie folk, folk, americana',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2t0s7VqkEetNbUbyPyErHq',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:16',
  'Rainbow Girls',
  'dead ringer',
  'HAUNTING',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4rXxP7E7UAKbsDaVdEpf3t',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:21',
  'Las Guaracheras, Lali de la Hoz',
  'Camino',
  'Camino',
  'electrocumbia, timba',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4MTXZL5leQMf3KnSeB7IhA',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:27',
  'Anna Moss featuring Rainbow Girls',
  'Amnesty',
  'Amnesty',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:35',
  'DAVID BANDROWSKI',
  'Dapper Dan',
  'SERPENTINE',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:47',
  'Big Chief Romeo Bougere ft Dawn Richard',
  'I''m Feelin Good!',
  NULL,
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-01',
  '23:50',
  'TOMMY CHEEK',
  'Morning Song',
  'ST. CLAUDE BRIDGE',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0sSzXfu1ca1uPwMsKwwpOe',
  'found',
  98,
  '2026-02-02 07:50:29'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-02';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:05',
  'Rahsaan Roland Kirk',
  'No Tonic Press',
  'Rip, Rig, and Panic',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:06',
  'Mo'' Horizons',
  'So Ma Guise',
  '...and the New Bohemian Freedom',
  'acid jazz, nu jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5T6HwltvnQMlWJeX6w9lGD',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:16',
  'Niuver',
  'Enamorados',
  'Putumayo Presents Jazz Cafe',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3ZW98KNFCdHEkcY3otLEFZ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:16',
  'Panorama Jazz Band',
  'Blue Star Jubilee',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:19',
  'Al Green & RAYE',
  'Perfect Day',
  'To Love Somebody',
  'soul, classic soul, motown',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2c9sIf5jLjqItQovMOZxqe',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:23',
  'Katherine Young',
  'Some People Say That She Doesn''t Exist',
  'Further Secret Origins',
  'free jazz, contemporary classical, avant-garde',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/02qwCYidZnft4gCZs0UYGc',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:29',
  'Michael Skinkus, Dave Jordan, & Mr. Smoker',
  'Special Nut Strut',
  'All Lit Up--New Orleans Juice',
  'roots rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5G6fizm4rAcqDAL74MGRLA',
  'found',
  85,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:31',
  'Johnny Sketch & The Dirty Notes',
  'The Getaway',
  'The Big Awesome',
  'cajun, brass band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7wcRGPAL9B6UGjJIUVZ5Gt',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:37',
  'John Boutte, Yockamo All-Stars, Cubanissimo!',
  'Shallow Water Suite',
  'Mardi Gras Mambo',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:42',
  'Headhunters',
  'Nutcracker',
  'Evolution Revolution',
  'jazz funk, jazz fusion, funk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4zyRLFIwkhl0fGUYabN25Q',
  'found',
  77.2,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:49',
  'Johnny Adams',
  'City Lights',
  'The Verdict',
  'soul blues, blues',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3FsrKtQD6usVbxGRsIiMpJ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:53',
  'Billy Iuso',
  'Shine On',
  '52 Hz',
  'cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7dC9QLrUXQj3ZC0XCkX6PR',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '00:57',
  'Burke Ingraffia',
  'You Gotta Breathe',
  'Waves',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4Bs6T5CIJmClRHi1XsmSvJ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:02',
  'Tito Puente & La India',
  'Jazzin''',
  NULL,
  'latin jazz, afro-cuban jazz, cha cha cha',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5gUaM1qIWodN4x0i6AbXQZ',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:08',
  'Irma Thomas, Michael Skinkus, Tom McDermott',
  'Early in the Morning',
  'Simply Grand',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:11',
  'Leigh Harris w/Michael Skinkus',
  'Spring Can Really Hang You Up The Most',
  'Polychrome Junction',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:19',
  'Michael Ray & the Cosmic Krewe w/Laranah Phipps-Ray',
  'Love In Santiago',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:25',
  'Fredy Omar Con Su Banda',
  'La Negra Tomasa',
  NULL,
  'zydeco, cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3R59ACQuySSva3LFg4FwTb',
  'found',
  93,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:29',
  'Creole String Beans',
  'How Could I Help But Love You',
  'Golden Crown',
  'zydeco, cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2pEjn7wHOOyqf5sMLEp5vB',
  'found',
  100,
  '2026-02-02 07:50:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:35',
  'Aurora Nealand, Tom McDermott, Michael Skinkus',
  'Visions of Saint Lucia',
  'City of Timbres',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:37',
  'Tom McDermott, Chloe Feoranzo, Michael Skinkus',
  'Curvilineo',
  'Zeppelins made to Order',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:41',
  'Irene Sage',
  'Keep the Faith',
  'Come on In',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7pLUCAIsAV160NsCXGeaPP',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:43',
  'Beth Patterson',
  'Starting Over',
  'Love Says',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1zwSE5e693d4ZcSRacMoG5',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:48',
  'Jhelisa',
  'Flute Band in Gauteng',
  'A Primitive Guide to Being There',
  'uk garage, acid jazz, house',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0wDWzbUDDhrtUpV6JmgVNz',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '01:54',
  'Mark Bingham',
  'Louisiana Proverbs',
  'Psalms of Vengeance',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/65pWMBhSwYXaO3VaaAtYjL',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:00',
  'Martin Simpson',
  'I Can''t Keep From Crying Sometimes',
  'Righteousness & Humidity',
  'folk, traditional folk, celtic',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4ezaYuIpdvvbvuOeZZ8ATz',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:05',
  'Floatstone',
  'Sweet',
  'Skipping Over Damaged Area',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6dI8kcuu6ZeggPplDthdlA',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:09',
  'The Allyn Robinson Project',
  'Esplanade and Habana Vieja',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1AoGwbvhBcfyi9oqAznRs5',
  'found',
  98,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:19',
  'Dr. John',
  'Food for Thot',
  'Creole Moon',
  'cajun, zydeco',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0pS0ArJxesOWbEbRBDKKBh',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:23',
  'Honey Island Swamp Band',
  'Cast the First Stone',
  'Cane Sugar',
  'cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6prnkadVJC2uqDDNKMrPW8',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:26',
  'The Marc Stone Band',
  'Tell Me',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:32',
  'Anders Osborne',
  'Nothin'' On',
  'Which Way to Here',
  'modern blues, jam band, blues rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5D3s5xWk4ERfmzLjlW1jyY',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:39',
  'Bobby Rush & Blindog Smokin''',
  'Dr. Rush',
  'Decisions',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:43',
  'Charlie Dennard, Michael Skinkus, Brent Rose, Ray Moore',
  'Capoeira Mata Um',
  'From Brazil to New Orleans',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:48',
  'Charles Lloyd',
  'Prayer, Sanctuary',
  'Which Way is East',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '02:53',
  'Nina Simone',
  'Just Say I Love Him',
  'Forbidden Fruit',
  'vocal jazz, soul jazz, soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0JdhUTIfiMG1bM33QduwgL',
  'found',
  100,
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
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
  '2026-02-02 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '05:55',
  'Leo Nocentelli',
  'Riverfront',
  'Another Side',
  '',
  'Overnight Music - Monday',
  NULL,
  'https://open.spotify.com/track/2UwH6nwpc3nH9ySXXLkDVn',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:04',
  'Bill Evans',
  'Peace Piece',
  'Everybody Digs Bill Evans',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/58yFroDNbzHpYzvicaC0de',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:04',
  'Morphine',
  'Bo''s Veranda',
  'b sides and otherwise 1993',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5zF1TVhvYSxwr0euTCCHy4',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:09',
  'Brian Eno',
  '1/1',
  'Ambient 1: Music For Airports',
  'ambient, art rock, krautrock',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4Bj5Y3BYXktCqS8FEUOfo9',
  'found',
  78,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:25',
  'Lotus',
  'Umbilical Moonrise',
  'Germination',
  'jam band',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6aG9xp2yV5mgPxKMpGb86v',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:40',
  'Thelonious Monk',
  'Four in One',
  NULL,
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2CeetB0z7YBmb9a0y5RDGE',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:49',
  'Chet Atkins',
  'Make The World Go Away',
  'Super Hits',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/0F8bbsiATd4xiyV25RMGo4',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:51',
  'Tom Rainey Trio',
  'Mr and Mrs Mundane',
  'Camino Cielo Echo',
  'free jazz, avant-garde, experimental jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5qsvjjCUqPHHb9YolLEL4u',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:55',
  'Sneaky Pete Kleinow',
  'Sleepwalk',
  'Meet Sneaky Pete',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7mPais2dG0f5K89P9H6qV4',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '06:59',
  'Mort Garson',
  'Plantasia',
  'Mother Earth''s Plantasia',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2XV5CUyw7gPVi18d718D4f',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:02',
  'Southern University Jazz Ensemble',
  'Samba Dee',
  'Goes to Africa With Love',
  'free jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5mb4db7hmJ6ZeLz6qkIeZN',
  'found',
  89.8,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:17',
  'Paul Desmond',
  'I Get a Kick Out Of You',
  'First Place Again',
  'cool jazz, jazz, bossa nova',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4aiToVXyelaS3IzT3XrLEV',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:26',
  'Thelonius Monk',
  'Ruby, My Dear',
  'Alone in San Francisco',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1PjvmeUrBN4mHw6LVTvkuz',
  'found',
  72,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:30',
  'John Coltrane',
  'Sun Ship',
  'Sun Ship',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3k8aBASj6jgt3PSEumdafR',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:36',
  'Rahsaan Roland Kirk',
  'Trees',
  'I Talk With The Spirits',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:43',
  'Daniel Lanois',
  'O Marie',
  'Acadie',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3UfO5iunCeL98HY8d5Iq9v',
  'found',
  88,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:46',
  'The Olympians',
  'Apollo''s Mood',
  'The Olympians',
  'retro soul',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5pvYvvO0IDkuK1FDWPWMXy',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:51',
  'Masayoshi Takanaka',
  'BREEZIN''',
  'On Guitar',
  'jazz fusion, city pop, jazz funk',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7hgTD3nmWLbF58Rsugc27d',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:58',
  'Daniel Johnston',
  'True Love Will Find You In The End',
  '1990',
  'anti-folk',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6fEjOPaZoxQl3oha9GDJAN',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '07:58',
  'Menahan Street Band',
  'Montego Sunset',
  'Make The Road By Walking',
  'retro soul',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/46g7hr6VAtl08So3KkvLc8',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:01',
  'Hiatus Kaiyote',
  'And We Go Gentle',
  'Mood Valiant',
  'neo soul, indie soul, alternative r&b',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3PHgxKy3nKy0v9KvUtHl8g',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:09',
  'Andrew Brid',
  'Truth Lies Low',
  'Are You Serious',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:11',
  'Extended',
  'Broken English',
  'Without Notice',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7yAOhc6yQc7iL17I408rUf',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:19',
  'Chick Corea, Christian McBride, Brian Blade',
  'Windows - Live',
  'Trilogy 3 (Live)',
  'jazz fusion, jazz, latin jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6OS5HFuj7qEtASx9Vjl6nY',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:32',
  'Chaz Bundick',
  'Don''t Blame Yourself',
  'Star Stuff',
  'neo-psychedelic, psychedelic rock',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6tVH0HdU9Sr4Tt2Mv1gvRK',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:37',
  'Billie Holiday',
  'You Go to My Head',
  'Solitude',
  'jazz, vocal jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/78MIFwIW5oUNdaL6Sj8hTB',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:42',
  'Dana and Alden, Melanie Charles',
  'Family Garden',
  'Coyote, You''re My Star',
  'indie jazz, acid jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7smalFArs5Zs7NKwPBySJL',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:44',
  'BADBADNOTGOOD',
  'Speaking Gently',
  'IV',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4B61IBnoLZOUO3RWRVzUJ1',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:48',
  'Pete Rock',
  'The Boss',
  'Petestrumentals',
  'jazz rap, east coast hip hop, boom bap',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4Qb7yDdOIpbe3N6X8eYf5A',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '08:54',
  'Bill Evans',
  'Nardis',
  'Explorations',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3Mp88lA8JKE7x4X6A1eUeA',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '10:36',
  'Jelly Roll Morton',
  'Black Bottom Stomp',
  'Birth Of The Hot',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/3orMMCSWQHPBVpmuSl9Abg',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '10:40',
  'Jimmie Noone',
  'Alligator Crawl',
  '1923-1928',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/4ATMBue2LGgQCZvnrNRZGP',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '10:43',
  'Johnny Dodds',
  'Flat Foot',
  'Clarinet Wobble Vol 1',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/7GC9iTqabJFCzvFr7hEp31',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '10:46',
  'Johnny St. Cyr',
  'Boogie Woogie',
  'Johnny St. Cyr',
  'brass band, ragtime',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/58q84kzUR1bxXC4aeQqFhv',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '10:50',
  'Fletcher Henderson',
  'Shanghai Shuffle',
  'Tidal Wave',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/7td4kf6zwXhmjS4OxoCsDy',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '10:54',
  'Paul Barbarin and His New Orlean',
  'Weary Blues',
  'In Concert 1951-1959 Jazz In New',
  '',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/1EvfFDxd8rKwmWs5MmHf4l',
  'found',
  74.5,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '10:58',
  'Kid Ory',
  'Creole Song',
  '`44-46',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/79bk83XjyVF5URuBl9ua8r',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:06',
  'Pj Morton',
  'Morning',
  'Heart Of Mine',
  'christian r&b, gospel, neo soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2vi0bMWwrq7uoIcZisQb3f',
  'found',
  71.3,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:06',
  'Sullivan Fortner',
  'SOUTHERN NIGHTS',
  'Southern Nights',
  'jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2PDCFuRlvJx3vo2LDiTVDS',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:11',
  'JON BATISTE',
  'BIG MONEY',
  'BIG MONEY',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/55Xw7I5I01M0Bs4QW1MNR2',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:16',
  'Buddy Guy',
  'Trick Bag',
  'Ain''t Done With The Blues',
  'blues, classic blues, blues rock',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/05TorTxmQUmFf9GKG719zD',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:20',
  'Rolling Stones/ Steve Riley',
  'Zydeco Sont Pas Sales',
  'A Tribute To The King Of Zydeco',
  'classic rock, rock, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6t4QKiYbyoLfsa0NrOBUSr',
  'found',
  76.2,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:24',
  'Lucinda Williams, Tommy McClain',
  'Release Me',
  'A Tribute To The King Of Zydeco',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:31',
  'Jimmy Vaughn, Johnny Nicholas and Steve Riley',
  'My Soul',
  'A Tribute To The King Of Zydeco',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:33',
  'Honey Island Swamp Band',
  'Cane Sugar',
  'Cane Sugar',
  'cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/7MJuLjYWXkF871x0u9H7Is',
  'found',
  85.9,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:55',
  'MArdi Gator',
  'Papa Grow Funk',
  'Doin it',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:57',
  'Los Po Boy Citos',
  'Fat Mama/Mother-In-law',
  'New Orleans Latin Soul',
  'latin jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/16w207IGGBsOC1s3WNuqEN',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '11:58',
  'Tab Benoit',
  'Fever For The Bayou',
  'Night Train To Nashville',
  'blues, cajun, modern blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6IF7M9Ksw65aHE24RMecpl',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '12:00',
  'Galactic',
  'Bobski 2000',
  'Vintage Reserve',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/3usSGJY75q12cO88dFPJJq',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '12:28',
  'Voices Of The Wetlands',
  'CLEAN WATER',
  'Voice Of The Wetlands',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '12:30',
  'Vocie of The Wetlands, Cyril Neville',
  'late in the evening',
  'Take Me To The River New Orleans',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '12:32',
  'Dr. John',
  'Big Bass Drum (On A Mardi Gras D',
  'On A Mardi Gras Day',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '12:37',
  'Big Sam''s Funky Nation',
  'Carnival Thing',
  NULL,
  'brass band, jazz funk, funk',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/45JUrvSaTjTL6Cjg842shE',
  'found',
  72.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '12:41',
  'Big Chief Romeo Bougere, Dawn Ri',
  'I''m Feeling Good (Vocal)',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '12:53',
  'Trombone Shorty & The New Breed',
  'Street Music',
  'Second Line Sunday',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:00',
  'Big Freedia',
  'Celebration',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/723J8TT1MrywSg66aIqZio',
  'found',
  73.5,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:31',
  'Esther Rose',
  'HAD TO',
  'Want',
  'americana, alt country',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/794fhUDrofxgO5sz6s078K',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:31',
  'Esther Rose',
  'The Clown',
  'Want',
  'americana, alt country',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1TzCWgegwEZUiDiCTfFoLU',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:33',
  'Loose Cattle',
  'Unholy Rollers (Clean Version)',
  'Unhoy Rollers',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:38',
  'Quickening, The',
  'Pigeon Song',
  'Moister Than An Oyster',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:39',
  'Sam Price And True Believers',
  'Dragonfly',
  'Dragonfly',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:44',
  'Stanton Moore',
  '(Smell My) Special Ingredients',
  'Emphasis! (On Parenthesis)',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:48',
  'Joe Krown Organ Combo',
  'Tipitina',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '13:56',
  'Bonerama/ Cyril/Trombone Shorty',
  'Ohio',
  'So Much Love',
  'brass band, cajun, jazz funk',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4nJRmuc1HzASt4P30f6uBs',
  'found',
  84.9,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:01',
  'David Hidalgo & C J Chenier',
  'Hot Rod',
  'A Tribute to the King of Zydeco',
  'zydeco, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2nGqJtzeqti9dbQZwYZMLq',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:05',
  'BOBBY RUSH & KENNY WAYNE SHEPHERD',
  'G STRING',
  'YOUNG FASHIONED WAYS',
  'blues rock, blues, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6sBxfLlfvQMWeOyj3LVw9f',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:10',
  'WALTER VINSON',
  'IT''S GONNA STARE YOU IN THE FACE',
  'JACKSON STOMP',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:13',
  'JOHNNY GUITAR WATSON',
  'THREE HOURS PAST MIDNIGHT',
  'THE BEST OF JOHNNY GUITAR WATSON',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5L6Rnb4JjJYaZ3XwltKFtC',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:20',
  'JODY WILLIAMS',
  'moanin for molases',
  'IN SESSION',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:21',
  'ROOSEVELT SYKES',
  'RAN MY BLUES OUT OF THE WINDOW',
  'BLUES BY ROOSEVELT',
  'blues, classic blues, boogie-woogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2ghHHcT9QbAfbyo1EWEJ3O',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:22',
  'Jon Batiste',
  'Petrichor',
  'Big Money',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7jmeenh8fzx9gxhJfMq2r2',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:25',
  'JASON ISBELL',
  'WHITE MAN''S WORLD',
  'THE NASHVILLE SOUND',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:29',
  'JESSE THOMAS',
  'GUITAR RIFF',
  'RED RIVER BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:32',
  'JESSE THOMAS',
  'My baby',
  'RED RIVER BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:35',
  'MUDDY WATERS',
  'country blues',
  'THE COMPLETE PLANTATION RECORDINGS',
  'blues, classic blues, blues rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5rbUaXC7PQt8z3XQjQ6xrk',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:39',
  'VARETTA DILLARD',
  'GOOD GRAVY BABY',
  'KOKO MOJO DINER VOL.1',
  'boogie-woogie, rockabilly, boogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6JfkDIIvYx1qBYv1tGvaxH',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:41',
  'TIN MEN',
  'I GOT A GUY',
  'AVOCADO WOO WOO',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0NdOleE71VuNXv8kTUE4Q0',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:47',
  'BEVERLEY SCOTT',
  'SHAKIN THE BOOGIE',
  'DOWN HOME BLUES CLASSICS 1948-54 VOL.4',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:49',
  'CHESTER GUYDON',
  'MISS FANNIE BROWN',
  'STOMPIN EARLY JUMP VOL.21',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:51',
  'BRUCE SPRINGSTEEN',
  'streets of minneapolis',
  'SINGLE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6AtgHxdvghUjcjdPX1VhWN',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '14:55',
  'SONNY BOY HOLMES',
  'TNT WOMAN',
  'DOWN HOME BLUES CLASSICS VOL.4',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:00',
  'CHUCK CARBO & THE SOUL FINDERS FEAT. JAMES BLACK',
  'CAN I BE YOUR SQUEEZE',
  'THE FUNKY SIDES OF JAMES BLACK',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:01',
  'KING DAVIS',
  'WAGGIN YOUR TAIL',
  'DOWN HOME BLUES CLASSICS VOL.4',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:06',
  '20 MILES',
  'east st. louis',
  'I''M A LUCKY GUY',
  'garage rock, folk punk',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3P3NVZgZ0KzEg9TqNl8Tmy',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:07',
  'North Mississippi Allstars',
  'Shake`Em On Down',
  'Shake Hands With Shorty',
  'southern rock, modern blues, jam band',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1xBVV8DXEcAVlR09kMBRjn',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:11',
  'Sabine McCalla',
  'Louisiana Houndaog',
  'Dont Call Me Baby',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:15',
  'DAVE BARTHOLEMEW',
  'Bad Habit',
  'IN THE ALLEY',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:19',
  'JED DAVENPORT AND HIS BEALE STEEET JUG BAND',
  'YOU OUGHT TO MOVE OUT OF TOWN',
  'RUCKUS JUICE AND CHITLINS VOL.1',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:21',
  'MEMPHIS JUG BAND',
  'SON BRIMMER''S BLUES',
  'THE JUG BANDS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:25',
  'WILLIAM FLYOD DAVIS',
  'WHY DID I HAVE TO LEAVE CAIRO',
  'ON THE ROAD AGAIN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:27',
  'ROBERT NIGHTHAWK',
  'Honky Tonk',
  'LIVE ON MAXWELL STREET',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:30',
  'OTIS REDDING',
  'I''VE GOT DREAMS TO REMEMBER',
  'OTIS!',
  'motown, soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4C2jxg2GZsvttTiHpWP5ZL',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:33',
  'BARRETT STRONG',
  'money (that''s what I want)',
  'THE BEST OF BARRETT STRONG',
  'motown, northern soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6OsefWNJtsWqO7myze1HEX',
  'found',
  87.7,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:36',
  'ANN SEXTON',
  'YOU''RE LOSING ME',
  'SINGLE',
  'northern soul, classic soul, soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5wKbWMvsXkg4CBshKwq04T',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:39',
  'BABY FACE LEROY FOSTER',
  'RED HEADED WOMAN',
  'ON THE ROAD AGAIN',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6IXcY8tMLxX6k8kgiLyzBI',
  'found',
  83.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:40',
  'Clifton Chenier',
  'It Happened So Fast',
  'ZYNN 45',
  'zydeco, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3DMOqPKKSOYpr3Vxcapjfi',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:43',
  'SONNY LANDRETH',
  'TAYLOR''S ROCK',
  'BLUES INSTRUMENTALS',
  'blues, blues rock, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6fpaDrwoD72oLtksI0Ei88',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:46',
  'LITTLE FREDDIE KING',
  'THE THINGS I USED TO DO',
  'MESSIN ROUND THE HOUSE',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4es4BD5NE1lvk6ZRyZCj0V',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:51',
  'JESSY AND BUZZY',
  'GOIN BACK TO NEW ORLEANS',
  'STOMPIN 2',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:52',
  'JR KIMBROUGH',
  'FEEL SO BAD',
  'FIRST RECORDINGS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '15:55',
  'ARVELLA GRAY',
  'CORINA',
  'LIVE ON MAXWELL STREET',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
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
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:01',
  'Miles Davis, Sonny Stitt',
  'If I Were A Bell',
  'In Stockholm, 1960 [Disc 2]',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:13',
  'Sonny Stitt',
  'Angel Eyes',
  'The Good Life',
  'bebop, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0CpukQ47jDQgwG8EK9GfQ0',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:18',
  'Sonny Stitt',
  'I Got It Bad and That Ain`t Good',
  'Sonny Stitt - Best of The Rest',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:27',
  'DUKE JORDAN',
  'FLIGHT TO JORDAN',
  'FLIGHT TO JORDAN',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5BM6ktlrq1VMnjDD41GOfN',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:32',
  'DUKE JORDAN',
  'STAR BRITE',
  'FLIGHT TO JORDAN',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3YShkRiHcZuKwJ6uGccRUi',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:42',
  'Jimmy Cobb',
  'Unrequited',
  'The Original Mob',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7yOz2I1UfSP8RF3PvlJlXS',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:51',
  'STAN GETZ',
  'PEACE',
  'MOMENTS IN TIME',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '16:59',
  'Milt Jackson With Joshua Redman',
  'Blue Monk',
  'The Prophet Speaks',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '17:29',
  'Joshua Redman',
  'Words Fall Short',
  'Words Fall Short',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '17:34',
  'JOSHUA REDMAN',
  'DO YOU KNOW WHAT IT MEANS TO MISS NEW ORLEANS?',
  'WHERE ARE WE',
  'jazz, jazz ballads, vocal jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3v1CVZGox4QQWPQAkUNL53',
  'found',
  73,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '17:41',
  'Clyde Kerr Jr.',
  'Treme',
  'This Is Now!',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '17:54',
  'Stan Getz',
  'Blue Skies',
  'An Irving Berlin Songbook',
  'bossa nova, jazz, brazilian jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3cf0ViGOpdcEAa68LmRo78',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '18:03',
  'STAN GETZ',
  'MORNING STAR',
  'MOMENTS IN TIME',
  'bossa nova, jazz, brazilian jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7xcm0wclPiE2cd23NCKmvM',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '18:12',
  'BRAD MEHLDAU',
  'ALMOST LIKE BEING IN LOVE',
  'SEYMOUR READS THE CONSTITUTION!',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/46hUVs8zvm21vY9qHKHY29',
  'found',
  81.8,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '18:19',
  'CHARLIE HADEN & LIBERATION MUSIC ORCHESTRA',
  'BLUE IN GREEN',
  'TIME/LIFE (SONG FOR THE WHALES AND OTHER BEINGS)',
  'jazz, jazz ballads, free jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6QY1Ek7Ts9fhYSkvkADYHW',
  'found',
  90,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '18:30',
  'CHARLIE HADEN & LIBERATION MUSIC ORCHESTRA',
  'THIS IS NOT AMERICA',
  'NOT IN OUR NAME',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '18:33',
  'Monty Alexander',
  'Redemption Song',
  'Harlem-Kingston Express, Vol. 2',
  'jazz, rocksteady, dub',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1KTbgV2ouV7DAoLFqFfMhF',
  'found',
  75.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '18:42',
  'JOE HENDERSON',
  'UNA MAS (ONE MORE TIME)',
  'THE COMPLETE JOE HENDERSON BLUE NOTE STUDIO SESSIONS - DISC 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '18:56',
  'Joe Henderson',
  'Black Narcissus',
  'Big Band',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3IbZO1Ml6LyntT83JZ2VG4',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:08',
  'ALVIN SHINE ROBINSON',
  'LET THE GOOD TIMES ROLL',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:08',
  'LOU DONALDSON',
  'SAY IT LOUD I''M BLACK AND I''M PROUD',
  NULL,
  'hard bop, jazz, soul jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2VDjtqB0RqHI5WNBZlJ8bw',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:11',
  'LEADBELLY',
  'MIDNIGHT SPECIAL',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:14',
  'FATS WALLER',
  'NIGHT WIND',
  NULL,
  'swing music, ragtime, big band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5sFFMBdS9WrGUdObBR0YEG',
  'found',
  86.1,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:17',
  'TOM WAITS',
  'FRANK''S WILD YEARS',
  'FRANK''S WILD YEARS',
  'singer-songwriter, southern gothic',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2mjYzde5TYWD3KPWWrmo3U',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:19',
  'TOM WAITS',
  'TANGO TILL THEY''RE SORE',
  'RAIN DOGS',
  'singer-songwriter, southern gothic',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4bUApAX6GWx9NUloSh64za',
  'found',
  94.5,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:23',
  'Wild Magnolias',
  'Fire Water',
  'They Call Us Wild',
  'cajun, zydeco, brass band',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0ntargjdcVC7MW0J6VQfEX',
  'found',
  82.1,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:26',
  'Meters',
  'Come Together',
  'Kickback',
  'funk, soul, jazz funk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5IgWnpYDtwh0C8dXw90EXN',
  'found',
  73.9,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:30',
  'Lucinda Williams',
  'With a Little Help from My Frie',
  'Sings The Beatles From Abbey Roa',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:35',
  'Neville Brothers',
  'Yellow Moon',
  'Yellow Moon',
  'cajun, zydeco',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5azaQP9aqjy3XYwsuJ0ebJ',
  'found',
  86,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:40',
  'CHUCK WILLIS',
  'WHAT AM I LIVING FOR?',
  NULL,
  'doo-wop, boogie-woogie',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6eIEXINZt8rtgqEtOxP9ur',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:42',
  'SHANNON MCNALLY',
  'YOU REALLY GOT A HOLD OF ME',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:47',
  'SHANNON MCNALLY',
  'HELP ME MAKE IT THROUGH THE NIGHT',
  'THE WAYLON SESSIONS',
  'americana, alt country',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1Tig1TVf5XQNkELNkhkWJV',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:51',
  'SHANNON MCNALLY',
  'TRISTESS OUBILEE',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '19:55',
  'ZACHARY RICHARD',
  'LA LOUISIANNE',
  'DANSER LE CIEL',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:01',
  'BUCKWHEAT ZYDECO',
  'CRYING IN THE STREET',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:14',
  'ROY HEAD',
  'TREAT HER RIGHT',
  NULL,
  'rockabilly',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/027nSHMERwEAtnlHZsJqWQ',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:16',
  'WAYNE COCHRAN',
  'I CAN''T TURN IT LOOSE',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:21',
  'WANDA JACKSON',
  'FUNNEL OF LOVE',
  NULL,
  'rockabilly, psychobilly, rock and roll',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6uJXOi796U1D8iW9fj2ZGn',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:22',
  'CLIFTON CHENIER',
  'ZYDECO ZONT PAS SALES',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:23',
  'SUGAR PIE DESANTO',
  'SOULFUL DRESS',
  NULL,
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7aFhmC10KPJDAxx1Rengol',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:26',
  'DIANA ROSS AND THE SUPREMES',
  'QUEEN OF THE HOUSE',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:29',
  'ROGER MILLER',
  'KING OF THE ROAD',
  NULL,
  'classic country',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3XG7bMVcMWLIn2k9jLAaAt',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:31',
  'LEE HAZELWOOD',
  'ME AND THE WINE AND THE CITY LIGHTS',
  NULL,
  'baroque pop',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4EXo4jEbSqDiCaKhd7Fuj9',
  'found',
  72,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:34',
  'EDGAR BLANCHARD AND THE GONDOLIERS',
  'BLUES CHA-CHA',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:35',
  'KID SHEIK COLA',
  'EH LA BAS',
  NULL,
  'brass band, ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3Seu1XjXROk7WnuGsVitfT',
  'found',
  86.7,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:37',
  'DAVE FATMAN WILLIAMS',
  'I ATE UP THE APPLE TREE',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:40',
  'JESSIE HILL',
  'I CAN''T GET ENOUGH OF THAT OOH PAH DOO',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:40',
  'JESSIE HILL',
  'WHIP IT ON ME',
  NULL,
  'cajun',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7AZSMzpxHjKaQpg117FWcQ',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:50',
  'CLARK TERRY & CHICO O''FARRILL',
  'SPANISH RICE',
  'SPANISH RICE',
  'hard bop, latin jazz, jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4TL9D8z4NFwMWjQa3lucIG',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:53',
  'CLARENCE GARLOW',
  'BON TON ROULET',
  NULL,
  'zydeco, cajun',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6arOotjW6rmuu8q9AuU1al',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '20:57',
  'SLIM HARPO',
  'I GOT LOVE IF YOU WANT IT',
  NULL,
  'classic blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4QP6fT7KwPmocWYMrRGG35',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:04',
  'BALLOU MARCHING BAND DRUMLINE',
  'DRUMLINE',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:04',
  'PROFESSOR LONGHAIR',
  'GOING TO THE MARDI GRAS',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:06',
  'Jon Cleary',
  'Occapella',
  'Occapella!',
  'cajun, jazz funk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3rggEUj4gs4gYWZ0dL2vUr',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:09',
  'Dr. John',
  'Mardi Gras Day',
  'Mos` Scocious- Anthology (CD01)',
  'cajun, zydeco',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:21',
  'Art Neville n Larry William',
  'Rockin` Pneumonia and The Boogie',
  'His Specialty Recordings',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:21',
  'MAX WOISKKI, JR.',
  'DON''T STOP THE CARNIVAL',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:24',
  'HARRY BELAFONTE',
  'DON''T STOP THE CARNIVAL',
  NULL,
  'calypso',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3yXT9GVjKmjjUuVa2utG57',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:29',
  'THE CLASH',
  'JUNCO PARTNER',
  NULL,
  'punk',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3MoCVkwtFocSsZktSMCxBn',
  'found',
  88.1,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:34',
  'LOUIE JORDAN',
  'JUNKO PARTNER',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:41',
  'LOUIE JORDAN',
  'LOLLIPOP',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:41',
  'LOUIE JORDAN',
  'PERDIDO',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:41',
  'LOUIE JORDAN',
  'YOU DIED YOUR HAIR CHARTREUSE',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:45',
  'Louis Jordan',
  'New Orleans And A Rusty Old Horn',
  'Just Say Moe!- Mo` Of The Best O',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:49',
  'ROBBIE ROBERTSON',
  'GOING TO THE RIVER',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '21:58',
  'Nina Simone',
  'Keeper Of The Flame',
  'Wild Is The Wind-High Priestess',
  'vocal jazz, soul jazz, soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6Ar5ViRL0hAtwunNxjLvpt',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:02',
  'MASEGO/ FKJ',
  'TADOW',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6R6EFWOFwrXg0sEtz9QnUe',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:07',
  'Eugene Wilde',
  'Gotta get You home Tonight',
  NULL,
  'quiet storm, new jack swing',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/35Z9SYT8AjvgvUag0H4iQt',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:13',
  'Nappy Roots/ Anthony hamilton',
  'Po'' Folks',
  NULL,
  'southern hip hop, neo soul, r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/22F01qwlQDpxjPN8UQFz8n',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:17',
  'Simple Minds',
  'Don''t You (Forget About me)',
  NULL,
  'new wave',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3fH4KjXFYMmljxrcGrbPj9',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:22',
  'Beyonce/ Kendrick lamar',
  'FREEDOM',
  NULL,
  'hip hop, west coast hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7aBxcRw77817BrkdPChAGY',
  'found',
  79,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:27',
  'Rick James',
  'Mr. Policeman',
  NULL,
  'funk, motown, disco',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1MEDV8WqV9ATzVXu6a2cXz',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:31',
  'Freddie Hughes',
  'Send My Baby Back',
  NULL,
  'northern soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6E38X2GiWcO44MqZ7Ow20y',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:34',
  'Sault',
  'Goods Things Will Come After the Pressure',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:39',
  'Mickey Guyton',
  'Black Like Me',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/239xopha4cJfbAfhX76FEQ',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:42',
  'Fishbone',
  'Freddie''s Dead',
  NULL,
  'funk rock, ska, ska punk',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7CPK7pEiYV8O2RPNkES4Kt',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:47',
  'A tribe Called quest',
  'Buggin Out',
  NULL,
  'jazz rap, east coast hip hop, old school hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6GAemDMWAXa8wZOBkO1gar',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:50',
  'Miles Davis',
  'A NIGHT IN TUNISIA',
  NULL,
  'jazz, cool jazz, hard bop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4tqPHIVrEUmtmLbc9VJjQ3',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '22:58',
  'Tony Toni Tone',
  'The Blues',
  NULL,
  'new jack swing, quiet storm',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2TYgfLRpzaC4LgTqRy7UAf',
  'found',
  76.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:02',
  'Ricky Bell',
  'When Will I see You Smile Again',
  NULL,
  'miami bass',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/59fhoIWdduzI82Pv5MdarG',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:08',
  'Paul Russell',
  'High Maintenance',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3nUQ7JkB1GR4NUY4Lbhziy',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:11',
  'Slugger/ Jelly Joseph',
  'Headbanga',
  NULL,
  'christian jazz, cajun',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4QwWNmRuvi6X9m3PVSBfRB',
  'found',
  85,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:14',
  'Ariana Grande/ Mac Miller',
  'The Way',
  NULL,
  'pop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/06EL94D0TA27Ik0Ke5usbj',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:18',
  'Nina Simone',
  'To Be Young Gifted And Black',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7akewDMdzK63xitCfe3Wg4',
  'found',
  98,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:28',
  'Gregory Isaacs',
  'Night Nurse',
  NULL,
  'reggae, roots reggae, lovers rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4DQttwipnILl88cru3BRZx',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:33',
  'Angie stone',
  'Brotha',
  NULL,
  'neo soul, soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2sNAjuCXxyj8jHt93t9IJ9',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:37',
  'Public Enemy',
  'Bring the Noise',
  NULL,
  'old school hip hop, east coast hip hop, hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5BiuxSuxOZ9CcQ6SqICsDv',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:42',
  'Harold melvin and the Blue notes',
  'If You Don''t Know me by now',
  NULL,
  'philly soul, classic soul, motown',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7vVGf99q8zUfF4NijO2bfF',
  'found',
  93,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:46',
  'Mary J Blige',
  'Just Fine',
  NULL,
  'r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/33vzOPcd9FRirYGlCu32x4',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:50',
  'Kylie Minogue',
  'Can''t Get You Outta my head',
  NULL,
  'dance pop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3E7ZwUMJFqpsDOJzEkBrQ7',
  'found',
  89.8,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-02',
  '23:55',
  'Deitch, Teitel, Fribush',
  'DTF',
  NULL,
  'jazz funk, acid jazz',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1XMeKJ0YNs7UDMdx99maHG',
  'found',
  76.6,
  '2026-02-03 08:13:04'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-03';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:00',
  'Luther Vandross',
  'Never Too Much',
  'Never Too Much',
  'quiet storm, soul, classic soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3nFJbZCHP4d9vduKjJLdBL',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:05',
  'Santana, Lauryn Hill, CeeLo Green',
  'Do You Like the Way',
  'Supernatural',
  'neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7dP57u5hv9TqZnfTlklyrt',
  'found',
  91.9,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:11',
  'Sa-Ra Creative Partners',
  'Lines To Mars',
  'Lines To Mars - Single',
  'neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3aVlSW4D6iH8o3PmqvfQrp',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:15',
  'Janelle Monae',
  'Water Slide',
  'The Age of Pleasure',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:17',
  'Skinshape and Hollie Cook',
  'Lady Sun',
  'Another Side Of Skinshape',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:21',
  'Little Simz and Obongjayar',
  'Point and Kill',
  'Sometimes I Might Be Introvert',
  'alté',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/52y4KhkcAbYcogFg2u7UVP',
  'found',
  88.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:27',
  'Gil Scott-Heron and Jamie xx',
  'I''ll Take Care of U',
  'We''re New Here',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:31',
  'L''Eclair & Erin Kimberly',
  'Ring My Bell',
  'Ring My Bell - Single',
  'afro house',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7tXxiYUl5hLLfoXDsWPSG9',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:38',
  'Channel Tres',
  'Candy Paint (feat. Thundercat)',
  'Head Rush',
  'hip house',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6bM1Syx2wNZ7iYYvaKCQB9',
  'found',
  85.9,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:40',
  'Madvillain',
  'Money Folder (Four Tet Remix)',
  'Mad Villian Remixes: Four Tet - EP',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:45',
  'DRAMA',
  'Oblivian',
  'Platonic Romance',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:48',
  'Maribou State',
  'November Nights',
  'Portraits Outtakes - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7p0G6Wr2Sd8AnVYePdA7Gu',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:53',
  'Tirzah',
  'Make It Up',
  'Make It Up - Single',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2hHXTnhh2mxPiJ5vzk8lOB',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:57',
  'Sylvan Esso',
  'Coffee',
  'Sylvan Esso',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:02',
  'John Glacier',
  'Ocean Steppin'' (feat. Sampha)',
  'Like A Ribbon',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:06',
  'Thee Sacred Souls',
  'Live For You',
  'Got a Story to Tell',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2cgHekIPyuKxEEcV72tuy4',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:10',
  'Jill Scott',
  'Pressha',
  'To Whom This May Concern',
  'neo soul, quiet storm',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7KNcY52YH6VFnYYabMgxLM',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:17',
  'Amadou & Mariam and Busy Twist',
  'La vie est belle',
  'La vie est belle',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:18',
  'Barry Can''t Swim',
  'Chala (My Soul Is On A Loop)',
  'Chala (My Soul Is On A Loop) - Single',
  'jazz house, ethiopian jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2TidiXg42kktDIl8WhNPWk',
  'found',
  83.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:20',
  'Yaya Bey',
  'chasing the bus',
  'chasing the bus',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1B6LFIVRDyDi0L26PO3kPx',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:26',
  'Ndeh Ntumazah',
  'Something Good',
  'Something Bad/ Something Good',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5tN0cbLw8RGvntLeHCIOPJ',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:29',
  'Liam Benzvi',
  'Other Guys (feat. Blood Orange)',
  '...And His Splash Band',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5GaoGa1hdQojRMPztNzK57',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:32',
  'Leon Bridges',
  'Peaceful Place',
  'Leon',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7g4JvjIMwC4gi6gBPKOqnz',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:36',
  'Durand Jones & The Indications & Aaron Frazer',
  'Let''s Take Our Time',
  'Let''s Take Our Time b/w Flower Moon',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2C5G7y3CVchaQZDmCluKpG',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:40',
  'Roberta Flack',
  'Feel Like Makin'' Love',
  'Feel Like Makin'' Love',
  'adult standards, classic soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7gkboYtvhuXNS4EUwmFPcw',
  'found',
  100,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:44',
  'Angie Stone',
  'Stay for a While (feat. Anthony Hamilton)',
  'Stone Love',
  'neo soul, soul, r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5R7wbaxRvAhsSN6d1PxrEm',
  'found',
  73.5,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:48',
  'D''Angelo',
  'Send It On',
  'Voodoo',
  'neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5LIwaG8Wl9LfExcmiRQm7J',
  'found',
  100,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:54',
  'Common Saints',
  'Night Light',
  'Night Light - Single',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3AOjvIZEqBkxRiz7oonvnn',
  'found',
  98,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '04:28',
  'Panorama Jazz Band',
  'Shimmy Like My Sister Kate',
  NULL,
  'brass band',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/0frboUpSgjquvLA2sldbmi',
  'found',
  86,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:03',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:07',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:10',
  'Fats Waller And His Rhythm',
  'I`ve Got My Fingers Crossed',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:13',
  'Fats Waller',
  'The Sheik Of Araby',
  'The Definitive Fats Waller - Vol',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0rRdx9gUGZYa9KPqaPiSNm',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:18',
  'Bob Havens',
  'Digga, Digga, Do',
  'Back Home In New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3mZgDzDuASdNgmIh6kxSs8',
  'found',
  81.3,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:24',
  'Ethel Waters',
  'My Handy Man',
  'Cabin In The Sky [Milan]',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0d7sGmbm560m0SIRaHchcQ',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:27',
  'Louis Armstrong',
  'I`ve Got A Feeling I`m Falling',
  'Satch Plays Fats - A Tribute To',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7MHyRApG9yln6S6xcUY3PA',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:30',
  'Fritzel`s Jazz Band Feat. Jacque',
  'When I Grow Too Old To Dream',
  'Jazz Hit Parade',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:36',
  'Sidney Bechet',
  'I''ve Found a New Baby',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:39',
  'Johnny Dodds',
  'If You Want To Be My Sugar Papa',
  'Great Original Performances 1923',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1xZZXvYJk3jyHkce9NsD2Y',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:42',
  'Ytre Suloen Jazzensemble',
  'Goody Goody',
  'Way Down Yonder In New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:46',
  'Boswell Sisters',
  'Roll On, Mississippi, Roll On',
  'Riverboat Shuffle',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2TKplQR3KJt0UvflZpmXri',
  'found',
  84.4,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:49',
  'Louis Armstrong',
  'I`ve Got A Pocketful Of Dreams',
  'Pocketful Of Dreams, Vol. 3',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7ztKld3OkqIApFoeEpYbug',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:52',
  'New Orleans Helsinki Connection',
  'Oh! Didn`t He Ramble',
  'Paradise On Earth',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2j2L83G1Q0gqSGoEDm906R',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:01',
  'Shake''Em Up Jazz Band',
  'Wild Women Don''t Have The Blues',
  'The Boy In The Boat',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:04',
  'Gauthe`s, Jacques Creole Rice Ye',
  'Oh Daddy Blues',
  'Cassoulet Stomp',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:08',
  'Barry Martyn',
  'Undecided',
  'On The Sophisticated Side',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:12',
  'Louis Armstrong',
  'King Of The Zulus',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/5uQ3tTBShkRVfLNyQndzSM',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:17',
  'Storyville Stompers',
  'Old Rugged Cross',
  'Count Your Blessings',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:22',
  'Dr. Michael White',
  'Give It Up (Gypsy Second Line)',
  'Dancing In The Sky',
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3WwoO74AaIeh9aQloQ2NiC',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:29',
  'Fat Babies',
  'Till Times Get Better',
  '18th & Racine',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:34',
  'Troy Andrews & Lionel Ferbos',
  'Dreamboat',
  'Trombone Shorty Meets Lionel F',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:39',
  'Heritage Hall Jazz Band',
  'Up A Lazy River',
  'Cookin`',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:43',
  'George Girard',
  'Sweethearts On Parade',
  'Sounds Of New Orleans Vol. 6',
  'big band, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0grMqktzQfArnqQIyPXc3C',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:47',
  'Sayles Silverleaf Ragtimers',
  'If Ever I Cease To Love',
  'Sayles Silverleaf Ragtimers',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:51',
  'John Rankin',
  'If Ever I Cease To Love',
  'Fess` Mess',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6HvrEk7lHul74FXGsRKTI4',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:56',
  'Dave Ferrato',
  'Tchoupazine Triangle',
  'Later, On Decatur',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/34Q6SdHuXm5HjtodhR8w2H',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:11',
  'GALACTIC AND AL CARNIVAL TIME JOHNSON',
  'CARNIVALE TIME',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:11',
  'JON CLEARY',
  'ZULU COCONUTS',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:15',
  'JON CLEARY',
  'SO DAMN GOOD',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1t2KctU7G6O3CRLffn6cSg',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:19',
  'Chubby Carrier & The Bayou Swamp',
  'I Found My Woman Doing The Zyd',
  'Rockin` With Roy',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7u1a15N4t1ljjjCdE3cOuh',
  'found',
  78.3,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:36',
  'The Meters',
  'It Ain''t No Use',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3MaqEiVpKGxqd2JhMH9xR7',
  'found',
  98,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:36',
  'george porter jr',
  'tito''s dumpling machine',
  NULL,
  'soul blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3Hdr3V83E8qOQAWr366NlO',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:40',
  'John Boutte',
  'The Grass Is Greener',
  'All About Everything',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:45',
  'THE SOUL REBELS',
  'SLIDE BACK',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:51',
  'Anders Osborne',
  'Life Don`t Last That Long',
  'Spacedust & Ocean Views',
  'modern blues, jam band, blues rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1FvdIykhNv60ULZWjVIR3U',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:58',
  'ANDERS OSBORNE',
  'THOSE LONELY, LONELY NIGHTS',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:59',
  'Shake Em Up Jazz Band',
  'Shake Em Up',
  'Le Donne Mangiano Zucchero',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:02',
  'OMARI NEVILLE AND THE FUEL',
  'NORMAL',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:06',
  'Kyle Roussel',
  'African Gumbo',
  'Church Of New Orleans',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:16',
  'JOHN PAPA GROS',
  'Hurricane',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:28',
  'JOHN PAPA GROS',
  'ALL THAT I''VE GOT',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:14',
  'Cyril Neville And The Uptown All',
  'Big Chief Jolly',
  'For The Funk Of It',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:23',
  'D.K. Harrell',
  'What Real Men Do',
  'Talkin Heavy',
  'soul blues, blues, modern blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5AxQGAvMs8LPbwK8mWTFbq',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:27',
  'Susan Cowsill',
  'River of Love',
  'Lighthouse',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:33',
  'Marc Broussard',
  'Let The Music Get Down In Your S',
  'S.O.S.- Save Our Soul',
  'blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1uxLEMVayKkDdVMD4RC82E',
  'found',
  93.8,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:40',
  'Rebirth Brass Band',
  'Chameleon',
  'Take It To The Street',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/07fX8wgn6FMDzEZnlcwcT3',
  'found',
  98,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:51',
  'Corey Henry & The Treme Funkte',
  'Slip Into Darkness/HeyPockeyWa',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
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
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:02',
  'SUN RA',
  'lOVE IN oUTER SPACE',
  'THE nIGHT OF THE pURPLE mOON',
  'free jazz, experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/0W6Yvblx1EhyHD1UgdtKNa',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:06',
  'ALEX VENDLING',
  'aLL THE THINGS YOU ARE',
  'CONVERSATIONS',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:28',
  'KASSA OVERALL',
  'REBIRTH OF SLICK',
  'Cream',
  'jazz rap, nu jazz, experimental hip hop',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3h1DfQK2IVd5DYJZ0MYGgc',
  'found',
  84.4,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:28',
  'jAKOB BRO',
  'pENINSULA',
  'tAKING tURNS',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);