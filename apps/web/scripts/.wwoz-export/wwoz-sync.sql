-- WWOZ Database Export
-- Generated: 2026-02-18T10:30:07.902Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-18 07:37:06
-- Days: 3
-- Tracks: 405

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-15',
  'https://open.spotify.com/playlist/4oegwjMVZom9KVF38TGlDo',
  '{"totalTracks":157,"successfullyFound":107,"notFound":50,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-16 07:05:51',
  '2026-02-18 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-16',
  'https://open.spotify.com/playlist/4rKoWqLrfcYvLV1mTam8S2',
  '{"totalTracks":137,"successfullyFound":84,"notFound":53,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-16 07:05:51',
  '2026-02-18 10:30:06'
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
  '2026-02-18 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-15';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '03:31',
  'Tuba Skinny',
  'It''s Carnival Time',
  'Mardi Gras EP 2021',
  '',
  'Overnight Music - Sunday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '05:28',
  'Queen Ida',
  'Mardi Gras',
  'Mardi Gras',
  'zydeco, cajun',
  'Overnight Music - Sunday',
  NULL,
  'https://open.spotify.com/track/068ofqswUuM3Z6delPnPUn',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:01',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:07',
  'Ruby Braff',
  'You''re Sensational / I Love You, Samantha / True Love',
  'As Time Goes By',
  'jazz ballads, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5ZDJ8vemSylWXqjrhjRdBU',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:12',
  'Plas Johnson',
  'The World Is Waiting For The Sunrise',
  'The Warm Sound Of Plas Johnson Tenor Sax Volume Two',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:16',
  'Sarah Vaughan',
  'Tenderly',
  'Round Midnight',
  'vocal jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6TMoKdGcSIHjLfyzINFB5X',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:19',
  'The Oscar Peterson Trio',
  'Things Ain''t What They Used To Be',
  'Night Train',
  'jazz, cool jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/69enZcR3Rr9Bg3fNzHEp9y',
  'found',
  88,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:24',
  'Al Cohn',
  'While My Lady Sleeps',
  'The Classic 1950s Sessions',
  'cool jazz, jazz, hard bop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/152HwbhRVi2YnfSnctD9OC',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:27',
  'Mindy Carson',
  'I Cant'' Believe That You''re In Love With Me',
  'Making Eyes At Mindy',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:30',
  'The Modern Jazz Quartet Plus',
  'J. B. Blues',
  'Compact Jazz',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:35',
  'Johnny Hodges',
  'Back Beat',
  'The Best Of The Verve Years',
  'cool jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6YflSNd6sPlzlazQsA3QFK',
  'found',
  70.8,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:43',
  'Bill Henderson',
  'Sleepy',
  'His Complete Vee Jay Recordings Volume 1',
  'vocal jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/12IbxRas0E0iKbEO4d7wsb',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:47',
  'Bill Evans',
  'Mother Of Earl',
  'The Sideman Years',
  'jazz, cool jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4SPEAgB1HsaPdOr4PBIT9w',
  'found',
  91,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:52',
  'Eddie Chamblee',
  'Solitude',
  'Chamblee Special',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/00AC0fBekkSyFX4Gdh9Kj9',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:54',
  'Nancy Wilson',
  'If It''s The Last Thing I Do',
  'Four Classic Albums Plus',
  'vocal jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1Mflfu7ffEgull5owKZ6Te',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:57',
  'Ray Bryant',
  'Three Coins In A Fountain',
  'Four Classic Albums',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:00',
  'Ray Bryant',
  'Little Susie',
  'Four Classic Albums',
  'jazz, afro-cuban jazz, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6KrPPZ07tAov6R7UzqJsEj',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:04',
  'Illinois Jacquet',
  'For Once In My Life',
  'The Blues; That''s Me!',
  'swing music, jazz, hard bop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4lIzwk9kEGxV6WuHtn4B3g',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:11',
  'Ernie Andrews',
  'River''s Invitation',
  'How About Me',
  'vocal jazz, hard bop, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/53tw0w1JUV4UCpPuG8sMN7',
  'found',
  72.6,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:19',
  'Harry Edison',
  'Walkin With Sweets',
  'The Classic Albums Collection',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:25',
  'Miles Davis and Gil Evans',
  'Aos Pes Da Cruz',
  'Bossa Nova',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:30',
  'Woody Shaw',
  'It Might As Well Be Spring',
  'Jazz For Those Peaceful Moments',
  'hard bop, jazz, latin jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1yC28UEmSQMXWJ98WBtTao',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:40',
  'Connie Evingson',
  'Yesterday / Yesterdays',
  'Some Cats Know',
  'vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3dOKqLvAVrzWC8gmVDuGMi',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:45',
  'The Junior Mance Trio',
  'Ralph''s New Blues',
  'Three Classic Albums Plus',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:50',
  'Ben Webster and Johnny Hodges',
  'Val''s Lament',
  'The Complete 1960 Sextet Jazz Cellar Session',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:54',
  'Tom Waits',
  'Drunk On The Moon',
  'The Heart Of Saturday Night',
  'singer-songwriter, southern gothic',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4lCTpXPWIG8sJEp02cvKkU',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:59',
  'Una Mae Carlisle',
  'Blitzkrieg Baby',
  'Away From Base',
  'swing music, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0INBFZIRX8qMTnUXJJJGSd',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:03',
  'Tab Smith',
  'All My Life',
  'Jump Time',
  'swing music, classic blues, big band',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/38CQyLP7hY5ZVW6yQPBAa5',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:06',
  'Nat King Cole',
  'Cuba',
  '32 Live Original Songs',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:09',
  'The Alvin Alcorn Trio',
  'Some Day Sweetheart',
  'The Original New Orleans Jazz Brunch',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:13',
  'Sonny Stitt',
  'Walkin',
  'Jazz For A Lazy Day',
  'bebop, jazz, hard bop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4e7yw3SFzKyM3s8DCQUcNw',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:22',
  'Eddy Duchin and his Orchestra',
  'Lovely To Look At',
  'The Eddy Duchin Story',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:24',
  'Arnett Cobb',
  'Just A Closer Walk With Thee',
  'Show Time',
  'jazz ballads, hard bop, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6aDcrxrm8bt3Tnq5ZYoP3F',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:05',
  'Joh nny wiggs',
  'if ever I cease to love',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:06',
  'chuck carbo',
  'second line on monday',
  NULL,
  'doo-wop',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/5KRttKYcdnDqawHZlbM6Wy',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:07',
  'louis armstrong',
  'mardi gras march',
  NULL,
  'jazz, swing music, vocal jazz',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/0gcWlbt55p4WnqbxR9HUgC',
  'found',
  91,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:16',
  'louis dumaine`',
  'to wa bac a wa',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:20',
  'Bobby Williams Group',
  'Boogaloo Mardi Gras',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/3DX2QVmLKhtKap7u24C1Gx',
  'found',
  72.6,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:22',
  'james andrews',
  'zulu king',
  NULL,
  'brass band, cajun, zydeco',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/5DLoXLKo3z4Lg46Vp84B14',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:30',
  'irma thomas',
  'Mardi Gras Mambo',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:30',
  'lil queenie',
  'gumbo heaven',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:37',
  'lil queenie',
  'my darlin new orleans',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:41',
  'george porter',
  'mardi gras in New Orleans',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:44',
  'danny barker',
  'Chocko Mo Feendo Hey',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:54',
  'monk boudreaux with the forgotten souls brass band',
  'Big Chief',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:59',
  'remy and the new orleans people',
  'the mardi gras song',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:06',
  'dr john and chris barber',
  'big bass drum',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:08',
  'boco',
  'running the mardi gras',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/2BKFcrv5LR4vzwRWT9AVMM',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:13',
  'The Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Right)',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:19',
  'timothea',
  'mardi gras party',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:21',
  'chief smiley ricks indians of the nation',
  'talk that talk',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:36',
  'luther kent',
  'who dat at the mardi gras',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:39',
  'al carnival time johnson',
  'mardi gras strut',
  NULL,
  'cajun, zydeco',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/72lXOu541fIfhiedJDCYYO',
  'found',
  91,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:42',
  'bobby mg and the creeps',
  'dont be a mardi gras creep',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:51',
  'rocking sydney',
  'mardi gras second line',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:53',
  'OLYMPIA BRASS BAND',
  'mardi gras in new orleans',
  NULL,
  'brass band, cajun, zydeco',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/0QR95uiVATqSNRqu9PN3Hc',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:07',
  'Bruce Daigrepont',
  'PERRODIN TWO STEP',
  'Petit Cadeau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:08',
  'Beausoleil',
  'La Chanson de Mardi Gras',
  'Live! From the Left Coast',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/78pdrIglhve4k01gCpYGlr',
  'found',
  73.7,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:09',
  'Beausoleil',
  'Maman Rosin Boudrfeaux',
  'The Best of the Crawfish Years 1985-1991',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:14',
  'Zachary Richard',
  'Mardi Gras Mambo',
  'Mardi Gras in New Orleans',
  'cajun, zydeco, chanson québécoise',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3y1qaSydcnJxLkdLc3CPP0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:18',
  'Waylon Thibodeaux',
  'Iko-Iko',
  'Like A Real Cajun',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0y892uuQ8vSlNpcemegP2r',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:22',
  'Beau Jocque and the Zydeco Hi-Rollers',
  'Don''t Tell Your Mama, Don''t Tell Your Papa',
  'Pick Up on This!',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5nSKA2EVEjLiNwtKwv2EtY',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:23',
  'The Pine Leaf Boys',
  'Pine Grove Blues',
  'Allons Boire un Coup',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6FaFcTtaW6a51Hh9PyGfwA',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:30',
  'Wayne Toups & Zydecajun',
  'Bosco Blues',
  'Little Wooden Bax',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0doTfizvRlTWQrLgalU4MB',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:36',
  'Keith Frank & the Soileau Zydeco band',
  'Mardi Gras 2nd Line',
  'The Zydeco Icon',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:40',
  'Zydeco Force',
  'Do What you Wanta',
  'Cajun & Zydeco mardi Gras',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2qJ64CVUzHB49wvf5UlmHT',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:43',
  'Dr John',
  'My Indian Red',
  'Big Band Voodoo',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1W1k05Mz0NZuuRh6OltsCH',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:47',
  'Beau Jocque & The Zydeco Hi-Rollers',
  'Beau''s Mardi Gras',
  'Beau Jocque Boogie',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3LxVmTMbtCTEkrIQpLFMw5',
  'found',
  93.1,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:51',
  'Dwayne Dopsie and the Zydeco Hi-Rollers',
  'Dancing in the Streets',
  'Now is the Time',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:53',
  'Beausoleil',
  'Zydeco Gris-Gris',
  'Bayou Boogie',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2ckLilx6Gb52PYjNBsSGNi',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:57',
  'Lost Bayou Ramblers',
  'My Generation',
  'En Francais Cajun ''n'' Creole Rock ''n'' Roll',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:06',
  'Krewe Du Belge',
  'Grand chef',
  'De Bruxelles a New Orleans',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2FdY1vAkp2gWSbyDukk3jZ',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:06',
  'ReBirth Brass Band',
  'We Come to Party',
  'Mardi Gras The Language of New Orleans',
  'brass band, zydeco, new orleans bounce',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5TjRH2Kma9aJsNryosQQy6',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:15',
  'Sunpie',
  'Chanson Du Mardi Gras',
  'Mardi Gras The Language of New Orleans',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:22',
  'horace Trahan',
  'Get the Party Started',
  'All The Way',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0uWjxOdDcfQPdsTlDvlM1J',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:29',
  'Soul Express Brass Band w Corey Ledet',
  'Superstition',
  'En Francaise Vol 2',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:40',
  'Buckwheat Zydeco',
  'Zydeco Boogaloo',
  'Zydeco The Essential Collection',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/48xRgLvVyzTpYAHMZWqgTz',
  'found',
  75,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:40',
  'Zydeco Joe and the Laissez le bon temps Rouler',
  'You Can''t Rooster Like You Used To',
  'Black Cat',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:44',
  'Clifton chenier',
  'Party Down at the Blue Angel Club',
  'Clifton Chenier: King of Louisiana Blujes & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3ae7pYMYNAVEPTA96UsNIf',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:50',
  'Clifton chenier',
  'Take Off Your Dress',
  'Clifton Chenier: King of Louisiana Blues & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6vNThwQz1g6JqebrawPvFh',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:55',
  'Clifton Chenier',
  'What I''d Say',
  'Clifton Chenier: King of Louisiana Blues & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/02Mz7RSGfCnuEWWCmg5jc0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:02',
  'Todd Snider',
  'Enjoy Yourself',
  'East Nashville Skyline',
  'alt country, americana, outlaw country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3fevsds61d5JAzZvSWnI64',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:04',
  'John Prine',
  'When I Get to Heaven',
  'The Tree of Forgiveness',
  'americana, folk, singer-songwriter',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2FZaryIRIjIq6HloMNWdHS',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:08',
  'Linda Ronstadt',
  'We Need a Whole Lot More of Jesus (And a Lot Less Rock & Roll)',
  'Hand Sown...Home Grown',
  'country rock, mariachi',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4OM5nxrjvuuVf27782JsYT',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:10',
  'Paul Sanchez',
  'All Are Welcome In Heaven',
  'Red Beans and Ricely Yours...',
  'brass band, cajun, zydeco',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6UNzLDDoiAghsXQZqk5WZu',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:13',
  'Amy Helm',
  'Freedom for the Stallion',
  'This Too Shall Light',
  'americana, modern blues',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5eQ8R4FX7gLJcxn7bCgddz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:19',
  'Margo Cilker',
  'Crazy or Died',
  'Valley Of Heart''s Delight',
  'americana, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/25Vx8MaTmg41gH5aRgywrx',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:19',
  'Turnpike Troubadours',
  'Just Like Old Times',
  'Just Like Old Times - Single',
  'red dirt, texas country, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3ezrvjowvUvj1l5jFXtcP8',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:24',
  'Reed Alleman',
  'Don Dubuc',
  'Operation Gumbo Drop',
  'cajun',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3j6EOdR6TmcLWR8flJ29OB',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:26',
  'Dr. John',
  'Chickee Le Pas',
  'N''Awlinz Dis, Dat, or D''Udda',
  'cajun, zydeco',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6JU1TsyWRQnGYh8TW2ymPF',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:35',
  'Mason Via',
  'See It While You Can (National Parks Song)',
  'See It While You Can (National Parks Song) - Single',
  'newgrass, bluegrass',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/15d7oy5OgyfIHYdVZlU7yv',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:42',
  'Mason Via',
  'Mardi Gras (feat. Sierra Ferrell)',
  'Mardi Gras (feat. Sierra Ferrell) - Single',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:46',
  'Truckstop Honeymoon',
  'Mardi Gras In Kansas',
  'Great Big Family',
  'bluegrass, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0B5YT9d1bL4WMkOf0JNBJc',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:49',
  'Johnette Downing',
  'Who Got the Baby in the King Cake? (feat. Scott Billington)',
  'Swamp Romp',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:51',
  'Louie Ludwig',
  'The Things You Done on a Mardi Gras Day',
  'The Things You Done on a Mardi Gras Day - Single',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6OJe6nVfP2jly2G4dD4167',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:55',
  'ron cuccia and the jazz poetry group',
  'streets / my darlin new orleans',
  'ron cuccia and the jazz poetry group',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:07',
  'Carsie Blanton',
  'FBI',
  'The Red Album Vol 2',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2JxvAmrRvRf2ENEQ752CDJ',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:09',
  'Mark Rubin, Jew of Oklahoma',
  'Goon with the Hammer',
  'Goon with the Hammer - Single',
  'alt country, rockabilly',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0fgBU3QoKbGrUBJDoj5fOD',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:12',
  'Jesse Welles',
  'Join Ice',
  'No Kings',
  'folk punk, folk',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/19vif5x0vGqHgc3GEirUqN',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:14',
  'Jesse Welles',
  'No Kings',
  'No Kings',
  'folk punk, folk',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3M2S0jh9YLJzKXKGI4zpWv',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:17',
  'Paul Thorn',
  'I Don''t Like Half the Folks I Love',
  'The Best of Paul Thorn',
  'americana, roots rock, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6tWHBYPdiTBHMG4JD0ZQe0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:21',
  'Jeffrey Martin',
  'I Know What I Know',
  'I Know What I Know - Single',
  'americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6OOJ1ocnXSMGEva60uAX4g',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:26',
  'Gangstagrass',
  'Your Land (feat. Branjae)',
  'No Time For Enemies',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:37',
  'J. Monque''d',
  'Indian Princess',
  'After the Beep',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:42',
  'Zachary Richard',
  'Down On Second Stree',
  NULL,
  'cajun, zydeco, chanson québécoise',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5ugwBC9fTurGVuJBpV36ur',
  'found',
  88.8,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:42',
  'Zachary Richard',
  'handa wanda',
  'Mardi Gras Mambo',
  'cajun, zydeco, chanson québécoise',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1KOSazxfZZzPKlVxfLLcjp',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:46',
  'Lost Bayou Ramblers',
  'Les mardi gras',
  'ASTEUR',
  'cajun, zydeco',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/62JmWt8ElrQMgHowm8ta0s',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:51',
  'Sunipie and the Louisiana Sunspots',
  'Mardi Gras',
  'Lick a Hot Skillet',
  'zydeco, cajun',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3Q9TqtCDNVyTcPwQQiLmz9',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:58',
  'Camile Baudoin',
  'I Ain''t Ready For It',
  'This Old House',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:04',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:07',
  'Al Johnson',
  'Carnival Time',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:10',
  'Wild Magnolias',
  'Smoke My Peace Pipe',
  'NOJHF Jazz Fest (D5)',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1oAsFFpyvGtJAvBPuwuDXg',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:17',
  'Radiators',
  'Smokin` Hole',
  'Bucket of Fish',
  'jam band, cajun, zydeco',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2LbLQDXh4TIlvDJX8I54wL',
  'found',
  73.6,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:28',
  'Galatic, Big Chief Monk Boudreaux, Golden Eaglean',
  'sew sew sew',
  'Galactic vintage reserve',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:32',
  'The Wild Magnolias',
  'Life Is A Carnival',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1CYt8hnBEwigMBnEWA13a0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:38',
  'Kermit Ruffins',
  'If You`re A Viper',
  'The Big Butter & Egg Man',
  'brass band, cajun',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1eKI0z1DFipcEl6KGK7qub',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:41',
  'Shotgun Jazz Band',
  'Weed Smoker''s Dream',
  'Don''t Give Up the Ship',
  'swing music, ragtime',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/47VZZwD4gDn0L4XxhLMWuE',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:52',
  'Bo Dollis',
  'Injuns Here They Come',
  NULL,
  'cajun, zydeco, brass band',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3ovyDZNOAdEl91BwVvVzEg',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:54',
  'New Orleans Suspects',
  'Carnivale',
  'Ouroboros',
  'brass band, cajun',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/4yTowIVyyMIQ7bMajgrWP4',
  'found',
  88.2,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:06',
  'Meters',
  'Live Wire',
  'Funkify Your Life- The Meters An',
  'funk, soul, jazz funk',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/671KFkzwROV2wWPFNFRGnf',
  'found',
  73.9,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:08',
  'Seva Venet',
  'Celebrate (At The Mardi Gras)',
  'Unsung',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0WRc5w2XPH8St260jSKeUz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:13',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans [Mardi',
  'cajun, zydeco, classic blues',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:19',
  'Harry Connick Jr.',
  'Smokey Mary',
  'Smokey Mary',
  'big band, christmas, vocal jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0fvcL4yrfFB8EeiLI16MkO',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:23',
  'Storyville Stompers',
  'Mardi Gras Stomp',
  'A Brass Menagerie',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:32',
  'Little Queenie',
  'If Ever I Cease To Love',
  'Purple Heart',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/42X7UAxXvRPg8JigOwrmYh',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:37',
  'Jon Cleary',
  'Zulu Coconuts',
  NULL,
  'cajun, jazz funk',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:41',
  'New Orleans Nightcrawlers',
  'North Rampart Street Parade',
  'Too Much To Hold',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:45',
  'Basin Street Six',
  'South Rampart Street Parade',
  'The Six Complete Circle Recordin',
  'ragtime',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/7x6VgQcMnc85P6PGMEUldz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:49',
  'Earl King',
  'Street Parade',
  'Mardi Gras In New Orleans [Mardi',
  'new orleans bounce, classic blues, cajun',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:52',
  'Burris',
  'Waiting For The Parade To Come',
  'Waiting For The Parade To Come',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:57',
  'Serabee',
  'The Greatest Party Of All',
  NULL,
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1r7ag4sDWm3a8z0dzWFc4K',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:00',
  'Colossus Brass Band',
  'Royal St. Parade',
  'Sing On',
  'brass band',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/7kfjo7hWrHKqkvo72XgHRR',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:10',
  'Papa Mali, Kirk Joseph, Big Chief Monk Bourdeaux',
  'EArly In the Morning',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:12',
  'Dirty Dozen Brass Band',
  'Ain`t Nothin` But A Party',
  'Medicated Magic',
  'brass band, jam band, cajun',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/25mkHWcpdViKPnOph1ic69',
  'found',
  90.3,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:22',
  'treme brass band',
  'hey pocky way',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:27',
  'Cara Harrison',
  'Indian Red',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/0ZAWGkz8w3GJjXylv9gODc',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:34',
  'Treme Brass Band',
  'Golden Crown',
  'Treme Traditions',
  'brass band, cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/7zyRKdlrRqoFrvyvq5w5YG',
  'found',
  87.9,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:42',
  'Bo Dollis & The Wild Magnolias',
  'Hell Out The Way',
  'A New Kind Of Funk',
  'cajun, brass band, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/0oFDCZxF4kyYzxzr4ihjXD',
  'found',
  90.9,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:42',
  'Marcia Ball, Irma Thomas, and Tr',
  'Sing It',
  'Sing It!',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:47',
  'New Orleans Nightcrawlers',
  'Funky Liza',
  'Funknicity',
  'brass band, cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/4RotEf5oCe7uK9xt2Plhbz',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:55',
  'Hunks Of Coal',
  'Santa''s Gonna Make it for Mardi',
  'Stocking Stuffers Vol. 1',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/68zLZ2sSToSpdWJ7t4MemJ',
  'found',
  83.2,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:07',
  'Alex McMurray',
  'Gluestick Situation (SINGLE)',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:13',
  'Flagboy Giz',
  'Shallow Water',
  'The Culture',
  'new orleans bounce, bounce, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/4EHEeeYtBRnL6ds3Vk5FXP',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:16',
  'Dr. John',
  'Save The Bones For Henry Jones',
  'Mercernary',
  'cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/4ghDqsorItacSyVOZ0FL0O',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:20',
  'Professor Longhair',
  'Rum And Coca-Cola',
  'Byrd Lives (CD01)',
  'cajun, zydeco, classic blues',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/6Xzilgy5K6pdzDem5iwgGM',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:24',
  'Neville Brothers',
  'Voodoo',
  'Live On Planet Earth',
  'cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/465JohWeaz2FKbdKVmXvrJ',
  'found',
  86,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:29',
  'John Rankin',
  'If Ever I Cease To Love',
  'Fess` Mess',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/6HvrEk7lHul74FXGsRKTI4',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:39',
  'Baby Dodds Trio',
  'My Indian Red',
  'Jazz A''La Creole',
  'ragtime',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/1VVcNmW450cKwe7HPR6XyZ',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:47',
  'Radiators',
  'King Earl',
  'Welcome To The Monkey House',
  'jam band, cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/2Rf1XM9lj5xWwnGiGSVDIX',
  'found',
  73.6,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:48',
  'Lulu And The Broadsides',
  'Ice Cream Man',
  'Lulu And The Broadsides',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/3os4nAXm4pZGOvQKyjdpJC',
  'found',
  82.8,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:53',
  '101 Runners',
  'Let`s Go Get `Em',
  'New Orleans Funk 101',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '20:00',
  'Wild Magnolias',
  'All On Mardi Gras Day',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  77.5,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:05',
  'Rebirth Brass Band',
  'Rebirth Melody/Casanova',
  'Hot Venom',
  'brass band, zydeco, new orleans bounce',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1lBSI8fNdGADHsucrftGSY',
  'found',
  98,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:16',
  'Dr. John',
  'Mardi Gras Day',
  'Remedies',
  'cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:24',
  'The Wild Tchoupitoulas',
  'Indian Red',
  'The Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5lAA2A2nEUCYYWfKCJhvGP',
  'found',
  98,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:32',
  'Hundred & One Runners',
  'Shallow Water',
  'Best of New Orleans (Mardi Gras Indians)',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5gJKDqC7UidqCmquObHy9N',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:37',
  'Hundred & One Runners',
  'Injuns Here Dey Come',
  'Best of New Orleans (Mardi Gras Indians)',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1oGqcvkZPkxLndniVtqzRi',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:44',
  'Ivan Neville, Trombone Shorty, Ben Jaffe, Charlie Gabriel',
  'Greatest Place On Earth',
  'Touch My Soul',
  'jam band, soul blues, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0SpGdqhcIm99dHcsnPVMKc',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:48',
  'Professor Longhair',
  'Mardi Gras In New Orleans',
  'Rum and Coke',
  'cajun, zydeco, classic blues',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5RLM4QZIpPjzqDAIjLkZEa',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:53',
  'Kermit Ruffins, Rebirth Brass Band',
  'Mardi Gras Day',
  'Throwback',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6KbSbDvr0tmMawXb4waMby',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:58',
  'James Andrews, Dr. John, Donald Harrison, Trombone Shorty, Mark',
  'Zulu King',
  'James Andrews and Trombone Shorty Brothers',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6qAU4NkGPWzgOTJmgcsI4q',
  'found',
  89.5,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:04',
  'Rebirth Brass Band',
  'LET''S GO GET ''EM',
  'Rebirth of New Orleans',
  'brass band, zydeco, new orleans bounce',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3uL2fgvb2HX0QmmheDxXV9',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:08',
  'Professor Longhair, Earl King',
  'Big Chief - Complete Version',
  'Ultimate Mardi Gras',
  'cajun, zydeco, classic blues',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3heU4aUor9NIFsgvFAJMnL',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:13',
  'The Neville Brothers',
  'Hey Pocky Way',
  'Fiyo On The Bayou',
  'cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/48byBopt3UYEymfD8NoCuI',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:18',
  'Meters',
  'They All Ask''d for You',
  'Fire on the Bayou',
  'funk, soul, jazz funk',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/7mPP2cZ3HUfx6M3NhnolrR',
  'found',
  73.9,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:22',
  'The Wild Tchoupitoulas',
  'Big Chief Got A Golden Crown',
  'The Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1syAcbLLO8U4m7r0W3kmo9',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:26',
  'Wid Tchoupitoulas',
  'Hey Hey ( Indian Comin)',
  'The Wild Tchoupitoulas',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:31',
  'The Wild Magnolias',
  'All On A Mardi Gras Day',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:34',
  'Professor Longhair',
  'Big Chief',
  'Fess at Home',
  'cajun, zydeco, classic blues',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3ipsm3j6cWBCELjv9GhAlR',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:42',
  'Stop, Inc',
  'The second Line',
  'Ultimate Mardi Gras',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5YizW243gThmie7RaxwL7N',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:53',
  'Baby Dodds Trio',
  'Tootie Ma Is A Big Fine Thing',
  'Jazz A''La Creole',
  'ragtime',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/17QS5h4YToOTKsPsjSAl2x',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:56',
  'Benny Grunch',
  'Ain''t No Place to Pee on Mardi Gras Day',
  'Grunch Road',
  'cajun, christmas',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5FEYKr03PbmzMiodSj1D2D',
  'found',
  77.4,
  '2026-02-16 07:05:52'
);

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