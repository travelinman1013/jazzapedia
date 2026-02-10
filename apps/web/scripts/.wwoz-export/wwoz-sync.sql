-- WWOZ Database Export
-- Generated: 2026-02-10T10:30:07.365Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-10 08:01:38
-- Days: 4
-- Tracks: 538

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-07',
  'https://open.spotify.com/playlist/6iyG0k006o0xIPnsZmPvji',
  '{"totalTracks":121,"successfullyFound":59,"notFound":62,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-08 08:04:07',
  '2026-02-10 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-08',
  'https://open.spotify.com/playlist/4Qfi9qJhn5RFUUtOgunTGb',
  '{"totalTracks":142,"successfullyFound":75,"notFound":67,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-09 07:25:29',
  '2026-02-10 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-09',
  'https://open.spotify.com/playlist/4qylm1DZAZ4alWYU8f2vRl',
  '{"totalTracks":228,"successfullyFound":160,"notFound":68,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-09 07:25:29',
  '2026-02-10 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-10',
  NULL,
  '{"totalTracks":28,"successfullyFound":23,"notFound":5,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-10 08:00:06',
  '2026-02-10 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-07';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:01',
  'Ted Des Plantes'' Washboard Wizards',
  'If You Like Me Like I Like You',
  'Shout, Sister, Shout!',
  'ambient jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4bXmtHjPVD0iEQMTI4mIU1',
  'found',
  75.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:04',
  'Ted Des Plantes'' Washboard Wizards',
  'My Gal Sal',
  'Shout, Sister, Shout!',
  'ambient jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6gMscA9hBbO1WI5f44bOpa',
  'found',
  75.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:07',
  'Turk Murphy',
  'Mississippi Rag',
  'The Many Faces of Ragtime',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:11',
  'Turk Murphy',
  'Panama',
  'Live in Heidelberg',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2xHrhUcuqxxuz4UnJW039Q',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:16',
  'Woody Herman',
  'It Happened Down In Dixieland',
  'Chronological 1936-1937',
  'big band, swing music, cool jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/7DU8UEkC22Nq1Agtex6xZb',
  'found',
  74.2,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:19',
  'Woody Herman',
  'I Double Dare You',
  'Chronological 1937-1938',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:21',
  'Tuba Skinny',
  'You Can Have My Husband',
  'Six Feet Down',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:25',
  'Tuba Skinny',
  'At The Jazz Band Ball',
  'Six Feet Down',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:30',
  'King Oliver and his Dixie Syncopaters',
  'Jackass Blues',
  'Sugar Foot Stomp',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:33',
  'King Oliver and his Dixie Syncopaters',
  'Sugar Foot Stomp',
  'Sugar Foot Stomp',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:35',
  'Hoosier Hot Shots',
  'You Said Something When You Said Dixie',
  'Hot Lips (Everybody Stomp Disc 2)',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:38',
  'Hoosier Hot Shots',
  'Meet Me In The Cow Shed',
  'Hot Lips (Everybody Stomp Disc 2)',
  'ragtime, traditional country',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5UA0CvWWvfV9EqbOueJJV2',
  'found',
  95.1,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:42',
  'Johnny Dodds And His Black Bottom Stompers',
  'After You''ve Gone',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 094',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:45',
  'Johnny Dodds Black Bottom Stompers',
  'New Orleans Stomp',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 032',
  'jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1AHCmUJwXKe8UR1fJpJt5E',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:49',
  'Luis Russell and his Orchestra',
  'Muggin'' Lightly',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 050',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:52',
  'Luis Russell and his Orchestra',
  'Saratoga Drag',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 050',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:55',
  'New Orleans Ragtime Orchestra',
  'Oh You Beautiful Doll',
  'New Orleans Days',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '08:59',
  'New Orleans Ragtime Orchestra',
  'Bugle Boy March',
  'New Orleans Days',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:06',
  'Muggsy Spanier',
  'Moonglow',
  'Muggsy Spanier 1949-1954',
  'ragtime, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6plWUMqFcEt2X4aord3Z7V',
  'found',
  98,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:09',
  'Muggsy Spanier',
  'When My Dream Boat Comes Home',
  'Muggsy Spanier 1949-1954',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:12',
  'John Gill''s Novelty Orchestra of New Orleans',
  'Those Panama Mamas',
  'Smile, Darn Ya, Smile',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/61G55WdiATbNj65VK7r7uN',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:16',
  'John Gill''s Novelty Orchestra of New Orleans',
  'Headin'' for Better Times',
  'Headin'' for Better Times',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1LSSK1GX1wa18vNhb2h0w8',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:19',
  'Matty Matlock',
  'Paper Doll',
  'Dixieland',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/7bAfJYZZjIj9raMGSAiqz2',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:22',
  'Matty Matlock',
  'Jazz Me Blues',
  'Dixieland',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1jBtgTNoMfch8RjTYKx5L2',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:28',
  'Paul Whiteman',
  'I''m Coming Virginia (1)',
  'King of Jazz 1920-1927',
  'ragtime, big band, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/29Tmy7jioTVbptifCObwkA',
  'found',
  93.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:31',
  'Paul Whiteman',
  'Hard Hearted Hannah',
  'King of Jazz 1920-1927',
  'ragtime, big band, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/58ORgEDAU84z9MLrx1oCOz',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:34',
  'Jacques Gauthe''s Creole Rice Band',
  'My Blue Heaven',
  'Paris Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:38',
  'Jacques Gauthe''s Creole Rice Band',
  'Oriental Man',
  'Paris Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:42',
  'Fats Waller',
  'Sing An Old Fashioned Song (To A Young Sophisticated Lady)',
  'Fats Waller 1935-1936',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:46',
  'Fats Waller',
  'I Got Rhythm',
  'Fats Waller 1935-1936',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/64ERJk46NhMNvT4ypIZsB0',
  'found',
  72.6,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:50',
  'Bix Beiderbecke',
  'Smile',
  'Bix Lives!',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:53',
  'Bix Beiderbecke',
  'Deep Down South',
  'Bix Lives!',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5KXwoBZZMi91edpJY0Oya8',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:56',
  'Bix Beiderbecke',
  'Coquette',
  'Bix Lives!',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '09:59',
  'Olympia Brass Band',
  'Mardi Gras In N.O. / Tuba FAts',
  NULL,
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '10:13',
  'papa french',
  'GO TO NEW ORLEANS',
  'Albert Papa French',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '10:33',
  'danny barker',
  'Chocko Mo Feendo Hey',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '10:33',
  'eureka brass band',
  'just a little while to stay here',
  NULL,
  'brass band, ragtime',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/2V4tPiDPSKJN7H06BzAVUS',
  'found',
  86.5,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '10:42',
  'Allen Tousaint',
  'Mr Mardi Gras',
  'Mr Mardi Gras - Love a Carnival Ball',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '10:53',
  'Paul Sanchez',
  'king for a day',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '10:54',
  'Louis Armstrong',
  'King Of The Zulus',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/5uQ3tTBShkRVfLNyQndzSM',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:00',
  'danny barker',
  'Corrine died on the battlefield',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:05',
  'louis armstrong',
  'save it pretty mama',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/6Zg9LCjLYfGvFPsIhr3l9i',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:11',
  'Louis Armstrong and His Hot Seven',
  'Muggles',
  NULL,
  'jazz, ragtime',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/7saUjNh5vYvqD1oe1ED5jF',
  'found',
  91.9,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:18',
  'louis armstrong',
  'the mardi gras march',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/0gcWlbt55p4WnqbxR9HUgC',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:26',
  'louis armstrong',
  'Potato Head Blues',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/21Riy33x5YVh4kZ5XtbGxA',
  'found',
  80.5,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:29',
  'danny barker',
  'Indian Red',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:34',
  'the wild tchoupitoulas',
  'Indian Red',
  NULL,
  'cajun, zydeco, brass band',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/5lAA2A2nEUCYYWfKCJhvGP',
  'found',
  98,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:44',
  'Smiley Ricks and Indians of the Nation',
  'feathercraft',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:47',
  'smiley ricks and Indians of teh Nation',
  'Big Cheif',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:53',
  'Big Al Carson',
  'all on a mardi gras day',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '11:58',
  'dave bartholomew',
  'carnival day',
  NULL,
  'cajun',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/6JHF4NG2PeyzL7AFa4VOID',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:07',
  'Frank Emilio Flynn',
  'La Conga se va',
  'Ancestral Reflections',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:09',
  'Frank Emilio Flynn',
  'Rumba Elegante',
  'Ancestral Reflections',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:13',
  'Pucho Lopez',
  'La Comparsa',
  'Descarga Pa; Gpzar',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:19',
  'Los Papines',
  'Conga de mi Cuba',
  'La Rumba de Cuba',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:26',
  'Trio Matamoros',
  'Los Carnavales de Oriente',
  'La Rumba de Cuba',
  'son cubano, bolero, guaracha',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3acmlIAwG1ltkpdugBVAyf',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:28',
  'Pello El Afrokan',
  'Las Jardineras',
  'La Rumba de Cuba',
  'son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3ox9riTIfT8Vlizr1J05bi',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:40',
  'Gonzalo Rubalcaba Aymee Nuviola',
  'Rumba Callejera',
  'Viento y Tiempo',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:47',
  'Los Munequitos de Matanzas',
  'Oyelos de Nuevo',
  'Real Rumba',
  'afro-cuban jazz, timba, latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/441KShBtdynabC63clAxqx',
  'found',
  79,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:49',
  'Afrocuba de Matanzas',
  'Saludo de Matanzas',
  'Real Rumba',
  'latin jazz, timba, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4WnxwMOFKhoetAyyXUKyIa',
  'found',
  87.4,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '12:58',
  'Orquesta Akokan',
  'Mambo Rapidito vocals: Jose Pepito Gomez',
  NULL,
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:05',
  'Orquesta Akokan',
  'La Corbata Barata',
  'Orquesta Akokan',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:07',
  'Orquesta Akokan',
  'Cuidado con el Tumbador',
  'Orquesta Akokan',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:15',
  'Sierra Maestra',
  'Al Vaiven de mi Carreta',
  'SON: Soul of a Nation',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1CHeLYR6MOqVJubwbIGlVu',
  'found',
  88,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:18',
  'Sierra Maestra',
  'Ausencia/Aurora/Se Fue/LaMora',
  'SON: Soul,of a Nation',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:19',
  'Sierra Maestra',
  'Suavecito',
  'SON: Soul of a Nation',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/2WgqrHwdu3yFAecwdznDhk',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:30',
  'El Septeto Miramar',
  'Pachanga Miramar',
  'The Afrosound of Colombia',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:32',
  'The Latin Brothers',
  'Dale al Bongo',
  'The Afrosound of Colombia',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:43',
  'Fruko y sus Tesos',
  'Luz en La Inmensidad',
  'The afrosound od Colombia',
  'salsa, merengue, tropical music',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/0xbyJx22ls9dsqgt2kGv13',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:49',
  'Fruko y sus Tesos',
  'El Ausente',
  'The Afrosound of Colombia Vol 1',
  'salsa, merengue, tropical music',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4Dl9q7OQvoCJB2ys0JYwgO',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '13:53',
  'Fruko y sus Tesos',
  'Maria La O',
  'The Afrosound of Colombia Vol. 1',
  'salsa, merengue, tropical music',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3rS1THGTtGQ3g8LiiCSZep',
  'found',
  83,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:02',
  'Aquarela do Brasil',
  'Gal Costa',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:02',
  'The Three Tenors',
  'Aquarela do Brasil',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:04',
  'Mc Bocao',
  'Carnaval 2006 Brasil',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:08',
  'SuperLiga & Alegria do Vilar',
  'Ze Lourenco: Do Calderao da fe, a Semeadora da Vida',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:12',
  'Jorge Benjor',
  'Amor de Carnaval',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:15',
  'Chico Buarque',
  'Sonho de Um Carnaval',
  NULL,
  'mpb, bossa nova, samba',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6VlapIlYfqtoiWsE0DZUsE',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:17',
  'Zeca Baleiro',
  'Mamae Oxum',
  'Dance of the Orixas',
  'mpb, new mpb, brazilian pop',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5UMLfB1mZAVFmF0CVHT4ik',
  'found',
  79,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:22',
  'Rodrigo Campos & Clima',
  'Questao de Educacao',
  NULL,
  'new mpb, samba',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2QPeKVQyRoruhxv9QRzG8h',
  'found',
  76.7,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:24',
  'Tito Puente',
  'Carnival',
  'Puente Now!',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4Vv6ezJu7puChodLCXjwUL',
  'found',
  77,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:29',
  'Chico Buarque',
  'Vai Passar',
  NULL,
  'mpb, bossa nova, samba',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5l32BSCeg5XhRV70Wqvt9Y',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:35',
  'Ludom',
  'Toda Intensa',
  NULL,
  'new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2l3eGjNvinqznyKUwxPSVu',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:39',
  'Elza Soares',
  'Bahia de Todos os Deuses',
  NULL,
  'samba, mpb, bossa nova',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/3sLu3TN1U5At0OLIfCyOks',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:42',
  'Monica Salmaso',
  'Carnavalzinho (Meu Carnaval)',
  'Alma Lirica Brasileira',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:44',
  'Celso Fonseco & Ronaldo Bastos',
  'Meu Carnaval',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:49',
  'Beth Carvalho',
  'No Meu Rio de Fevreiro...Simpatia e Quase Amor',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:53',
  'Jovino Santos Neto & Andre Mehmari',
  'Bailando Com Cerveja',
  NULL,
  'brazilian jazz, afro-cuban jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6r2Waro8SBdbnieEA72Vz1',
  'found',
  86,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '14:58',
  'Milton Nascimento',
  'Encontros e Despedidas',
  NULL,
  'mpb, bossa nova, brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2yE5kRLhDEmb6g0ULizqkf',
  'found',
  86,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:00',
  'Charlie Dennard, Michael Skinkus, Ray Moore, Rick Trolsen',
  'Asa Branca',
  'From Brazil to New Orleans',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:07',
  'Sasha Masakowski & Musical Playground',
  'Manha de Carnaval',
  'Wishes',
  'vocal jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5EP7lN2XneKLsF63l2brgQ',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:14',
  'Marcos Jobim',
  'Eu Vou',
  NULL,
  'acoustic pop',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6X42OyVTGjYmBgXvgar2ch',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:18',
  'Mercado Negro',
  'Na Minha Casinha',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/0IPWOif0lUAaaiFrUik0GL',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:22',
  'Cacala Carvalho',
  'Eu Vi, Vo',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:27',
  'Zeferina w/Maika & Mateus Aleluia Filho',
  'Xango Alapaia',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:31',
  'Herbie Mann',
  'Brazil',
  'Brazil, Bossa Nova, & Blues',
  'afro-cuban jazz, latin jazz, jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/35MQHCJRc1TfN8AvBKqYmT',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:36',
  'Imperio Serrano',
  'Brasil Berco dos Imigrantes',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:40',
  'Caprichoso de Pilares',
  'Brasil Nao Seremos Jamais do Seremos',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:44',
  'Serena Assumpcao, Moreno Veloso, e Maeana',
  'Oxumare',
  'Ascencao',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:50',
  'Gabriele Leite',
  'Nao Se Impressione',
  NULL,
  'fado',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/0FjVWGMr0EkrkkwWbdnof2',
  'found',
  76.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:50',
  'Nay Portela',
  'Quando O Carnaval Cjhegar',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:53',
  'Estudios Takback',
  'Batucada Na Bahia Carnaval',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '15:55',
  'Riachao w/Carlinhos Brown',
  'Pitada de Tabaco',
  'Setimo',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:09',
  'los indios tabajaras',
  'bali ha''i',
  'song of the islands',
  'latin folklore',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/34WftnDz6kAeG8tt2mCUeC',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:11',
  'bob marley & the wailers',
  'one love',
  'the birth of a legend',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2V2by56rK60UxMHPtG02OJ',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:12',
  'bob marley & the wailers',
  'my cup',
  'soul rebels',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:12',
  'bob marley & the wailers',
  'soul shakedown party',
  'soul captives',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:13',
  'bob marley and the wailers',
  'sun is shining',
  'soul revolution part II',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2pZJhvpin385eqAFRp3ASJ',
  'found',
  89.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:17',
  'bob marley and the wailers',
  'lively up yourself',
  'african herbsman',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2Xr3NXOz1qg5Jddkm8k4fr',
  'found',
  89.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:17',
  'johnny nash',
  'guava jelly',
  'I can see clearly now',
  '',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3HgiIftu32fA0WMZOtmiyq',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:23',
  'bob marley and the wailers',
  'baby we''ve got a date (rock it baby)',
  'catch a fire',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4JatDWrdTVmI1NbrO4BPTB',
  'found',
  89.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:30',
  'the wailers',
  'burnin'' and lootin''',
  'burnin''',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/34Jqj42hsT3O3N8yihE3B6',
  'found',
  73.9,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:32',
  'taj mahal',
  'slave driver',
  'mo'' roots',
  'blues, classic blues, country blues',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2pZcboFC2sksKuBo5FNOnA',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:35',
  'bob marley & the wailers',
  'them belly full (but we hungry)',
  'natty dread',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2Ezmm08Oy4772SkEoC18Kt',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:38',
  'bob marley & the wailers',
  'war',
  'rastaman vibration',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1TLTUhEUYOyORxufZlCOWj',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '16:49',
  'sikiru ayinde barrister',
  'e ye pe soja ni zombie',
  'e ye pe soja ni zombie',
  'fújì, highlife, afro adura',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/7vEgdhL9fkngCWhUTOqkXu',
  'found',
  73.3,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '17:05',
  'bob marley & the wailers',
  'crisis',
  'kaya',
  'reggae, roots reggae',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/42qweWuaXhr0JDSXduI1xD',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '17:08',
  'gilberto gil',
  'kaya n''gan daya (kaya)',
  'kaya n''gan daya',
  'mpb, bossa nova, forró tradicional',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/6YiEF5vN4rxH2w4jRos4mE',
  'found',
  100,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '17:16',
  'sikiru ayinde barrister',
  'eda mi',
  'fuji vibration ''84/''85',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '17:49',
  'sikiru ayinde barrister',
  'fuji garbage',
  'fuji garbage',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '18:08',
  'Medeski Martin and Wood',
  'Bemsha Swing/ Lively Up Yourself',
  'It''s A Jungle In Here',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-07',
  '18:08',
  'bob marley & the wailers feat. patoranking',
  'one love',
  'africa unite',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-08 08:04:08'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-08';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
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
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:04',
  'Lionel Hampton',
  'Bye Bye Blues',
  'Mostly Blues',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:14',
  'Buster Smith',
  'September Song',
  'The Legendary Buster Smith',
  'swing music, big band',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4APgzpvIktvWqWqhOyne6c',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:18',
  'Bob Stewart',
  'Blue Prelude',
  'The 4 Most / Bob Stewart',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:21',
  'The Ray Brown Trio',
  'Everything I Love',
  'Don''t Get Sassy',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:26',
  'Zoot Sims',
  'I''ve Got A Crush On You',
  'Zoot Sims And The Gershwin Brothers',
  'cool jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3GMxy7KZQZAGRUYu2xj9Ro',
  'found',
  72.5,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:29',
  'Dena DeRose',
  'Only Trust Your Heart',
  'Mellow Tones',
  'vocal jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/34cqpUrVJm1fhIB5fDHuob',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:35',
  'Oscar Castro Neves',
  'Meditacao',
  'Bossa Nova',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:37',
  'The Vince Guaraldi Trio',
  'Manha De Carnaval',
  'Bossa Nova',
  'christmas',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5dn2ogDHiTDFMwW597ip2T',
  'found',
  88.3,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:47',
  'Gene Ammons',
  'My Romance',
  'Six Classic Albums',
  'jazz, hard bop, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3jaUMGTyi4XHBZpXpIWzo2',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:49',
  'The John Pizzarelli Trio',
  'It''s Only A Paper Moon',
  'Dear Mr. Cole',
  'vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/693hdCyKiyVfLabqXasRxE',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '06:51',
  'Michael Carvin',
  'I Don''t Stand A Ghost Of A Chance',
  'Jazz For Those Peaceful Moments',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:01',
  'Gene Ammons',
  'Confirmation',
  'Six Classic Albums',
  'jazz, hard bop, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5WIftCiUCkKggXrg5A6KBJ',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:05',
  'Fred Vigorito Ron Going Jerry Zigmont Bill Sainclair Emil Mark',
  'Everybody Loves Somebody',
  'Jam Session In Connecticut Volume 2',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:13',
  'Jane Morgan',
  'Be Mine',
  'Seven Classic Albums',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:17',
  'Benny Waters',
  'Blues Amore',
  'Birdland Birthday Live At 95',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:23',
  'Paul Whiteman and his Orchestra with Bing Crosby',
  'If I Had A Talking Picture Of You',
  'Paper Moon',
  'christmas, ragtime, big band',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3A2X425TUPYiomAABcSBQ6',
  'found',
  78.4,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:26',
  'The Glenn Miller Orchestra',
  'Stardust',
  'The Lost Recordings',
  'big band, swing music',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/71VUe3wFXE7i80mJgL5Qu0',
  'found',
  89.5,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:32',
  'Edmond Hall',
  'Ellington Medley',
  'Four Classic Albums Plus',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:42',
  'Sarah Vaughan',
  'Lullaby Of Birdland',
  'Sarah Vaughan',
  'vocal jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5z161QQZMgQxSILnv3QoJk',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:47',
  'Teddy Wilson & his Orchestra with Billie Holiday',
  'He Ain''t Got Rhythm',
  'Away From Base',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:50',
  'Glenn Hardman and his Hammond Five',
  'Upright Organ Blues',
  'Away From Base',
  'jazz, big band',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3CJPECZgNv5v13S2KXCI4m',
  'found',
  86.3,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:53',
  'Joe Sullivan & his Cafe Society Orchestra',
  'Solitude',
  'Away From Base',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '07:56',
  'Luiz Bonfa, R. Paiva, & A.C. Jobim',
  'Se Todos Fossem Iguais A Voce',
  'Bossa Nova',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '08:01',
  'The Harlem Footwarmers',
  'Mood Indigo',
  'History Of Jazz The Best Of Duke Ellington',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '08:04',
  'Louis Armstrong & his All-Stars',
  'Medley: Tenderly, You''ll Never Walk Alone',
  'Live In 1956 (Allentown, PA)',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '08:11',
  'Paul Desmond and Gerry Mulligan',
  'All The Things You Are',
  'Two Of A Mind',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '08:17',
  'Jimmy Smith',
  'Plum Nellie',
  'The Complete February 1957 Jimmy Smith Blue Note Sessions',
  'hard bop, soul jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0hnEOz1zPnrAv7doGPV8uh',
  'found',
  98,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '08:25',
  'Arnett Cobb',
  'Just A Closer Walk With Thee',
  'Show Time',
  'hard bop, jazz ballads, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6aDcrxrm8bt3Tnq5ZYoP3F',
  'found',
  98,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '11:59',
  'Bruce Daigrepont',
  'Perrodin Two-Step',
  'Petit Cadeau',
  'cajun, zydeco',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:03',
  'Bruce Daigrepont',
  'Perrodin two step',
  'Petit Cadeau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:04',
  'Delma Lachney',
  'Le bebebe e ebe et le gambleur',
  'Early American Cajun Music',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:06',
  'Millers Merrymakers',
  'Round-up hop',
  'Cajun String Bands',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:09',
  'Hackberry Rmablers',
  'Step It Fast',
  'Jolie Blonde',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:11',
  'Cajun Playboys',
  'Dancwe de Mardi Gras',
  'Cajun Party',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:17',
  'Shorty LeBlanc',
  'Boss Cajun',
  'Swampland Jewels',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0JAaFvbePQy9CjISWsNTMF',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:20',
  'David Doucet',
  'Jetais au bal',
  'Real Louisiana',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:24',
  'Balfa Brothers Orchestra',
  'Acadian two-step',
  'The Cajuns Vol 1',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:27',
  'Cajun Roosters w/Sarah SAvoy',
  'Itty bitty girl',
  'Transatlantic Sessions',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4uHrr20Ah8vSSykT46iwdG',
  'found',
  70,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:34',
  'Jimmy Breaux',
  'Wafus two step',
  'Un Tit Peu Plus Cajun',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:38',
  'California Cajun Orchestra',
  'Calcasieu waltz',
  'Nonc Adam Two-Step',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1H0urhlCoClmhEzhA6NJ6x',
  'found',
  89.5,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:41',
  'Lawrence Walker',
  'Keep your hands off of it',
  'Essential Collection',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5P1v7WSzSCw8oxxbz3vlcn',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:45',
  'Claire Debrett & Mark De Basile',
  'Mardi Gras',
  'Cadien',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:48',
  'Lost Bayou Ramblers',
  'My Generation',
  'En Francais',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:51',
  'Les Malfectdeurs',
  'Wooly bully',
  'En Francais',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '12:56',
  'Pinwe Lewaf Boys',
  'Zydeco Gris Gris',
  'Blues de Musicien',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:02',
  'Roddie Romero',
  'Da big squeeze',
  'Cajun and Zydeco Mardi Gras',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5sFydnFFq8GgVYpwdvcjLn',
  'found',
  89.3,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:06',
  'Boozoo Chavis',
  'Zydeco Mardi Gras',
  'Cajun & Zydeco Mardi Gras',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0SZI1reQd7sg1DK9iGxyNb',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:09',
  'Poullard, Poullard & Garnier',
  'Wandering Aces special',
  'Poullard, Poullard & Garnier',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:12',
  'Ardouin [sic] Brothers Orchestra',
  'Johnny cant dance',
  'The Cajuns Vol 1',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:17',
  'Willis Prudhomme',
  'Funk zydeco',
  'Call Me Jack Hammer',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:20',
  'Buckwhear Zydeco',
  'Throw me something, mister',
  'Lay Your Burden Down',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:25',
  'Beau Jocque and the Zydeco Hi-Rollers',
  'Richards Club',
  'Beau Jocque Boogie',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7lbZTPLbCr1Q0IS97PxR2E',
  'found',
  79,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:28',
  'Geno Delagose & French Rockin Boogie',
  'Port Arthur blues',
  'Everybodys Dancin',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:34',
  'David Hidalgo & C J Chenier',
  'Hot Rod',
  'A Tribute to the King of Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2nGqJtzeqti9dbQZwYZMLq',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:38',
  'C.J. Chenier and the Red Hot Louisiana Band',
  'Check out the zydeco',
  'My Baby Dont Wear No Shoes',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:41',
  'Clifton chenier',
  'Houston Boogie',
  'Bon Ton Roulet and More',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1PsG4YhOT1bieZA2ewIlxR',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:45',
  'Fernest and the Thunders',
  'Little woman',
  'Fernest and the Thunders',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:47',
  'John Delafose 7 the Eunice Playboys',
  'Scott Playboy special',
  'Blues Stay Away from Me',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:51',
  'Preston Frank',
  'Two step de viex ton Soileau',
  'Born in the Country',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:54',
  'Clifton Chenier',
  'Keep on scratching',
  'Bon Ton Roulet & More',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7m7qVDoKQHZnI7SUqYin6E',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '13:56',
  'BEauSoleil avec Michael Doucet',
  'Atchafalaya pipeline',
  'Cajunization',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:03',
  'Lucinda Wi8lliams',
  'Sympathy For The Devil',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:09',
  'Brandi Carlile',
  'Church And State',
  NULL,
  'folk, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3y3RHjj31HtHZEw9zkEoQI',
  'found',
  88.5,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:13',
  'Cris Jacobs',
  'Turn Into Gold',
  NULL,
  'newgrass, bluegrass, modern blues',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7FtVELtWYq77hDlzAicyMa',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:17',
  'Grace Bowers, Hodge Podge, Sista Strings, Sierra Hull, Lucie Sil',
  'Going To California',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:23',
  'Nanci Griffith',
  'Listen To The Radio',
  NULL,
  'folk, americana, singer-songwriter',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5oFG0WD64GQ19hP6Onp49i',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:28',
  'I''m With Her: Sara Watkins, Sarah Jarosz, Aiofe O''Donovan',
  'Wild And Clear And Blue',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:31',
  'Molly Tuttle',
  'Standing On The Moon',
  NULL,
  'bluegrass, newgrass, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4ZbdcH1D5ihiuoSamqI81M',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:40',
  'Stevie Nicks',
  'Free Fallin',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4CQX5erTD88eY1VzcpR0bm',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:46',
  'Tajmo + Ruby Amanfu',
  'Room On The Porch',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:50',
  'Carolina Chocolate Drops',
  'Cornbread And Butterbeans',
  NULL,
  'bluegrass, newgrass, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0Szig4psER1ESRarCgahmn',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '14:53',
  'JON BATISTE',
  'BIG MONEY',
  'BIG MONEY',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6JZQCWzX4MPfL7b2VT5F4D',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:02',
  'Bonerama, Trombone Shorty, Cyril Neville, Ivan Neville',
  'Ohio',
  'so much love',
  'brass band, cajun, jazz funk',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4nJRmuc1HzASt4P30f6uBs',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:07',
  'Cindy Blackman Santana, Carlos Santana',
  'Imagine',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2NI9CSUalQB9Y7xS7XdObb',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:14',
  'Richie Havens',
  'Woodstock',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4fJfd3E4oFN6XFLKwYFXhG',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:20',
  'Joni Mitchell',
  'Be Cool',
  NULL,
  'folk, singer-songwriter, folk rock',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7tOUMl518Q9VNWI6L5ufvs',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:23',
  'Joan Baez, Emmy Lou Harris, Jackson Browne',
  'Deportee: Plane Wreck At Los Gatos',
  NULL,
  'folk, folk rock, singer-songwriter',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4yl1akXxt0OKNgv7DB8sd5',
  'found',
  84.3,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:28',
  'Mavis Staples',
  'Everybody Needs Love',
  NULL,
  'soul',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0z1Dk3URc42eq27QP70w1U',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:35',
  'Emmy Lou Harris, Mark Knopfler',
  'Love And Happiness',
  NULL,
  'soft rock, country rock, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0cnFQVdwqvAkq3MinhdCf0',
  'found',
  79,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:39',
  'Little Feat, Amy Helm',
  'Long Distance Love',
  NULL,
  'southern rock, jam band, country rock',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0KVhHvPKDJ5RithDNJbUOc',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:44',
  'Lukas Nelson',
  'I Shall Be Released',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2pPZqNuILcTVZQe5wyPeli',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:48',
  'Crys Matthews, Rhiannon Giddens, Resistance Revival Chorus',
  'How I Long For Peace',
  NULL,
  'folk, americana, southern gothic',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1c1GPJWgvwyrBk7sT7vio9',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:56',
  'Aaron Neville, Daniel Lanois, Brian Blade',
  'Grace',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '15:58',
  'Chris Connor & Maynard Ferguson',
  'I Feel A Song Coming On',
  'Two''s Company',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:03',
  'BUDDY RICH',
  'Birdland',
  'BUDDY & SOUL',
  'big band, jazz, bebop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6i7BrJ729QLUemr0i4rLU2',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:08',
  'HERBIE MANN',
  'HOLD ON, I''M COMIN''',
  'MEMPHIS UNDERGROUND',
  'afro-cuban jazz, latin jazz, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2XqcaPFxpNNDRgK0MaG6XU',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:19',
  'JIMY SMITH',
  'SOMETHING YOU GOT',
  'JAZZ HISTORY',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:26',
  'THE RAMSEY LEWIS TRIO',
  'BILLY BOY/HIGH HEEL SNEAKERS',
  'HANG ON RAMSEY',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:34',
  'THAD JONES, MEL LEWIS',
  'GET OUT MY LIFE',
  'PRESENTING JOE WILLIAMS',
  'vocal jazz, big band, swing music',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/7n7bGsGMqI7gyi0qvWGnDs',
  'found',
  74.1,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:37',
  'RAY CHARLES AND MILT JACKSON',
  'HALLELUJAH, I LOVE HER SO',
  'SOUL MEETING',
  'soul, soul blues, blues',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2MKgZ437JIZ2OwBstxsi6C',
  'found',
  90.5,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:43',
  'JOHNNY HODGES AND WILD BILL DAVIS',
  'WINGS AND THINGS',
  'WINGS AND THINGS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:51',
  'SARAH VAUGHAN',
  'I''M JUST A LUCKY SO AND SO',
  'DUKE ELLINGTON SONGBOOK VOL. 1',
  'vocal jazz, jazz, jazz ballads',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3pSgdD6BQlbX7svLp9OgYB',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '16:57',
  'SARAH VAUGHAN',
  'Solitude',
  'DUKE ELLINGTON SONGBOOK VOL. 1',
  'vocal jazz, jazz, jazz ballads',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/38GBiS7LJ74xpH5brT6Oea',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:04',
  'ODELL BROWN AND THE ORGAN-IZERS',
  'The Honeydripper',
  'RAISING THE ROOF',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:10',
  'DIZZY GILLESPIE',
  'TANGA',
  'DIZZY GILLESPIE''S BIG 4',
  'bebop, jazz, afro-cuban jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/07GsYph3Znh29dvMsMV7yY',
  'found',
  79.3,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:15',
  'BARNEY KESSEL',
  'THE PEANUT VENDOR',
  'CONTEMPORARY LATIN RHYTHMS',
  'cool jazz, bebop, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/4zICWO3RsT2juWPKehprIv',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:19',
  'CAL TJADER AND EDDIE PALMIERI',
  'EL SONIDO NUEVO',
  'EL SONIDO NUEVO',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:24',
  'CHICO HAMILTON',
  'GOT MY MOJO WORKIN''',
  'THE FURTHER ADVENTURES OF EL CHICO',
  'cool jazz, jazz, hard bop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5AuSc7QyQzcyXFFiryVuVS',
  'found',
  76.1,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:29',
  'THE AFRO-LATIN SOULTET',
  'MONTUNO',
  'WILD',
  'latin jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2Uatzrmh83dHZjXg2PSm3I',
  'found',
  79.6,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:35',
  'CHARLIE BYRD',
  'SAMBA TORTO',
  'BRAZILIAN BYRD',
  'bossa nova, brazilian jazz, latin jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5UKZv9MtYX8gYMuHMRH3hj',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:36',
  'HERBIE MANN',
  'THE JIVE SAMBA',
  'LATIN MANN',
  'afro-cuban jazz, latin jazz, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/7eiZx3EeYC1R2ROXi78TJT',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:41',
  'WILLIE BOBO',
  'HAITIAN LADY',
  'SPANISH GREASE',
  'latin jazz, afro-cuban jazz, jazz funk',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/7tpd7vxoKNGNN4VqNnIJp2',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '17:48',
  'DIRTY DOZEN WITH DIZZY GILLESPIE',
  'BLUE MONK/HARD OF HEARING MAMA',
  'LIVE IN NEW ORLEANS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '19:58',
  'Baby Dodds Trio',
  'My Indian Red',
  'Jazz A''La Creole',
  'ragtime',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/1VVcNmW450cKwe7HPR6XyZ',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:01',
  'Louis Armstrong',
  'Hepcat''s Ball',
  NULL,
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:06',
  'Tony Allen',
  'Gbedu',
  'Legos No Shaking',
  'afrobeat',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4WRoz05bYGW0uoI7qnQLBX',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:13',
  'The Meters',
  'Mardi Gras Mambo',
  'Fire On The Bayou',
  'funk, soul, jazz funk',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3KfmYf7PTtFNYFNNhsdLZt',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:18',
  'Cyril Neville',
  'Indians Got That Fire',
  'The Essential Cyril Neville 1994-2007',
  'jazz funk',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3nRKdkrdo4oSGYEcfbPOPd',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:22',
  'Nation of Gumbolia',
  'Let''s Roll (NoG)',
  'File',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:26',
  'Chuck Perkins',
  'Lil Liza Jane (Melody Makers)',
  'A Love Song For Nola',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2b7rlT7CZfrj6UAUcgbROh',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:29',
  'Nation of Gumbolia',
  'Let''s Go Get Em',
  'File',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3cU42rtBMqGRbYVxTYRZMz',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:49',
  'Fela Anikulapo Kuti & Africa 70',
  'Dog Eat Dog (Insrumental)',
  'No Agreement',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:52',
  'Kumasi Afrobeat Orchestra',
  'Cabilao',
  'Kumasi: Live at Marigny Studios',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '20:57',
  'Big Chief Monk BBoudreaux, Spyboy Jwan Boudreaux & The Golden Ea',
  'Spyboy J',
  'Slip Don''t Fall',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:00',
  'Nation of Gumbolia',
  'I Be Sowing (NoG feat. 504 Detroit)',
  'File',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:05',
  'Marty Most',
  'Still Unruly On The Plantation',
  'Marty Most, Jazz Poet, presents Drumscussion',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:07',
  'Marty Most',
  'Drumscussion',
  'Marty Most, Jazz Poet, presents: Drumscussion',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:15',
  'The Dixie Cups',
  'Two-Way-Poc-A-Way',
  'Two-Way-Poc-A-Way',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:18',
  'Big Chief Donald Harrison Sr.',
  'Shallow Waters (Indian Blues)',
  'New Orleans Black Indians',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:19',
  'Big Chief Donald Harrison Sr.',
  'Chang Chang (New Pockey Way)',
  'New Orleans Black Indians',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:25',
  'Monogram Hunters',
  'Monogram Hunters',
  'Blood Sweat And Tears.',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:30',
  'Bob James',
  'Take Me To The Mardi Gras',
  'Two',
  'smooth jazz, jazz funk, jazz fusion',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6i5U5NyCknF93w4BilFity',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:38',
  'Curtis Pierre',
  'MGM fa show Mardi Gra Indian - Oxum & Yansa',
  'Mardi Gras Music Mergin With Brasil Fa Show Nuff',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:42',
  'Lakou Mizik, 79ers Gang',
  'Iko Kreyol - HaitiaNola',
  'Iko Kreyol',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:45',
  '79ers Gang',
  'Trouble',
  'Expect the Unexpected',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:47',
  'Nation of Gumbolia',
  'No No No (NoG)',
  'File',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:52',
  'Flagboy Giz, Wild Tchoupitoulas',
  'Mardi Gras Morning',
  'Flagboy of the Nation',
  'new orleans bounce, bounce, zydeco',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4E0N3EkrN4aDdCGGNwHOny',
  'found',
  79.4,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '21:55',
  'Eluard Burt',
  'Burt''s Lullaby',
  'Eluard & Co.',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:00',
  'Big Chief Donald Harrison Sr.',
  'Ho-Nah0-Nay',
  'New Orleans Black Indians',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:04',
  'Johnny Mathis',
  'Life Is A Song Worth Singing',
  'The Essential Johnny Mathis',
  'christmas',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1SFqQkrDIgcGp9sz9YgUVS',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:09',
  'Morgan Toney',
  'Arm Of Gold',
  'Heal The Divide',
  'native american music',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2CsOR9PSwKjIJuOvwUNbok',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:16',
  'John Papa Gros',
  'Ain''t No Use',
  'GIANTS',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:26',
  'West Texas Exiles',
  'What Happened',
  '8000 Days',
  'americana, alt country',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4t9U11DryZ2JNkUE00Y5eX',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:33',
  'Lilli Lewis, Cassie Watson Francillon',
  'Possible',
  'All Is Forgiven',
  'southern gothic, americana',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2h84mph02ZF8lxDJv77UQn',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:38',
  'Tyler Ramsey, Carl Broemel',
  'Celestun',
  'Celestun',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3bSWxqF2xpQ54YM6oCN1q9',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:44',
  'John Smith, Lisa Hannigan, The Staves',
  'To Have So Many - Revisited',
  'Gatherings',
  'indie folk',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1TN9ERMPYkRLzTpg1kK7MN',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:49',
  'Marcus Trummer',
  'Break My Fall',
  'From The Start',
  'soul blues',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1Wo9U7GT9YRMps16oVvzEJ',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:54',
  'Okan',
  'Okantomi',
  'Okantomi',
  'afro-cuban jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/7oWDGdpiKBAL7N6hbEQxli',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '22:59',
  'Sawyer Fredericks',
  'A Full Life',
  'No Need to Wonder',
  'folk pop',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6oS2UOMACu9toNmhmQgElc',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:05',
  'Mason Via',
  'Melt in the Sun',
  'Mason Via',
  'newgrass, bluegrass',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1UqDzuon88V9bBkHH1rBza',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:09',
  'The Real Sarahs, Alex de Grassi',
  'Whippoorwill',
  'Everything''s Changed',
  'new age',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/69GXDzTW8iGbOFBP5q9qSh',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:15',
  'West Texas Exiles',
  '8000 Days',
  '8000 Days',
  'americana, alt country',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0iJCzTh1YPK6ju8tXoa7PA',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:19',
  'The Many, Flamy Grant, Kate Hurley, The Calendar Years',
  'The Whole World Is Waiting',
  'Single',
  'christian folk, hymns',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3PWzeIQtY4d3ene0QQEBcK',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:25',
  'Kyshona',
  'Covered - Live From The Blueroom Studios',
  'Legacy (Live From The Blueroom Studios)',
  'southern gothic',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3cC2s8eCOc2l9g6Nr3wm47',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:31',
  'Andy Branton',
  'Telephone Man',
  'Telephone Man',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3SBhGMxsFbuUKahRJX9P80',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:35',
  'Niuver',
  'Vivir',
  'Baila',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/49z4XP0OlSlCcsdbKFF6Uz',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:40',
  'Tuba Skinny',
  'When They Ring Them Golden Bells',
  'Hot Town',
  'ragtime, swing music',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/325Qn61P0oYpEpMbNLxkeC',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:47',
  'Jordan Smart',
  'Who Would Jesus Bomb?',
  'Confessions of a CEO',
  'folk punk',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4btLY5hyUKSZA0qP1x5eEB',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:50',
  'Marty O''Reilly',
  'Everlasting Terminal Love',
  'Everlasting Terminal Love',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1XhdCIuPRXnmTr7eJf0SEJ',
  'found',
  100,
  '2026-02-09 07:25:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-08',
  '23:55',
  'DUG',
  'In Memoriam',
  'Have At It!',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/7IOwirP8mXGPhHASI2twwD',
  'found',
  100,
  '2026-02-09 07:25:29'
);

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