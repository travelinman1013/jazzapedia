-- WWOZ Database Export
-- Generated: 2026-03-04T10:30:07.530Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-04 07:48:21
-- Days: 3
-- Tracks: 460

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-01',
  'https://open.spotify.com/playlist/28ExMZ47SjPQhsNtBKCxU8',
  '{"totalTracks":161,"successfullyFound":100,"notFound":61,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-02 07:16:54',
  '2026-03-04 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-02',
  'https://open.spotify.com/playlist/29AIWoGXJoIhvbWM04mYlB',
  '{"totalTracks":184,"successfullyFound":118,"notFound":66,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-02 07:16:54',
  '2026-03-04 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-03',
  'https://open.spotify.com/playlist/4ChoMWokVtqMwA3VyqVc8E',
  '{"totalTracks":96,"successfullyFound":55,"notFound":41,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-03 07:39:57',
  '2026-03-04 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-03-01';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:00',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:06',
  'Charles Mingus',
  'Bedspread',
  'The Young Rebel',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:09',
  'Johnny Hodges and his Orchestra',
  'Globetrotter',
  'The Clef & Norgran Albums 1952-4',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:12',
  'Lee Wiley',
  'Someone To Watch Over Me',
  'The Legendary Lee Wiley Collectors Items 1931-1955',
  'vocal jazz, big band',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/62qFsbVwsdEoR7e80zNkmb',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:16',
  'Ruby Braff',
  'Yesterdays',
  'Three Classic Albums Plus',
  'jazz ballads, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0qO1Srh3wDJQH2KiJntWDH',
  'found',
  98,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:20',
  'Lester Young',
  'I Guess I''ll Have To Change My Plan',
  'Four Classic Albums Second Set',
  'jazz, cool jazz, bebop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0G1hOjlv35tcw3i1mgv8xG',
  'found',
  98,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:30',
  'Melody Gardot',
  'Goodnite',
  'Women Of Jazz',
  'vocal jazz, french jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0IaFIfEvXWNZaJvunmOK2z',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:33',
  'Cootie Williams',
  'Stingy Blues',
  'Echoes Of Harlem Big Bands',
  'swing music, big band, bebop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3CFmJvPT3iczQpNMsthuFa',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:36',
  'Buster Smith',
  'King Alcohol',
  'The Legendary Buster Smith',
  'swing music, big band',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1xvyUTYzilLN0F9mbFJh26',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:40',
  'Jeri Southern',
  'Two Sleepy People',
  'The Complete Roulette Recordings 1957-1958',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:43',
  'Zoot Sims',
  'How Long Has This Been Going On?',
  'Zoot Sims And The Gershwin Brothers',
  'cool jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/2bteVSwQdsVK2mg1T5Ezpa',
  'found',
  72.5,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:48',
  'Carrie Wicks',
  'Ruse Of Roussillon',
  'Barely There',
  'vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0Xl3wh9TRaTIgCXJJNGdDc',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:53',
  'Red Richards',
  'I''ve Grown Accustomed To Your Face',
  'Dreamy',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/2EpJ1esfQeEKpyRocRtfCM',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '06:58',
  'Glenn Miller and his Orchestra',
  'Cherokee',
  '80th Anniversary Of The Army Air Force Band',
  'big band, swing music',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1piK60g4Yw3B0cYjaGysL9',
  'found',
  82,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:01',
  'Gene Ammons',
  'Close Your Eyes',
  'Six Classic Albums',
  'jazz, hard bop, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3KJ2qd58PZF26uPR9WF8cq',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:03',
  'Gene Ammons',
  'Canadian Sunset',
  'Six Classic Albums',
  'jazz, hard bop, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0zLisqJwBErrC3ja1cQc60',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:09',
  'Martha Tilton',
  'G''bye Now',
  'The Complete Standard Transcriptions',
  'big band, swing music',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0G7tPakuE4Iiqt3Dl8aTPz',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:12',
  'Benny Waters',
  'Besame Mucho',
  'Birdland Birthday Live At 95',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:20',
  'Thisbe Vos',
  'My Favorite Things',
  'Sophistication',
  'vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5cFeYihmmba8lqxjsxGans',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:26',
  'Mewrcer Ellington and his Orchestra',
  'Black And Tan Fantasy',
  'Stepping Into Swing Society',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:30',
  'Edmond Hall',
  'Off The Road',
  'Four Classic Albums Plus',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:38',
  'Helyne Stewart',
  'The Man I Love',
  'The best Voices Time Forgot',
  'vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0Qwpxee9aDzXPomR7zE6g2',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:41',
  'George Roberts',
  'I''m Nobody''s Baby',
  'Meet Mr. Roberts / Bottoms Up',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:44',
  'Paul Desmond and Gerry Mulligan',
  'Star Dust',
  'Two Of A Mind',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:53',
  'Dinah Washington',
  'I Wanna Be Loved',
  'Compact Jazz',
  'vocal jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0XTwZcawE3Nrre8y6Heinl',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:55',
  'Barney Kessel',
  'Prelude To A Kiss',
  'The First Four Albums',
  'bebop, cool jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/472p7gLKi4FA0B3UlxuDE1',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '07:59',
  'Houston Person',
  'Again',
  'Reminiscing At Rudy''s',
  'jazz, jazz ballads, soul jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4HUO96fAzXimAVfy7qid3G',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '08:06',
  'Betty Blake',
  'How About You',
  'Betty Blake Sings In A Tender Mood',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '08:08',
  'Art Tatum',
  'Love For Sale',
  'Teh Genius Of Art Tatum',
  'jazz, ragtime, bebop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5qjaCmbGzj4YYsWswjHCSh',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '08:15',
  'Ike Quebec',
  'Minor Impulse',
  'Four Classic Albums',
  'hard bop, bossa nova, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5UU7gEhJjhDlEzgxunYhXj',
  'found',
  73.6,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '08:22',
  'Morgana King',
  'You''re Not So Easy To Forget',
  'Four Classic Albums',
  'vocal jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6rU620Vdk8TI3sQu4UKbbQ',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
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
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:01',
  'RED FOLEY',
  'PEACE IN THE VALLEY',
  'COUNTRY MUSIC',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:05',
  'MARK HAUSER',
  'RICH',
  'GOSPEL TRAIN',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:07',
  'LARRY CORDELE',
  'TWO COATS',
  'GIVE ME JESUS',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:12',
  'LARRY CORDELE',
  'YOU CAN''T TAKE IT WITH YOU',
  'ALL STAR DUETS',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:18',
  'LOUVIN BROTHERS2:44',
  'Cash On The Barrelhead',
  'CLOSE HARMONY',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:18',
  'TOMMY AND FRED',
  'Fortune Teller',
  'TOMMY AND FRED',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:24',
  'NCLE DAVCE MACON',
  'SHE''S GOT THE MONEY',
  'TRAVELIN DOWN THE ROAD',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:27',
  'ALLISON BROWN AND STEVE MARTIN',
  'GIRL HAVE SOME MOBEY',
  'SAFE SENSE AND SENSIBLE',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:34',
  'THE HONEYCUTTE3RS',
  'IN THE MONEY',
  'IRENE',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:37',
  'CHRIS HILLMAN',
  'when i get a little money',
  'BIDEN MY TIME',
  'country rock, americana, bluegrass',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/0zN6c2FWLR4sMsTbxveg6N',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:44',
  'KATHY KALLICK',
  'CHICKENS',
  'CHRONICLES',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:46',
  'TRIGGER AND THE DUDES',
  'CONGRESS MAN',
  'COWBOY LOGIC',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:48',
  'BRUCE MOLSKY',
  'ALL GONE NOW',
  'CLOSING THE GAP',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:51',
  'APPACHIAN ROADSHOW',
  'SALES TAX ON THE WOMEN',
  'TRIBULATION',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '10:57',
  'PARTINGTON AND SWEENEY',
  'TIMES ARE GERTRTING HARD',
  'COMMON PLACES',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '11:43',
  'LP KELLY',
  'LOVIN WONT PAY MY RENT',
  'LOVESONGS FO9R LOVER',
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/339ZSPJggLVhUE8BQFbnCz',
  'found',
  85.2,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:01',
  'Bruce Daigrepont',
  'Perrodin Two Step',
  'Petit Cadueau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
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
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:04',
  'Veranda',
  'San Ardillon',
  'Veranda',
  'pop québécoise, chanson québécoise',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4RIrNBYX1LWiereW2tdA9d',
  'found',
  81.3,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:06',
  'Bewey Balfa',
  'La Valse Du Canada',
  'Cajun Legend',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:10',
  'Mark Savoy',
  'La Talles De Ronces',
  'Oh What A Nightht',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:18',
  'Angelas LeJeune',
  'Bayou Pom Pom One Step',
  'Let Me Play This for You',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:22',
  'Iry LeJeune',
  'Love Bridge Waltz',
  'Laissez le Bon Temps Rouler',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5PZyASzcaKwXmmQrzUeOtQ',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:26',
  'The Carriere Brothers',
  'Madame Faielle',
  'Musique Creole',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2ecXHYonObhxVRxt3k6n9m',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:26',
  'Varise Conner',
  'Polka A Varise',
  'Louisana Folk Masters',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:28',
  'Octa Clark',
  'Back O''Town Two Step',
  'You Can''t Go wrong if you play it right',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:33',
  'Voylen Esthay',
  'Chruch Point Breakdown',
  'Crowley Two Step',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:35',
  'Lawrence Walker',
  'Unlucky Waltz',
  'essential Collection Lawrence Walker',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6naoa2TjSdKttDhE3EZ69c',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:39',
  'Austin Pitre',
  'Cajun Waltz',
  'Opelousas Waltz',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3STGhIKYNxJlXICKhyNxr2',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:42',
  'Aldus Roger',
  'Over the Waves',
  'Aldus Roger A Cajun Legend',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:51',
  'Joe Bonsall',
  'Chere Tout Toute',
  'Cajun Jamboree',
  'cajun, zydeco, southern gospel',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7qtijBeuqRFqkL2RSGspic',
  'found',
  83.2,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:55',
  'Johnny Sonnier and Jimmy Breaux',
  'Not Lonesome Anymore',
  'A Tribute to Aldus Roger',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '12:59',
  'Belton Richard',
  'San Antonio Rose',
  'Louisiana Cajun French Versions of Popular Songs',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4RponECYQFCx4UYWu4Qr0k',
  'found',
  90,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:02',
  'Steve Riley and the Mamou Playboys',
  'Between Eunice and Opelousas',
  'The Best of Steve Riley and the Mamou Playboys',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3dPnLWsqg98r3yZTkibQKc',
  'found',
  83.2,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:04',
  'Zachary Richard',
  'Jena Blues',
  'Gombo',
  'cajun, zydeco, chanson québécoise',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6dbLDXruM0Q5tbKk5O282V',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:09',
  'Steve Riley and the Mamou Playboys',
  'Tiens Bon',
  'The Best of Steve Riley and the Mamou Playboys',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6VpFBqUFDPcE1U63zQj1VL',
  'found',
  73.7,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:16',
  'The bluerunners',
  'Nonc Tete Dure',
  'Medicine Show Vol 3',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/51WNy6MMh9TykKBjsatjkD',
  'found',
  85.1,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:17',
  'Feufollet',
  'Des Promesses',
  'En Couleurs',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7yVkrec6Wi6COBLoPWQle3',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:21',
  'Beausoleil',
  'It''s YOu I Love',
  'Bayou Boogie',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6Kd5zt1bB6Q2WsxTveDm53',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:24',
  'Beausoleil',
  'Plus Tu Tournes',
  'Live! From the Left coast',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1aNlceosWVyiMvYDy5lW1J',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:32',
  'Horace Trahan',
  'Keep walking',
  'Keep Walking',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:36',
  'Dwayne Dopsie',
  'I''m Happy',
  'Now is the TIme',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:42',
  'Clfton Chenier',
  'Doppin'' the Rock',
  'KIng of Louisiana Blues and Zydeco',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:42',
  'Keith Frank',
  'Petite Au la Grosse',
  'The Zydeco Icon',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:52',
  'Clifton Chenier',
  'Louisiana blues',
  'Clifton Chenier King of the Louisana Blues and Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5pIJ1uSe31blujfpUPQGbx',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:57',
  'Clifton Chenier',
  'Keep on Scratching',
  'Clifton Chenier King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1nXPX9dkjFet3G7rZ6F0TM',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '13:59',
  'Zydeco Joe',
  'They Tried to Steal My chicken',
  'Black Cat',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:03',
  'Dusky Waters',
  'For The Sea',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/40eocCtAWGHRnVpIyLLiaW',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:05',
  'Leyla McCalla',
  'Let It Fall',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6amXKbtuM6W5hVxrG0G6Ho',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:08',
  'Joy Clark',
  'Here',
  NULL,
  'southern gothic',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0HWEDRgamBwZfXOt7uRriL',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:15',
  'Britti',
  'There Aint Nothing',
  NULL,
  'retro soul, soul blues, soul jazz',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4b6EWpxCg4sSE013PniaDc',
  'found',
  83.2,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:15',
  'Erica Falls',
  'Old Records',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/01NHBhMaEIqQFQnFMuvAGD',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:21',
  'Teena Marie',
  'Animal Of Desire',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:24',
  'Mia Borders, John Papa Gros',
  'Sugar In My Soul',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/52I1Pvu780LrfpsCGnafuc',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:33',
  'Calactic & Irma Thomas',
  'Where I Belong',
  'Where I Belong',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:37',
  'Tank & The Bangas',
  'Rhythm Of Life',
  NULL,
  'alternative r&b',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6vvz4gjybj33PdSyvh5LVK',
  'found',
  87.9,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:41',
  'Big Freedia, Queen Latifah, Dawn Richard',
  'Celebration Remix',
  NULL,
  'new orleans bounce, bounce, ballroom vogue',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7pQBMij61NSmct4byswcua',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:46',
  'Original Pinettes Brass Band',
  'We Got The Music',
  'Finally',
  'brass band',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7iEvK0V1mNMXHCZuLHoZtW',
  'found',
  90.4,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:50',
  'Anjelika Jelly Joseph, Tidal Wave Brass Band, Roca B',
  'We Are Young',
  NULL,
  'brass band, new orleans bounce, bounce',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6bluUvF1JStpV0gpk8GTxH',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '14:57',
  'Mahalia Jackson',
  'Don''t Let Nobody Turn You Around',
  NULL,
  'traditional gospel, gospel, christmas',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3oOqSuuanq8NBbBCS6jLeL',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:03',
  'Marva Wright',
  'Heartbreaking Woman',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:05',
  'Merry Clayton',
  'Sho Nuff',
  NULL,
  'classic soul',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4x2ZSXlo6JfwNYwI691muD',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:08',
  'The Dixie Cups',
  'Iko Iko, Acapella Version',
  NULL,
  'doo-wop',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4xEExIpYUROCxdcjdN0bjr',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:10',
  'Sweet Emma Barrett',
  'Breeze',
  NULL,
  'ragtime',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4yb8HRigKjGLw12dFPUTOY',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:17',
  'Charmaine Neville',
  'Up, Up, Up',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4uF48fPzRTsyXDeNcGYVVx',
  'found',
  83.2,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:22',
  'Shawan Rice',
  'Juniper',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5a5ZJBi5wZvf5KFev8AJ3T',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:26',
  'Lilli Lewis',
  'The Great Divide',
  NULL,
  'southern gothic, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4VtssfMjAhgyOAERsUwero',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:30',
  'Amethyst Starr',
  'Strawberry Pie, Demo Version',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3bYjsHaBvwgdVd8xHZ0TUy',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:35',
  'AJ Haynes, Noise For Now, Seratones',
  'Everything Is Change',
  NULL,
  'zydeco, cajun, funk rock',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4jrTCS6lpYueUiB87EICCm',
  'found',
  84.3,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:38',
  'Chloe Marie',
  'Good Things',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2X4H1yJV7H5E1cJWPfxSSN',
  'found',
  72,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:45',
  'Sabine Mccalla',
  'Two Of Hearts',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7mSf9XQnlHSHQLjDYCCWJc',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:48',
  'Kelly Love Jones, Deezle',
  'I''m In Love',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5e9WR1IxNBFeWda3JUIT9R',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '15:52',
  'Arsene Delay',
  'Comin Home',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/484FDYHxGvfUw2t0oRIkLW',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:02',
  'Chris Connor & Maynard Ferguson',
  'I Feel A Song Coming On',
  'Two''s Company',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:03',
  'Cole Williams, Corey Henry',
  'Sign Of The Times',
  NULL,
  'retro soul, brass band',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1N9JbHB7BijRnhaxAOJKtD',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:08',
  'DAVE BRUBECK TRIO',
  'I''ll Remember April',
  'DAVE BRUBECK TRIO',
  'jazz, cool jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5x1ue4fvYuqQG4UMzTVqYm',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:08',
  'HOWARD RUMSEY''S LIGHTOUSE ALL STARS, VOL. 4',
  'AQUARIUM',
  'LIGHTHOUSE ALL STARS, VOL. 4',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:11',
  'ANDRE PREVIN, SHELLY MANNE & RED MITCHELL',
  'SOMETHING''S COMING',
  'WEST SIDE STORY',
  'ballet, classical, orchestral',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2flLjdkpoYF6XgSHlmpc6h',
  'found',
  88,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:15',
  'ANDRE PREVIN, SHELLY MANNE, RED MITCHELL',
  'JET SONG',
  'WEST SIDE STORY',
  'ballet, classical, orchestral',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5t3uveWPDknj13e1iiRdyd',
  'found',
  88,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:22',
  'MODERN JAZZ QUARTET',
  'BLUES IN B FLAT',
  'BLUES ON BACH',
  'cool jazz, jazz, hard bop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0ljYt8DbCa1QlV88gQsJ6m',
  'found',
  88.2,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:27',
  'GEORGE SHEARING',
  'I DIDN''T KNOW WHAT TIME IT WAS',
  'WHEN LIGHTS ARE LOW',
  'cool jazz, jazz, vocal jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0SsLcRcyJZOyra4nCM8vfE',
  'found',
  100,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:33',
  'HOWARD RUMSEY''S LIGHTHOUSE ALL STARS',
  'LUAU',
  'SUNDAY JAZZ A LA LIGHTHOUSE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:36',
  'HOWARD RUMSEY''S LIGHTHOUSE ALLSTARS',
  'COMIN'' THRU THE RYE BREAD',
  'SUNDAY JAZZ A LA LIGHTHOUSE VOL. 2',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:42',
  'RUSS GARCIA',
  'BUTTER DUCK',
  'WIGVILLE',
  'exotica, space music',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1gOij7p2p7wfnolJ9xJIRY',
  'found',
  80.8,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:51',
  'THE RAMSEY LEWIS TRIO',
  'SOUND OF SPRING',
  'SOUND OF SPRING',
  'soul jazz, jazz, christmas',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3K9A8OvxFTJrFaPzS8fh71',
  'found',
  88.1,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:52',
  'THE RAMSEY LEWIS TRIO',
  'IT MIGHT AS WELL BE SPRING',
  'SOUND OF SPRING',
  'soul jazz, jazz, christmas',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2cfz9c8Pz7w5fPEekiUtQA',
  'found',
  88.1,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '16:55',
  'THE CHICO HAMILTON QUINTET',
  'SLEEPY SLEPT HERE',
  'THE CHICO HAMILTON QUINTET',
  'cool jazz, hard bop, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/7wiSF22AezuhOoKGa1kYyY',
  'found',
  73.5,
  '2026-03-02 07:16:54'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:02',
  'CHICO HAMILTON QUINTET',
  'TAKING A CHANCE ON LOVE',
  'CHICO HAMILTON QUINTET IN HI FI',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:05',
  'TERRY GIBBS',
  'FUNKY SERENADE',
  'SWINGIN'' WITH TERRY GIBBS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:08',
  'BUD SHANK AND THREE TROMBONES',
  'VALVE IN HEAD',
  'BUD SHANK AND THREE TROMBONES',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:12',
  'BUD SHANK',
  'COOL FOOL',
  'BUD SHANK AND THREE TROMBONES',
  'cool jazz, jazz, brazilian jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/4rIBl4FzgtKHqSk5H2QdKy',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:20',
  'OSCAR PETERSON TRIO',
  'WALTZ FOR DEBBIE',
  'WALTZ FOR DEBBY',
  'jazz, cool jazz, jazz ballads',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6B1NWv4jhJvSMDJ7A2oOuM',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:26',
  'DAVE BRUBECK TRIO',
  'Sweet Georgia Brown',
  'DISTINCTIVE RHYTHM INSTRUMENTALS',
  'jazz, cool jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6uX1ju4Uk0dolOPVZjEI7d',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:27',
  'HOWARD RUMSEY''S LIGHTHOUSE ALLSTARS',
  'MAMBO LOS FELIZ',
  'HOWARD RUMSEY''S LIGHTHOUSE ALLSTARS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:32',
  'THE HOWARD RUMSEY LIGHTHOUSE ALLSTARS',
  'JAZZ INVENTION',
  'HOWARD RUMSEY''S LIGHTHOUSE ALL STARS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:33',
  'HOWARD RUMSEY LIGHTHOUSE ALLSTARS',
  'Love Letters',
  'HOWARD RUMSEY''S LIGHTHOUSE ALLSTARS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:35',
  'HOWARD RUMSEY''S LIGHTHOUSE ALL STARS',
  'WITCH DOCTOR',
  'HOWARD RUMSEY''S LIGHTHOUSE ALLSTARS',
  'cool jazz, hard bop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/4tCvMhZHqeQQWUmn8whe1I',
  'found',
  75.7,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:40',
  'CHET BAKER SEXTET',
  'THE HALF DOZENS',
  'CHET BAKER SEXTET',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:43',
  'RED GARLAND',
  'Let Me See',
  'RED GARLAND AT THE PRELUDE',
  'hard bop, jazz, jazz ballads',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1PHawrnOg9DQg7H7IY3Pr4',
  'found',
  71.1,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:55',
  'LIONEL HAMPTON',
  'FOR BETTER OR WORSE',
  'SILVER VIBES',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '17:59',
  'Gene Krupa Orchestra',
  'Thanks for the Boogie Ride',
  '45 Single - Okeh',
  'big band, swing music',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6OlXaFu6dst9anqntQm8Nz',
  'found',
  88.3,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '19:56',
  'Louis Armstrong',
  'Hepcat''s Ball',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:13',
  'Burning Spear',
  'Spear Burning',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2SIGzEGQGDfE5cvAKNGhek',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:14',
  'Burning Spear',
  'We Are Going',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4ySgntBvpkrXNjnFB5rnlF',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:21',
  'Burning Spear',
  'The Youth',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5OdtIAkUd7nzbhguIoE4aQ',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:37',
  'Burning Spear',
  'Children Of Today',
  'Living Dub, Volume One',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:37',
  'Burning Spear',
  'Present',
  'Living Dub, Volume One',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:38',
  'Burning Spear',
  'New Experience',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/792Kp2CysiSrXnVa46Tb5y',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:40',
  'Burning Spear',
  'African Postman',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5gsihF9PO9ZXrPtg4gV7wZ',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:48',
  'Burning Spear',
  'Happy Day',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/68wHLOa71igoBfmZVOdrus',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:57',
  'Burning Spear',
  'Associate',
  'Living Dub, Volume One',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '20:59',
  'Burning Spear',
  'Woman I Love You',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5PdO4MKM8tJLsx9hT7rqwq',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:02',
  'Burning Spear',
  'Jah Boto',
  'Living Dub, Volume One',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:03',
  'Burning Spear',
  'In Those Days',
  'Living Dub, Volume One',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:08',
  'Burning Spear',
  'Queen Of The Mountain',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4Nq7HGpSOo6JxULrUvixjI',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:14',
  'Burning Spear',
  'Creation Rebel',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5mXkGEtAPJ1QC5ebCDK8tN',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:16',
  'Burning Spear',
  'Mistress Music',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5Unr4FkXUKfDihPArDTd9k',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:20',
  'Burning Spear',
  'Built This City',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2CmMAg0iQaNr5nWsLxj5LD',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:26',
  'Burning Spear',
  'Run Come Dub',
  'Living Dub, Volume One',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:32',
  'Burning Spear',
  'Help Us',
  'Living Dub, Volume One',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:32',
  'Burning Spear',
  'The Wilderness',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3ZQuY5Od282OBc2L2iSSCz',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:42',
  'Burning Spear',
  'Driver',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6WQUjhYtjZnJwS7yk2La60',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:46',
  'Burning Spear',
  'Door Peep',
  'Live in Paris Zenith ''88',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/7q2BWQLNa47lJDhaE688UV',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '21:58',
  'Burning Spear',
  'Call On You',
  'Rocking Time',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/10c0PNFRukvlEpO4Fiaa6Y',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '22:05',
  'Corey Ledet Zydeco & Black Magic',
  'Creole Cruising (Live)',
  'Live in Alaska',
  'zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/41v5vIicop39pEUu0YDUsN',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '22:15',
  'Bonerama',
  'Meter''s Medley',
  'So Much Love',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '22:25',
  'The Haar',
  'Anachie Gordon',
  'The Lost Day',
  'celtic, folk',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/07JH1UyEWQasTJyjmLVBsd',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '22:33',
  'Cassie Watson Francillon, Sasha Masakowski',
  'Chocolate',
  'Suite',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0dxej2OJccuz7bWAsA6XRL',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '22:43',
  'DAVID BANDROWSKI',
  'Dapper Dan',
  'SERPENTINE',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '22:50',
  'Coletivo Superjazz',
  'Jahzz Revolta',
  'Mixtape Pirata, Vol. 1',
  'brazilian jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0YPLcZnbCg1OYQm6aNFoZe',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:00',
  'Amir EISaffar',
  'Ghazalu',
  'New Quartet Live at Pierre Boulez Saal',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:08',
  'Gao Hong, Royal Philharmonic Orchestra, Michael Poll',
  'Guangxi Impression: II. Summer Cicadas',
  'Symphony of Self',
  'orchestral, classical, djent',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0azrXKvOH08QI2Wk73lptF',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:17',
  'Meriheini Luoto, Signe, Awake Percussion, Saxtronauts, Luoto luo',
  'Unessa, lumessa',
  'Talven uneen vaipuen',
  'experimental, avant-garde',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/7Lon6RP0d45MfhvAf70CLy',
  'found',
  87.7,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:27',
  'Triveni, Barbara Eva Ardenois, Ingrid Rodebjer, Hanna Ryynanen',
  'Twilight',
  'Two Winters, One Midnight Sun (Nordic Landscapes)',
  'folk, traditional folk',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2oQGPM30dzhTdnh16AucZi',
  'found',
  85.7,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:34',
  'The Flying Horse Big Band, George Garzone, Jeff Rupert',
  'Pharaoh''s Daughter',
  'Unbridled the Flying Horse Big Band Meets George Garzone',
  'big band, vocal jazz, jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0NUT6Cy74ATTwklZySYxxx',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:44',
  'Cassie Watson Francillon, Val Jeanty',
  'STAND - KANPE',
  'KaFOU (Debut Remaster)',
  'latin jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6yX76Fo0v1u8o0MYe0SD6w',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:51',
  'Clementine March, It Was All A Dream',
  'The Power of Your Dreams',
  'Powder Keg',
  'baroque pop',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0tJTqJGZ3kReUEu8aCZ0ZL',
  'found',
  84.3,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-01',
  '23:59',
  'Rahsaan Roland Kirk',
  'No Tonic Press',
  'Rip, Rig, and Panic',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 07:16:55'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-02';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:04',
  'Nicholas Payton',
  'Let It Ride',
  'Triune',
  'jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1iBzsbnJTL3RoWrv3zAXkE',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:12',
  'Irreversible Entanglements',
  'Lagrimas del Mar',
  'Open the Gates',
  'free jazz, experimental jazz, spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7Hn2QzqGHoVe81bMFBwVSX',
  'found',
  81.5,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:20',
  'Miles Davis',
  'Blues No. 2',
  'Circle in the Round',
  'jazz, cool jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0EaDbBpEwPtXF8dkL4sVCE',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:26',
  'Buddy Guy',
  'Hooker Thing',
  'Ain''t Done With the Blues',
  'blues, classic blues, blues rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6ktfWlozfz7MpBC9OVOKm8',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:28',
  'Buddy Guy',
  'One From Lightnin''',
  NULL,
  'blues, classic blues, blues rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1asIdR65yIpsYm9pGyCXHS',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:29',
  'Ingfried Hoffmann',
  'Let Live and Die',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6xcMIOBFRPlH8W6ZUB8xk1',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:33',
  'Creole String Beans',
  'Let the Money Drop',
  'Golden Crown',
  'zydeco, cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2zMmwQeOP6yk7MDDv26KMa',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:37',
  'Burnt Sugar, The Arkestra Chamber',
  'Back Pain',
  'If You Can''t Dazzle Them With Your Brilliance',
  'indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0t6QWND9mOql5rn5PIDrYC',
  'found',
  87.4,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:44',
  'John Hammond',
  '2:19',
  'Wicked Grin',
  'blues, country blues, blues rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2uQfgaV796QLHJCVOP4bn1',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:49',
  'Johnnie Taylor',
  'Sixteen Tons',
  NULL,
  'blues, soul blues, zydeco',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1AGRC7WrU2KVgaU1VJSLBV',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:51',
  'Billy Paul',
  'Everything Must Change',
  'Got My Head on Straight',
  'philly soul, classic soul, soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7g998XsaG9lBUaDXuEs5xr',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:56',
  'Skeletons',
  'Marathon Man',
  'In the Kingdom of Dub',
  'retro soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2bLhKZHa4Ao477zfsiNPDv',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:02',
  'Zeke Bleek',
  'Bleaker by the Week',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2SG7lImvcjHVhitKk4lxX7',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:04',
  'Amy Winehouse',
  'What Is It About Men',
  'Frank',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0dA0ono4Zz0IBc02pYlWIQ',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:08',
  'Helen Gillet',
  'Lettre a Kissinger',
  'ReBelle',
  'cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0ulWucrpfGBeAglseZO2XC',
  'found',
  89.6,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:14',
  'Nuwki Nu',
  'War is not the Answer',
  'Cosmic Forces',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:15',
  'Sariyah Idan',
  'I''m a Warrior',
  'Live in Berlin',
  'dub, dubstep, native american music',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/01WD3nMWzHuKl0QrtCEGHA',
  'found',
  70.4,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:21',
  'Martin Luther King, Jr.',
  'Unjust Evil and Futile War',
  NULL,
  'spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1ivirjVgZmgZfsOG70lcsv',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:25',
  'Allen Ginsberg',
  'America',
  NULL,
  'spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6XVVPboSP8bsaNHRditnk9',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:26',
  'Valerie June w/Carla Thomas',
  'African Proverb/Two Roads',
  'The Moon and Stars: Prescriptions for Dreamers',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:31',
  'Yusef Lateef',
  'Warm Fire',
  '1984',
  'jazz, hard bop, free jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0BNk2xPZB2fsu11ez91YR3',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:36',
  'Panorama Jazz Band w/Yulena Velasquez',
  'La Negra Atilia',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:39',
  'Paul McCartney & Wings',
  'Let It Be',
  'One Hand Clapping Sessions',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0G4Yve4fDmKGDdckGt6nC3',
  'found',
  75.3,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:41',
  'Burnt Sugar Arkestra Chamber',
  'Chicken Scratching Dre Shows SaxTone the Way',
  NULL,
  'indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3nNHIbOWfJ1qI71Yhou9U2',
  'found',
  89.8,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:41',
  'Burnt Sugar Arkestra Chamber',
  'Naomi''s Lullaby',
  'More Than Posthuman, Rise of the Mojosexual Cotillion',
  'indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7jEihm5bMTaawebwfy5WJY',
  'found',
  91.6,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:45',
  'Pyeng Threadgill',
  'Love in Vain Blues',
  'Sweet Home: The Music of Robert Johnson',
  'soul blues',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/498RwTR8JYrsUdZNdh7W2i',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:48',
  'Ethan',
  'At the Labyrinth',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:50',
  'Hank Mobley',
  'This I Dig of You',
  'Soul Station',
  'hard bop, jazz, bebop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3VBLGJLIeClZVG7HveHmG8',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:56',
  'Charles Mingus',
  'Duke Ellington''s Sound of Love',
  'Changes Two',
  'jazz, hard bop, bebop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6hXQ9XEL2TBc9E0SgAvc0l',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:00',
  'King Pleasure',
  'Parker''s Mood',
  'Golden Days',
  'vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5851IyaolohKE7xJL7TqdB',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:03',
  'Jack Kerouac w/Steve Allen',
  'Charlie Parker',
  'Poetry for the Beat Generation',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:07',
  'Melody Gardot, Donny McCaslin, Ben Monder, Craig Taborn',
  'The King of 52nd Street (Chan''s Declaration)',
  'The Passion of Charlie Parker',
  'vocal jazz, french jazz, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2Z49IHSe7C8lEPMKMVuDPY',
  'found',
  72.5,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:10',
  'Charlie Parker',
  'Koko',
  'Best of the Complete Savoy & Dial Studio Recordings',
  'bebop, jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0fh5g0221cWO1oYQw6d3aW',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:14',
  'Charlie Parker w/Al Haig, Kenny Dorham, Max Roach, Tommy Potter',
  'Little Willie Leaps',
  NULL,
  'bebop, jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0qOfllgfH0LAiJajpPvQmU',
  'found',
  95.2,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:17',
  'Fluid Motion',
  'Whispers',
  NULL,
  'free jazz, tropical music, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5qoE8WNUNs8KYXhRw566Mq',
  'found',
  73,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:23',
  'Billy Harper',
  'Amazing Grace',
  'Blueprints of Jazz',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:28',
  'Nina Simone',
  'Zongo',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:32',
  'Eartha Kitt',
  'Lilac Tree',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:35',
  'Kat Edmondson',
  'I''d Be a Fool',
  'Old Fashioned Gal',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:40',
  'Krown/Washington/Batiste',
  'Another Day in the Life',
  'Soul Understanding',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:43',
  'The Afrodiziac''s Jazz',
  'Belomi Benna',
  'Immigration',
  'jazz funk, latin jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/21w3sh1VAuzGsXzDZQQ9js',
  'found',
  98,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:51',
  'Col. Bruce Hampton & the Aquarium Rescue Unit',
  'Basically Frightened',
  NULL,
  'jam band, jazz fusion',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/59uT1xFkvMQxAyq1q2VVMM',
  'found',
  90,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:55',
  'John Hammond w/Tom Waits',
  'I Know I''ve Been Changed',
  'Wicked Grin',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:57',
  'Louis Prima',
  'Buona Sera',
  'Angelina [Prima]',
  'swing music, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0DXm5n7SBxCED9ssTvrx2J',
  'found',
  81.7,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '10:33',
  'Danny Barker',
  'Palm Court Strut',
  'New Orleans Jazz Man & Raconteur',
  '',
  'Traditional Jazz',
  'Dan Meyer',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '10:40',
  'Champion Jack Dupree (feat Allen',
  'Bring Me Flowers/Rub A Little Bo',
  'NOJHF Jazz Fest (D1)',
  '',
  'Traditional Jazz',
  'Dan Meyer',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:03',
  'Sally Baby''s Silver Dollars',
  'Devil''s Shoe String',
  'Sally Baby''s Silver Dollars',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:15',
  'Isaac Eady',
  'Oughta Be',
  'Amponsah',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/26oytTGMJkxvA8q2ab44xq',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:31',
  'Better Than Ezra',
  'Double Shot Of My Baby''s Love',
  'Death Valley EP',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1ZDU84iu27D3QUjhQw3lln',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:31',
  'David Bandrowski',
  'Spoil With The Rest',
  'Serpentine',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:47',
  'Andrew Jobin And Thick Smoke',
  'Lost Weekend',
  'Lost Weekend',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:48',
  'DGB',
  'Breaux Bridge Rag',
  'Doussan, Garrett, Benoit',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:52',
  'Daywalkers',
  'Long Time No Sea',
  'Down To The Quarter',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1qJEY1rXaoOntp9C0uU4fV',
  'found',
  74.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:02',
  'Galactic',
  'Bobski 2000',
  'Vintage Reserve',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/3usSGJY75q12cO88dFPJJq',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:14',
  'Honey Island Swamp Band',
  'Reincarnation Blues',
  'Honey Island Swamp Band',
  'cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5Wvym56itA0bZWqcLTQidX',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:21',
  'Drew Landry',
  'Power',
  'Exiles - The Dockside Tapes - Vol. 1',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:26',
  'Bas Clas',
  'Wonder Why',
  'Fortunes Told',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6rSriwkdZMyEQbeCCU2LFc',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:28',
  'Dusky Waters',
  'Pass it On',
  'Pass It On',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1W02kD5QvwT9pgSDjVKRsZ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:47',
  'Acantha Lang',
  'Til I Get it Right',
  'Til I Get It Right',
  'retro soul, soul blues, acid jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2QCU31t6zZqcZ2ZNQMqQXH',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:49',
  'Sabine McCalla',
  'Save My Soul',
  'Folk',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0IgDMAzTTrdNAo5shxkIxb',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:51',
  'Kenny Neal/Quiana Lynell/Lee Os',
  'Let Life Flow (2025)',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:55',
  'Sarah Quintana',
  'Baby Don''t',
  'Baby Don''t',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4oWnl9uV2amSlGWtoAXRze',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:59',
  'Meschiya Lake And The Little Big',
  'Hey Mary Wanna',
  'Bad Kids Club',
  'swing music, ragtime',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5Z6TNKutIQpLUfAZbVVGvu',
  'found',
  92,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:04',
  'Dave Bartholomew',
  'I`m Walking',
  'Walking To New Orleans',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:14',
  'Irma Thomas',
  'I`m Your Puppet',
  'My Heart`s In Memphis- The Songs',
  'classic soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4HvYfVXRFLnpzHbKu8ruOw',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:17',
  'Paul Sanchez',
  'All The Broken Hearted Artists',
  'Love Always Finds A Way',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2CeFiYmdbV2dVYEORgwFc8',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:25',
  'John Papa Gros',
  'Yes We Can',
  'Giants',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:36',
  'The Nude Party',
  'Look Who''s Back',
  'Look Who''s Back',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2W47LNJJ6D46rRTMnT8wxJ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:47',
  'The Nude Party',
  'Carolyn',
  'Look Who''s Back',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/7DYeS5358nphVMk5Ibz49e',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:48',
  'Allen Toussaint',
  'Country John',
  'Allen Toussaint Collection',
  'cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5cmT2hwMDGzNEeLq4nIp0B',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:52',
  'Robin Barnes',
  'Eh Ma Belle',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:04',
  'willie mitchell',
  'bum daddy',
  'the best of willie mitchell',
  'northern soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4vfZd8qNglo1Q0vnDKweoZ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:05',
  'HOWLIN WOLF',
  'How Many More Years',
  'MOANIN IN THE MOONLIGHT',
  'blues, classic blues, blues rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0MkINaEoNBJfG9G6ewd4xM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:07',
  'SUNNYLAND SLIM',
  'Everything''s Gonna Be Alright',
  'CHICAGO AIN''T NOTHIN'' BUT A BLUES BAND',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:10',
  'DON HOLLINGER',
  'I HAD A NIGHTMARE',
  'LOST DEEP SOUL TREASURES VOL.1',
  'southern gothic',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6ccj08mauvQobhjrZMRX0Y',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:12',
  'JOHNNY JENKINS',
  'LEAVING TRUNK',
  'TON-TON MACOUTE!',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5UoFBGgxGxOg8SmbqGcDHs',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:16',
  'ALBERT AMMONS',
  'Boogie Woogie Blues',
  'THE FIRST DAY',
  'boogie-woogie, ragtime, boogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5OI0Fy5ydnnu34Z5YFCRPm',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:20',
  'DWAYNE DOPSIE',
  'BACK IN THE WOODS',
  'UP IN FLAMES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:23',
  'JB LENOIR',
  'SHOT ON JAMES MEREDITH',
  'VIETNAM BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:27',
  'BLIND TEDDY DARBY',
  'SHE THINKS SHE''S SLICK',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER 1929-37',
  'country blues, ragtime, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4yuwZOljDNu73opKtPCIfm',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:30',
  'MAXWELL STREET JIMMY',
  'YOU GOT TO REAP WHAT YOU SOW',
  'THE GEORGE MITCHELL COLLECTION',
  'country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4E3CZqWYs6f2vVMet6r1NM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:35',
  'PEG LEG HOWELL',
  'PEG LEG STOMP',
  'PEG LEG HOWELL AND HIS GANG',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/670gYZAOfPOhm0jTap50p0',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:37',
  'ROLLING STONES',
  '2120 SOUTH MICHIGAN AVE',
  NULL,
  'classic rock, rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1IrjpIRZCQP9B2sEBhsO4u',
  'found',
  70.4,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:39',
  'THOMAS SHAW',
  'stop and listen',
  'BORN IN TEXAS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:42',
  'BOBBY WOMACK',
  'JUBILEE (DON''T LET NOBODY TURN YOU AROUND)',
  'THE BRAVEST MAN IN THE UNIVERSE',
  'soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2gBzOz1qzxJUge1qphEBhU',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:44',
  'ROBERT JOHNSON',
  'CLIMBING HIGH MOUINTAINS',
  'SORROW COME PASS ME AROUND',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:47',
  'CLARENCE GARLOW',
  'BON TON ROULA',
  'LOUISIANA SWAMP BLUES',
  'zydeco, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2YuhmmvGdRtSbuaaekJV4b',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:49',
  'GOOD ROCKIN'' CHARLES',
  'SHAKE YOUR BOOGIE',
  'THE DEVIL''S MUSIC',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1k1NaZgqJ1ipIoSAoznYIW',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:52',
  'PAPA LIGHTFOOT',
  'WINE, WHISKEY & WOMEN',
  'SOUTHERN BLUES MASTERS',
  'classic blues, blues, rockabilly',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/18iM3IW9YnQhEzPuoNL8BH',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:56',
  'JR KIMBROUGH',
  'LONESOME IN MY HOME',
  'SAD DAYS, LONELY NIGHTS',
  'blues, country blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3jt4oI3xqRTCMraQfU6XuE',
  'found',
  70.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:00',
  'JOHN FAHEY',
  'How Long',
  'THE DANCE OF DEATH AND OTHER PLANTATION FAVORITES',
  'folk',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6LmvspNZsfDeTR5pJQWSvG',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:04',
  'FREAKWATER',
  'QUEEN BEE',
  'END TIME',
  'alt country, americana, southern gothic',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3QVU2p27KcKmag3sLKY23b',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:08',
  'doc watson',
  'country blues',
  'doc watson',
  'bluegrass, newgrass, traditional folk',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4TXtgaRXTR68GKG9p9bZQU',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:12',
  'BILLY BIRD',
  'MILL MAN BLUES',
  'COUNTRY BLUES COLLECTOR ITEMS 1928-33',
  'country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6Nteil5NpmYMyEXBtCFPKM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:15',
  'RL BURNSIDE',
  'rollin'' and tumblin''',
  'BURNSIDE ON BURNSIDE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:20',
  'BOBBY PARKER',
  'DON''T DRIVE ME AWAY',
  'LOST DEEP SOUL TREASURES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:23',
  'TONY RANSON AND THE JACKSON FOUR',
  'CURIOSITY',
  'CURIOUSITIES: THE ACE 70s SINGLES AND SESSIONS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:25',
  'LITTLE AARON',
  'east st. louis',
  'DOWN ON BROADWAY AND MAIN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:27',
  'JAY MCSHANN',
  'HOOTIE BLUES',
  'BOPPERS AND THE BLUES',
  'blues, boogie-woogie, jazz',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0TCGKfuNsLNRgPZ061bovl',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:33',
  'TOMMY TUCKER',
  'My Babe',
  'MOTHER TUCKER',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6LxhcLv6UIX9Z7D8s9W8pP',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:36',
  'LEROY WASHINGTON',
  'WILD CHERRY',
  'LOUISIANA SWAMP BLUES',
  'classic blues, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7t0VAAFsoPi8vgSugWNBwI',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:39',
  'WALTER WOLFMAN WASHINGTON AND THE ROADMASTERS',
  'Glass House',
  'LIVE 2002',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:45',
  'WALTER DAVIS',
  'ASHES IN MY WHISKEY',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER VOL.2',
  'blues, ragtime, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1se8lWU80UIe740wIfraUM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:48',
  'ROY MONTRELL',
  'OOH WOW',
  'BUCK JUMP JIVE VOL.8',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:51',
  'RUBBERLEGS WILLIAMS',
  '4-F BLUES',
  'BOPPERS AND THE BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:53',
  'MORRIS PEJOE',
  'SHE WALKED RIGHT IN',
  'STOMPIN'' VOL.5',
  'classic blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0MSgVBezVF9VpHC49GCDI4',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:56',
  'WILLIE MITCHELL',
  'BAD EYE',
  'GREATEST HITS',
  'northern soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7d5UJFsmgvLRPxbMPza0Mt',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
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
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:00',
  'Brandee Younger',
  'Spirit U Will',
  'Somewhere Different',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3vFhPOosuunf5NpHdaM31e',
  'found',
  98,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:07',
  'Brandee Younger',
  'Beautiful Is Black',
  'Somewhere Different',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3dmcXOt8lLxwHcJV9kjHw2',
  'found',
  98,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:14',
  'Brandee Younger',
  'Tickled Pink',
  'Somewhere Different',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/71FaCRVZuDQgO4h3qWb7Lk',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:23',
  'QUIANA LYNELL',
  'LA VIE EN ROSE',
  'PILLOW TALK',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:27',
  'QUIANA LYNELL',
  'COME SUNDAY/I WISH I KNEW (HOW IT WOULD FEEL TO BE FREE)',
  'A ;LITTLE LOVE',
  'jazz pop, vocal jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4ixfWGQxiEUHQyk3mxMl1k',
  'found',
  97.8,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:30',
  'LILLIAN BOUTTE',
  'C''EST SI BON',
  'YOU''VE GOTTA ;LOVE POPS',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:50',
  'TOPSY CHAPMAN & SOLID HARMONY',
  'WRAP YOUR TROUBLES IN DREAMS',
  '3 IN 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:59',
  'Hot 8 Brass Band',
  'Big Tuba (Clean)',
  'Big Tuba',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:08',
  'Dave Stryker, Jared Gold, Mclenty Hunter Jr.',
  'Dexterity',
  'Blue Fire: The Van Gelder Session',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:14',
  'CHARLIE APICELLA & IRON CITY',
  'OYE COMO VA',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2ntcjDeUxMcgbaVxClvhpp',
  'found',
  90.6,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:22',
  'CHARLIE APICELLA & IRON CITY',
  'LEMON RIND',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/55zUtMoIqt47Wd69INZFwd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:32',
  'CHARLIE APICELLA & IRON CITY',
  'REMEMBERING B.B.KING',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5FIDUvbPB4aCPEKEfTovr1',
  'found',
  90.8,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:41',
  'CHARLIE APICELLA & IRON CITY',
  'IDRIS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7m6ulA2cguNBmsi3dM43Xg',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:57',
  'CHARLIE APICELLA & IRON CITY',
  'BIG BOSS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2uRigALcdHBQPQ9ngOZwBY',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:08',
  'CHARLIE APICELLA & IRON CITY',
  'SPARKS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2rGUxXIBshfRLjXqLPZ7UM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:15',
  'Archie Shepp and The Attica Blue',
  'The Cry Of My People',
  'I Hear The Sound',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:23',
  'Archie Shepp and The Attica Blue',
  'Ballad For A Child',
  'I Hear The Sound',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:29',
  'NINA SIMONE',
  'WILD AS THE WIND',
  'WILD IS THE WIND - HIGH PRISTESS OF SOUL',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:37',
  'BILLIE HOLIDAY',
  'BODY AND SOUL',
  'THE SILVER COLLECTION',
  'jazz, vocal jazz, big band',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7c7yHHFdYkqBzS1DG3UIFq',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:46',
  'Wes Montgomery',
  'Soft Winds',
  'In The Beginning',
  'jazz, hard bop, cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0OjssFAEgBjUz8h5QRffcL',
  'found',
  98,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:00',
  'Jackie HArris',
  'No Kind Of Man',
  'CHESS 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:06',
  'Charles Sheffield',
  'I Got Fever',
  'Goldband 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4vY5EZZHZS2b0oW9lzey55',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:07',
  'bILLY bOY aRNOLD',
  'pRISONERS pLEA',
  'VIVID 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5csDnVK953wIwOcXktOayj',
  'found',
  79,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:09',
  'Sonny Boy Williamson',
  'One Way Out',
  'CHECKER 45',
  'blues, classic blues, country blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/45o8oihNTaFdxnAmm4SRHp',
  'found',
  89.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:17',
  'Eddie Bo',
  'I Had Little Girl',
  'AT LAST 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:18',
  'Gerald McCauley',
  'Wondering',
  'TIMMION 45',
  'retro soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0Iv3jXkYpZfngAC4dqpc8P',
  'found',
  70,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:19',
  'SOuthland Gospel',
  'Ive MAde A Name In Jesus',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:21',
  'Charles Clark',
  'Hidden Charms',
  'ARTISTIC 45',
  'ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0cgODWN43Po3Jkm37cOR5V',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:24',
  'Irma Thomas',
  'Hittin On Nothing',
  'INSTANT 45',
  'classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/25y7e0hFdW0coA6CP0JBZD',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:26',
  'Kip ANderson',
  'Watch You Work It Out',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:31',
  'Tes TAylor',
  'Dont Lie',
  'OKEH 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:33',
  'Muddy Waters',
  'All Aboard',
  'CHESS 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1EiMZTzOWtmq3Yw72Lym80',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:39',
  'The FAntastic Family Aires',
  'Jesus I Love You',
  'RC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:44',
  'Chet Poison Ivey',
  'Shake A Poo Poo',
  'TRC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:44',
  'Zilla MAyes',
  'All I Want Is You',
  'TOU-SEA 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5hjimJL3xC0VIjYuzPBvRY',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:45',
  'Josphine TAylor',
  'Good Lovin',
  'MAR V LUS 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:51',
  'Helen Hollins SIngers',
  'Deliverence',
  'HOB 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:54',
  'Bo Diddley',
  'Shes fFine, Shes Mine',
  'CHECKER 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:56',
  'Johnny Adams',
  'Life Is Just A Struggle',
  'RIC 45',
  'soul blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2G2KhcfJGxiGWdFQo6QUEa',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:01',
  'Idris Muhammad',
  'Im LAzy Thats All',
  'Turns This Mutha Out',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:13',
  'Gabrielle Cavassa',
  'Prisoner of Love',
  'Diavola',
  'vocal jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/51I6YF51LiQf3bZALtnHUO',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:15',
  'KoKo TAylor',
  'I Got What It TAkes',
  'CHECKER 45',
  'blues, classic blues, soul blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4HiVCsnJH9P35ASXLL60ip',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:18',
  'Barbara West',
  'Im A Fool For You Baby',
  'RONN 45',
  'northern soul, soul jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6QfIETJzqQK84JN46rqLRv',
  'found',
  89.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:20',
  'The Kelley Brothers',
  'HAvent I Been Good To You',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:24',
  'Elder WArd ad the Gospel Four',
  'The LAst Road',
  'Sacred SOul-D vine Spirituals Vol 3',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:33',
  'JAmes Carr',
  'At The DArk Emnd Of the STreet',
  'The Goldwax Story',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:34',
  'Aretha Franklin',
  'Are YOu Sure',
  'ARETHA with tthe Ray Bryant Combo',
  'soul, motown, classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0qlEfa1IwCNGtqToVL4jwI',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:39',
  'HArold Melvin and the Blue Notes',
  'I Hope That We Can Be Togther Soon',
  'To Be True',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:40',
  'Jeff PArker',
  'My Ideal',
  'Forfolks',
  'ambient jazz, experimental jazz, free jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7j904X3sfe3J7lrBbu1XcR',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:44',
  'PAtsy Cline',
  'Heartaches',
  'Sentimentally Yours',
  'classic country',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6ytSu75pkFMciW5ra0fRtJ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:52',
  'John Lee Hooker',
  'Im So Excited',
  'VEEJAY 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/104zXhgxLs3iMhCr2sRwkP',
  'found',
  83.2,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:58',
  'Elmore James',
  'Cry For Me',
  'VEEJAY 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6FFgsh7OcF7iLWBunCDiXu',
  'found',
  90.6,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:58',
  'Lightnin SLim',
  'You Know Youre So Fine',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:58',
  'Lillian Offitt',
  'Miss You So',
  'EXCELLO 45',
  'classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1oW7XRcjW7HwyYpowzmib1',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '21:05',
  'Betty JAmes',
  'Im A Little Mixed Up',
  'CEE JAY 45',
  'classic blues, blues, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4cLPvcojgZHpaxP7d5akhG',
  'found',
  88,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:05',
  'fabiana palladino',
  'stay with me through the night',
  'fabiana palladino',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0tBQ1zZ7nfPiBwOEpHTxqd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:05',
  'october london',
  'make me wanna',
  'the rebirth of marvin',
  'retro soul, neo soul, contemporary r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7aTcdBz0stpZqhqbnDCXBI',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:06',
  'october london',
  'dive',
  'the rebirth of marvin',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:08',
  'olivia dean',
  'dive',
  'messy',
  'pop soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/36vmaZyO0iAE6FZ7287fg2',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:12',
  'meshell ndegeocello',
  'I wonder If I Take You Home',
  'ventriloquism',
  'neo soul, indie jazz',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1k2Nu0StGWVtGWqDX8ntTj',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:19',
  'Khruangbin, Leon Bridges',
  'C-side',
  'Texas Sun - ep',
  'neo-psychedelic, retro soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1uKXFp5BcdHf7grmjIDQLF',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:21',
  'FKJ, SANTANA',
  'greener',
  'GREENER - SINGLE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3LBYQK2nwnwKfi2tkvfpRG',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:25',
  'EZRA COLLECTIVE',
  'REASON IN DISGUISE (FEAT. JORJA SMITH)',
  'REASON IN DISGUISE (FEAT. JORJA SMITH)',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:28',
  'CLEO SOL',
  'WHEN I''M IN YOUR ARMS',
  'ROSE IN THE DARK',
  'neo soul, alternative r&b, uk r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/47s5hKfwGXliAAB8wKMiNo',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:36',
  'LUCKY DAYE',
  'HERICANE',
  'HERICANE-SINGLE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/64fITmtln0OJqcxPf09vnY',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:39',
  'SOLANGE',
  'Junie',
  'A SEAT AT THE TABLE',
  'alternative r&b, neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5lMugQF80AuN6uukFJLT58',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:43',
  'TERRANCE MARTIN, ALEX ISLEY',
  'ACROSS THE STREET',
  'I LEFT MY HEART IN LADERA',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:46',
  'Moses Sumney',
  'Gold Coast',
  'Gold Coast',
  'art pop, indie soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7oFuhAAM6OK0pdHkD4NsXB',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:53',
  'D''ANGELO',
  'Africa',
  'VOODOO',
  'neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6FTBZdL2sXXUSBXMwrQTut',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:59',
  'FOUSHEE',
  'STILL AROUND',
  'POINTY HEIGHTS',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:02',
  'HIATUS KAIYOTE',
  'BREATHING UNDERWATER',
  'CHOOSE YOUR WEAPON',
  'neo soul, indie soul, alternative r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4UOSM66BYQRD4YbOIkcTO8',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:10',
  'ROBERT GLASPER',
  'BETTER THAN I IMAGINED (FEAT. HER AND MISHELL NDEGEOCELLO)',
  'BLACK RADIO III',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:13',
  'FULL CRATE',
  'A STORM ON A SUMMERS DAY (FEAT. GAIDAA',
  'STILL GROWING - EP',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:17',
  'GALIMATIAS',
  'LAYING LOW (2019)',
  'LOST CARGO',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1yc02ZmwOXOtWzbnFoqBsQ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:19',
  'saint mercedes',
  'patience',
  'patience - single',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:23',
  'vulfpeck',
  'tender defender (feat. theo katzman)',
  'clarity of cal',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:28',
  'FRANCIS AND THE LIGHTS',
  'MAY I HAVE THIS DANCE',
  'FAREWELL, STARLITE!',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3yPD6CHGE1xdJBWyu6ZBKk',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:30',
  'OLIVIA DEAN',
  'CARMEN',
  'MESSY',
  'pop soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3yT3bPR522kvTTIhjebahC',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:35',
  'FRANK OCEAN',
  'FOREST GUMP',
  'CHANNEL ORANGE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:39',
  'EMILY KING',
  'REMIND ME',
  'SCENERY',
  'pop soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5Y55KLlrLZr8BwLkYQ7QDd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:42',
  'CHRISTIAN KURIA',
  'TELL ME WHEN',
  'BORDERLINE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4IrukTHhqJsr8SEpqz2Zx4',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:46',
  'JUNGLE',
  '3:11(MORE AND MORE) IT AIN''T EASY',
  'FOR EVER',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:49',
  'IZYBEATS, MODESTY',
  'THIS THING',
  'EDGEHILL',
  'soca, aor',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0bLLZLNn2dG2N3vFetX2fe',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:54',
  'DABEULL, JORDAN LEE',
  'LAST NIGHT (MIXED)',
  'CAFE KITSUNE MIX BY LAZYWAX (DJ MIX)',
  'funk, nu disco',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1tVRiqlU0rJ899fnX6xIKc',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:56',
  'GOURDAN BANKS',
  'KEEP YOU IN MIND',
  'KEEP YOU IN MIND - SINGLE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:57',
  'MOONCHILD',
  'CURE',
  'VOYAGER',
  'neo soul, indie soul, contemporary r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7u5Bd9mzvZJLSuNSArnMLd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-03';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:03',
  'Lloyd featuring Andre 3000 & Nas',
  'I Want You (Remix)',
  'Steeet Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:08',
  'Jill Scott',
  'Norfside (feat. Tierra Whack)',
  'To Whom This May Concern',
  'neo soul, quiet storm, alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5KiEDWQf8wHc6dLt39MA8X',
  'found',
  71.3,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:10',
  'Smino, Thundercat, and reggie',
  'Hoe-nouns',
  'Maybe in Nirvana',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:12',
  'Saba & Jean Deaux',
  'Photosynthesis',
  'Bucket List Project',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/37Bkd2OPVmuvxrj7q7l0ne',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:15',
  'Emeryld',
  'Hope You''re Happy (feat. EARTHGANG)',
  'Young',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/54GIqRUit4ZG4vk5gj03Oj',
  'found',
  70,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:19',
  'Miguel',
  'All I Want Is You (feat. J. Cole)',
  'All I Want Is You (feat. J. Cole) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:25',
  'Gorillaz',
  'The Moon Cave (feat. Asha Puthli, Bobby Womack, Dave Jolicoeur,',
  'The Mountain',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:30',
  'KAYTRANADA',
  'BULLETS (feat. Little Dragon)',
  '99.9%',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:35',
  'Yaya Bey',
  'the evidence (Exaktly remix)',
  'the evidence (Exaktly remix) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4OBBAroG36tuWGCVDQ493r',
  'found',
  80.8,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:38',
  'Greentea Peng',
  'Stones Throw',
  'Stones Throw - Single',
  'alternative r&b, neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6tvFTSXewRjEWDonmDTmg3',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:41',
  'Yebba',
  'Yellow Eyes',
  'Jean',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6xYi9wfZb81gJIVQ95qPNl',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:44',
  'Adrian Sherwood and Nightmares on Wax',
  'Flippin'' Eck',
  'In A Space Outta Dub',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:50',
  'Foushee',
  'do you have a soul?',
  'Pointy Heights',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:51',
  'Hannah Macklin and Horatio Luna',
  'Leopard Love',
  'To the Tooth Two - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:58',
  'Childish Gambino',
  'Atavista',
  'Atavista',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6Lj4RhwPsVfMn7tsA5i8jW',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:00',
  'Don Toliver and Toro y Moi',
  'Madonna',
  'Hole Erth',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:03',
  'Tom Misch',
  'Slow Tonight',
  'Full Circle',
  'indie soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2H3L0xj5L4OlYFlRjhJQN5',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:08',
  'Ms Ray & Nourished by Time',
  'Miss You',
  'Miss You - Single',
  'indie electronic',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6JSb9ZQroda8Lgd4rF8o60',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:11',
  'Sault',
  'God, Protect Me from My Enemies',
  'Chapter 1',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0yCBRfjBgCjK0LBXOppEzW',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:18',
  'ELIZA',
  'Major',
  'Major - Single',
  'alternative r&b, neo soul, uk r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4q4uLhe5EVIQ1WsrT15nkv',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:24',
  'Daniel Caesar',
  'Get You (feat. Kali Uchis)',
  'Freudian',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2uP6t2J5MEwhr9rDkAAzwh',
  'found',
  74.8,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:30',
  'Tyler, The Creator, Brent Faiyaz, Fana Hues',
  'Sweet / I Thought You Wanted to Dance',
  'Call Me If You Get Lost: Estate Sale',
  'r&b, alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3EG9FJ0ToLfgnc1IG2Z1wz',
  'found',
  98,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:40',
  'Nicholas Payton',
  'Jazz Is a Four-Letter Word',
  'Afro-Caribbean Mixtape',
  'jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6z5EnYmdUrRI9XXc1kVVOV',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:48',
  'Wynton Marsalis',
  'The Worst Thing (feat. Natalie Merchant)',
  'United We Swing: Best of the Jazz at Lincoln Center Galas',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:56',
  'James Blake',
  'The First Time Ever I Saw Your Face',
  'Covers',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0iOuOHywtfaQEcWKeyuH3m',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
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
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
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
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:11',
  'The melatauns',
  'Coffee and Chickory',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:14',
  'Sunny Side',
  'Is You Is Or Is You Ain''t My Ba',
  'The Felicity Sessions',
  'swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7BWyu9Jf73ROcQl6U83Tul',
  'found',
  93,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:19',
  'Camellia Jazz Band',
  '''Tain''t Nobody''s Bizness If I Do',
  'That''s My Home',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:22',
  'Kermit Ruffins',
  'Ain`t Misbehavin',
  'Swing This',
  'brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0prKTiY7JvElsSjWFiLOtr',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:29',
  'Preservation Hall Jazz Band',
  'Ain`t She Sweet',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:34',
  'Fats Waller And His Rhythm',
  'Oooh! Look-A There, Ain`t She Pr',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:37',
  'Don Ewell',
  'Gee Baby, Ain`t I Good To You',
  'Music To Listen To Don Ewell By',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6lsEDOco3J2Fak9bzXtHQC',
  'found',
  93.9,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:42',
  'Calamity Jazz',
  'There Ain`t No Sweet Man Worth T',
  'Cookin` With Calamity',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0uVQ31l2ukHfe4oOKpSMDH',
  'found',
  85.9,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:48',
  'Tuba Skinny',
  'Tricks Ain`t Walkin',
  'Rag Band',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:53',
  'Don Vappie',
  'I Want To Be Happy',
  'Swingin` With Finn',
  'afro-cuban jazz, cajun, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2hmyCmbA1faWJNN6j4I6x8',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:03',
  'Louis Armstrong',
  'I`ve Got A Feeling I`m Falling',
  'Satch Plays Fats - A Tribute To',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7MHyRApG9yln6S6xcUY3PA',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:06',
  'Dr. Michael White',
  'Nobody Knows The Way I Feel This',
  'Crescent City Serenade',
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1Xf7LyKko7V2PCff0FH5k3',
  'found',
  94.6,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:10',
  'Mark Braud',
  'Fidgety Feet',
  'Shake It And Break It',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:25',
  'Ken Paige',
  'Your Feets Too Big',
  'Ain''t Misbehavin (Original Broadway',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:37',
  'Hannah Kreiger Benson',
  'Hannah Kreiger Benson Live in WWOZ Studio',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:46',
  'Doreen Ketchens',
  'Don`t You Feel My Leg',
  'Doreen`s Jazz New Orleans Vol. V',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:53',
  'Silver Leaf Jazz Band',
  'Creepy Feeling',
  'Jelly`s Last Jam',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/4yz1w7thGNzCqBFBiYaT0n',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:57',
  'Pfister Sisters',
  'We Just Couldn`t Say Goodbye',
  'All`s Well That`s Boswell',
  'boogie-woogie',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6jRj8eBqDBfl7LtBFDyENV',
  'found',
  84,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:07',
  'joe lastie jr and lastie family gospel',
  'do lord',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:14',
  'snooks eaglin',
  'i must see jesus',
  NULL,
  'blues, classic blues, country blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4rZ73BahxvCZFnrIVYQPi9',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:20',
  'coco robicheaux',
  'walking with the spirit',
  'spiritland',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/19Wsy5tByWd0IoMY1Qfvpk',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:30',
  'voice of wetlands allstars',
  'bayou breeze',
  'jazzfest live 2010',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:39',
  'new orleans rhythm conspiracy',
  'dancin ground',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/28aG84X20y5DGEvNQPdLct',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:43',
  'hot 8 brass band',
  'jisten to me',
  'rock with the hot 8 brass band',
  'brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2Ma97KGlylsITpf7vmw9tY',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:56',
  'Galactic & Irma Thomas',
  'Lady Liberty',
  'audience with the queen',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1SKe4wKuS1BoSLi7oTemWF',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:57',
  'ernie k-doe',
  'a place where we can be free',
  'here come the girls',
  'classic blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0yElfqhXDaONIXdWWelbNR',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:01',
  'Stooges Brass Band',
  'Spain W EQ',
  'Thursday Night House Party',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:10',
  'THE RUMBLE',
  'MY PEOPLE',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:14',
  'the meters',
  'feels so good',
  'live at rozy''s',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:21',
  'the radiators',
  'party til the money runs out',
  NULL,
  'jam band, cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0BWaXZzAWCFqHn6DEBSi3c',
  'found',
  92,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:24',
  'snooks eaglin',
  'win your love for me',
  NULL,
  'blues, classic blues, country blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/31Wn00lKTq5OcmEAUA4VxK',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:25',
  'alex mcmurray',
  'these dreams in me',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:30',
  'happy talk band',
  'forget me not',
  'total death benefit',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/253NoCV23QZhDXc387Ttf9',
  'found',
  88,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:56',
  'bonerama',
  'empty world (so much love)',
  'so much love',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:07',
  'Strange Roux',
  'Hand In The Water',
  'Midnight Dancer',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2BqHGciz26TsDXTrWZJQZV',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:13',
  'Strange Roux',
  'Midnight Dancer',
  'Midnight Dancer',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5SkMwSpVlH5R3PSyYiWNKr',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:18',
  'King James and The Special Men',
  'The End Is Near',
  'Act Like You Know',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:22',
  'hollyrock',
  'bad influence',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6z1M0OLGpQhEDm92CkXRJu',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:32',
  'clint maedgen',
  'hangin on for my baby''s arms',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4G5l2neJRhzTT8ROQvs66r',
  'found',
  93,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:41',
  'Govt Majik',
  'Progress',
  'Live at Broadside',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:59',
  'eddie bo',
  'lover and a friend',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6rnwkwv4GngbJMRUpMnEDA',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:04',
  'sun ra',
  'space Fling',
  'the other planes of there',
  'free jazz, experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4Al0qcaJRU5ZD2FH9k5eqs',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:25',
  'carl allen',
  'alter ego',
  'tippin',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/1Zy3fdidXhspCYxSb3eXL1',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:39',
  'grant green',
  'wives and lovers',
  'solid',
  'hard bop, jazz, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6gbJpfFr4MHXvHiEI4uVCn',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:39',
  'john scofield',
  'mr B',
  'memories of home',
  'jazz fusion, jazz, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/7JQcAXmvIVxEbSazNxyuj9',
  'found',
  74.5,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:52',
  'robrt glasper',
  'madiba',
  'code derivation',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:53',
  'alex ventling',
  'You Stepped Out of a Dream',
  'code derivation',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3h9uat1cYqxbogZGUMqdbM',
  'found',
  72.2,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:04',
  'Makaya McCraven',
  'Awaze (feat. Josh Johnson)',
  'Hidden Out! - EP',
  'nu jazz, experimental jazz, indie jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/61zmDO7Gwj1GttH8iFGvVf',
  'found',
  73.9,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:04',
  'john ellis and double wide',
  'meat pie',
  'fireball',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:12',
  'gene ammons',
  'Blue Velvet',
  'gentle jug',
  'jazz, hard bop, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6b4T6S04grMsLMLrNuj2aB',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:15',
  'melissa aldana',
  'No pidas Imposibles',
  'Filin',
  'jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4arQRUWUZolqyT3KzED8H4',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:37',
  'gonzalo rubalcaba',
  'Smile',
  'A Tribute to Beny More',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:37',
  'jeremy Pelt',
  'for the culture',
  'Our community will not be erased',
  'jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5VyhDlll6gIanznhIhfu3s',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:37',
  'miguel zenon',
  'como fue',
  'El arte de bolero',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:01',
  'Terence Blanchard',
  'Tom and Jerry',
  'breathless',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'Bill Evans',
  'Speak Low',
  'Crosscurrents',
  'jazz, cool jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5paqecHl898VwEauWJHBEy',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'Dave Douglas',
  'My first rodeo',
  'Four freedoms',
  'free jazz, jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5HVlYXXGFrhRANTnRnLzLq',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'nicholas payton',
  'the most valuable thing',
  'Notes from the Zen Gangster',
  'jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5Fc5nGE1l3K7L9KX3AKbWb',
  'found',
  88.7,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'sml',
  'old myth',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:11',
  'Bill evans',
  'When I Fall In Love',
  'Cross currents',
  'jazz, cool jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/0wTzwfSmGUCjrhBnPMrcq5',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:11',
  'bill evans',
  'Night and Day (1938)',
  'crosscurents',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:19',
  'bobbier gentry',
  'here''s that rainy day',
  'windows on the world',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:45',
  'Nels Cline, Craig Taborn, Marcus Gilmore',
  'Forge',
  'Trio of Bloom',
  'experimental jazz, free jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/0jQLuCF7mu5kop85WsnKBD',
  'found',
  83.2,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:46',
  'dom salvador',
  'Musica faz Parte',
  'jazz is dead 024',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:47',
  'Out Of/Into',
  'Familiar Route',
  'Motion II',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:50',
  'Marion brown',
  'Vista',
  'Entrance Music',
  'free jazz, ambient jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5Fg2Py9I15pPCPzC2iZsbn',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:50',
  'james brandon Lewis',
  'remember brooklynn abd Moki',
  'apple cores',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '22:28',
  'Los Po-Boy-Citos',
  'Oye Mamacita',
  'Hasta',
  'latin jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/0ZosDk71khOF95b0SYUByl',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '23:16',
  'Dash Rip Rock - PAIN PILLS NEVER',
  'Pain Pills Never Expire',
  'A Song In Everyone',
  'psychobilly, roots rock, rockabilly',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/73t9XvBGcHKDMVxRyUc2cK',
  'found',
  74.2,
  '2026-03-04 07:47:28'
);