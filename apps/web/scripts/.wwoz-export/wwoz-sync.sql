-- WWOZ Database Export
-- Generated: 2026-02-09T10:30:07.615Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-09 07:26:43
-- Days: 4
-- Tracks: 494

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-06',
  'https://open.spotify.com/playlist/3aWADe7vKNcOK8I6kPys0p',
  '{"totalTracks":182,"successfullyFound":116,"notFound":66,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-07 07:28:39',
  '2026-02-09 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-07',
  'https://open.spotify.com/playlist/6iyG0k006o0xIPnsZmPvji',
  '{"totalTracks":121,"successfullyFound":59,"notFound":62,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-08 08:04:07',
  '2026-02-09 10:30:06'
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
  '2026-02-09 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-09',
  NULL,
  '{"totalTracks":40,"successfullyFound":26,"notFound":14,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-09 07:25:29',
  '2026-02-09 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-06';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:09',
  'Buddy Rich',
  'Chameleon',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:40',
  'ARC',
  'ARC',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:40',
  'Frank Zappa',
  'Waka/Jawaka',
  'Waka / Jawaka',
  'progressive rock, psychedelic rock, art rock',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4RNNUgRlBQt7dTqSOWy5kN',
  'found',
  98,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:41',
  'James Fernando',
  'Persistence',
  'Philly 3',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/3mt8YlpMaUlX1HpnsC43aZ',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:50',
  'Alexa Tarantino',
  'Provoking Luck',
  'The Roar and the Whisper',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0YERdfBLGxDjM5YZX6aosp',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:01',
  'Jazz Sabbath',
  'War Pigs (Live)',
  'Jazz Sabbath Live',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:09',
  'Marques Carroll',
  'Olivia Dances WIth The Keys',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0M0A9T1NKj5uoorRMjTEb7',
  'found',
  98,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:14',
  'Dave Stryker',
  '9 Summer Night',
  'Blue Fire',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:18',
  'Harry Connick, Jr.',
  'Mardi Gras In New Orleans',
  'Chanson du Vieux CarrÃ©',
  'big band, christmas, vocal jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/14era6xqyLlqPC72zLqYTg',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:32',
  'Christian McBride Big Band',
  'Moanin''',
  'Without Further Ado Vol. 1',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:37',
  'Makaya McCraven',
  'Dark Parks (feat. Jeff Parker)',
  'Hidden Out! - EP',
  'nu jazz, experimental jazz, indie jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/69TxVfWupMvTqToyTnMtNn',
  'found',
  74.8,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:41',
  'Melissa Aldana',
  'Las Rosas No Hablan',
  'Filin',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:45',
  'Michael Wolff',
  'Swamp',
  'Sunny Day',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0c7zGxzQaa4qf8CuvBj22a',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:56',
  'Joshua Redman',
  'The Ocean',
  'Trios Live',
  'jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1NGf8FvPcCau3GuEZcfluv',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:01',
  'Joshua Redman Elastic Band',
  'The Crunge',
  'Momentum',
  'jazz funk, jazz fusion, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4r85o4Jl8fVzgScwiAPiQe',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:23',
  'Harry Connick Jr.',
  'Funky Dunky',
  'She',
  'big band, christmas, vocal jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/35XoZs4C4w3TITrVkKJLPM',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:23',
  'Wajdi Cherif',
  'Wajdi Cherif_Live at FTH Theatre_Rio Reverie',
  'Live at FTH Theatre NYC',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:29',
  'Fergus McCreadie',
  'Climb Through Pinewood',
  'The Shieling',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5UUWinK2PhVnYSJbzaEQOG',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:52',
  'Joshua Redman',
  'Balance',
  'Beyond',
  'jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7hFEtS0Pu7CiP7KVVLO3D1',
  'found',
  98,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:07',
  'Louis Armstrong',
  'Potatohead Blues',
  'The Essential Louis Armstrong [S',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:10',
  'Billie And DeDe Pierce',
  'Eh La Bas',
  'Gulf Coast Blues',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0DUlro5NRZ4lu3B9T5m8eq',
  'found',
  86.2,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:13',
  'King Oliver And His Dixie Syncop',
  'What Ya Want Me To Do',
  'King Oliver - Volume Two - Great',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:16',
  'Sweet Emma Barrett',
  'Chinatown',
  'New Orleans- The Living Legends',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1INpCPgOFkILHEPjC7x8NF',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:20',
  'Baby Dodds Trio',
  'Wolverine Blues',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2lUXRj3pLfvOdKwFOxjYRw',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:23',
  'Don Ewell',
  'Honey Hush',
  'Solo Piano 1969-1973 (Disc 1)',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2wzlnSIdEn99GSgNsdvCCV',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:27',
  'Albert Nicholas',
  'Please Don`t Talk About Me When',
  'Kornhaus Theater, Baden 1969',
  'ragtime, swing music, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1XDrS3aSLQwOrb5xACAY7Y',
  'found',
  87.9,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:35',
  'Fats Waller And His Rhythm',
  'Got A Bran` New Suit',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:38',
  'Don Ewell',
  'Gee Baby, Ain`t I Good To You',
  'Music To Listen To Don Ewell By',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6lsEDOco3J2Fak9bzXtHQC',
  'found',
  93.9,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:43',
  'Baby Dodds Trio',
  'Chocko Me Feendo Hey',
  'Jazz A`La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6QE7ArLBZCgfBu7uSZJSH1',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:46',
  'Sweet Emma',
  'Somebody Stole My Gal',
  'Sweet Emma The Bell Gal At Dixie',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:50',
  'King Oliver And His Dixie Syncop',
  'New Orleans Shout',
  'King Oliver - Volume Two - Great',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:53',
  'Albert Nicholas',
  'That`s A Plenty',
  'Albert`s Back In Town',
  'ragtime, swing music, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6DnN15MV6Ze3VdYhAPy6kh',
  'found',
  92.4,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:59',
  'Louis Armstrong',
  'Sugar Foot Stomp',
  'The Essential Louis Armstrong [S',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4MJN13h2Zl7KJPuL98SMFx',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:02',
  'Fats Waller And His Rhythm',
  'I`ve Got My Fingers Crossed',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:05',
  'Baby Dodds Trio',
  'Tootie Ma Is A Big Fine Thing',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/17QS5h4YToOTKsPsjSAl2x',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:08',
  'Billie And DeDe Pierce',
  'Some Of These Days',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3BmwcB9ZKEAiDWY5SMpTjf',
  'found',
  83.2,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:11',
  'King Oliver And His Dixie Syncop',
  'Willie The Weeper',
  'King Oliver - Volume Two - Great',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1He2qOXvtQa8ZIQ1gFKnFH',
  'found',
  81.1,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:13',
  'Louis Armstrong',
  'Cornet Chop Suey',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/17ePXPR7ozFN1IJxPH6Fql',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:17',
  'Billie And DeDe Pierce',
  'Get A Working Man',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2UtoxMiITEc70DHUA4r4Og',
  'found',
  83.2,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:20',
  'Johnny Dodds',
  'After You`ve Gone',
  'Clarinet Wobble Vol 3',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0V5l4SfVY37xe4MB58Y202',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:23',
  'Louis Armstrong',
  'Dipper Mouth Blues',
  '032725 Riccardi Interview',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2u5ZOMRkBa2wIgCdlgFxkE',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:26',
  'Sweet Emma',
  'Bill Bailey',
  'Sweet Emma The Bell Gal At Dixie',
  'ragtime, zydeco, cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0jkAafX7qZvpZJCydbcxYq',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:30',
  'King Oliver`s Creole Jazz Band',
  'Weather Bird Rag',
  'Louis Armstrong And King Oliver',
  'ragtime, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/23zcIUHxGpMeIun5tKXkGv',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:32',
  'Baby Dodds Trio',
  'My Indian Red',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1VVcNmW450cKwe7HPR6XyZ',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:35',
  'Sweet Emma Barrett',
  'I Get The Blues When It Rains',
  'New Orleans Traditional Jazz Leg',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:39',
  'Johnny Dodds',
  'Billy Goat Stomp',
  'Clarinet Wobble Vol 3',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2fLL46MwrZDI7OlJrY7exz',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:43',
  'Fats Waller',
  'The Sheik Of Araby',
  'The Definitive Fats Waller - Vol',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4uYHdEtFe4a1FsoA7raaZH',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:46',
  'Louis Armstrong',
  'All Of Me',
  'Louis` Love Songs',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1Fqc8lvWjs5i6TZAnME7gb',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:49',
  'Fats Waller And His Rhythm',
  'I Got Rhythm',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:52',
  'Louis Armstrong',
  'A Monday Date',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6y1ZCbI47GmUxpwZn21rV5',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:55',
  'Baby Dodds Trio',
  'Corinne Died On The Battlefield',
  'Jazz A`La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6CvUGjlfGDYGFCOBUVj6Ik',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:00',
  'Hawkettes',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:08',
  'louis armstrong',
  'mardi gras march',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0gcWlbt55p4WnqbxR9HUgC',
  'found',
  91,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:10',
  'LOUIS DUMAINE AND HIS JAZZOLA EIGHT',
  'TO-WA-BAC-A-WA',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:12',
  'original zenith brass band',
  'If I Ever Cease to Love',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:14',
  'dave bartholomew',
  'carnival day',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6JHF4NG2PeyzL7AFa4VOID',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:19',
  'rebirth brass band',
  'all on a mardi gras day',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:26',
  'delfeayo marsalis',
  'uptown on mardi gras day',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:27',
  'chief adjuah',
  'xodokan iko',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:31',
  'Big Cheif Monk Boudeaux and Spyboy Jwan Boudeaux The Golden Eagl',
  'Hey La Hey',
  'Slip Don;t Fall',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:35',
  'irma thomas, cyril neville, george porter, jr, ivan neville',
  'Carnival Time',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:40',
  'trombone shorty',
  'got to get ready',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:47',
  'cyril neville & the uptown allstars',
  'big chief jolly',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:53',
  'papa mali',
  'FIRE WATER',
  NULL,
  'southern gothic',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6iPIEgLuxY85dORzMo3Mqj',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:01',
  'algiers brass band',
  'Hey Pocky Way',
  NULL,
  'brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6uzHjWnKJx87MBh4GNXgOo',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:05',
  'krewe du belge',
  'grand chef',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2FdY1vAkp2gWSbyDukk3jZ',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:10',
  'kermit ruffins',
  'do the fat tuesday',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:17',
  'cha wa',
  'Wild Man',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:37',
  'john gros',
  'Hurricane',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:37',
  'john gros',
  'quitters never win',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:41',
  'subdudes',
  'Big Chief',
  NULL,
  'cajun, zydeco, roots rock',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5MPo6FQJXvvAhsjVd5MEV2',
  'found',
  72.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:44',
  'Mannie Fresh, Big Freedia, Galactic, Dee-1',
  'Act Like You Know',
  'Act Like You Know',
  'southern hip hop, new orleans bounce, bounce',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7vT2Lw5EDtJ3uKvs4ZiAno',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:48',
  'dr john, professor longhair, earl king, meters',
  'Big Chief',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:57',
  'bobby charles',
  'Mardi Gras Song',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0XKfazOv99B8H4mK74CFWu',
  'found',
  90.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:05',
  'tin men',
  'Chocko Mo Feendo Hey',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:08',
  'mahogany brass band',
  'indians jumping on fire',
  NULL,
  'brass band, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5cSjWxGzzrEAxfh8WxV1Da',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:13',
  'spy boy shotgun slim',
  'Shallow Water',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:18',
  'ray brackens',
  'come on it''s carnival',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:23',
  'catahoulas',
  'Tootie Ma',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:30',
  '79rs gang',
  'dead & gone',
  NULL,
  'brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0Lere1P3GJ7sxKxeZusell',
  'found',
  90.7,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:33',
  'flagboy giz',
  'Downtown',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:41',
  'Big CHIEF MONK BOUDREAUX & the golden eagles',
  'SHOTGUN JOE',
  NULL,
  'cajun, brass band, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6BWHpty604MHFhcxRMEICO',
  'found',
  75.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:45',
  'monogram hunters',
  'sew sew sew',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0yy44S7MteDtrKaPoOY0Su',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:52',
  'Wild Tchoupitoulas',
  'BROTHER JOHN',
  NULL,
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0RYad80nMcq0XY9xHO6FBq',
  'found',
  84.7,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:52',
  'spirit of fi yi yi & the mandingo warriors',
  'healing process',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1xYxD2TkyNBybJTlR8bVCL',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:53',
  'june victory',
  'hold ''em joe',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:00',
  'Amos Milburn',
  'Chicken Shack Boogie',
  'IMPERIAL 45',
  'boogie-woogie, swing music, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/757W13ufg2eOYRGK9UUN7k',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:03',
  'Eddie Boyd',
  'Drifting',
  'CHESS 45',
  'blues, classic blues, boogie-woogie',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5tmOV3bvxhk8BkDUb75Mhl',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:07',
  'Elmo JAmes',
  'Rollin and Tumblin',
  'FIRE 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3L3HnJjAIysPV0sxjFoR2Q',
  'found',
  70,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:09',
  'Lightning Slim',
  'Just MAde Twenty One',
  'EXCELLO 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:12',
  'Charles Sheffield',
  'I Got Fever',
  'Goldband 45',
  'northern soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4vY5EZZHZS2b0oW9lzey55',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:14',
  'Lee Moses',
  'Time and Place',
  'Front PAge',
  'soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6NrwaVjdLbYsU9Omdbzgtp',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:18',
  'Slim HArpo',
  'Little Queen Bee',
  'Excello 45',
  'classic blues, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0LGMzrSfGl6ZSIWtVFJYOC',
  'found',
  75.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:20',
  'Howlin WOlf',
  'Howlin for My Darling',
  'CHESS 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5mkEl9NxZf8VW7IIffh7VE',
  'found',
  89.9,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:23',
  'Whispering Smith',
  'Mean Woman Blues',
  'EXCELLO 45',
  'classic blues, cajun, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5yjjcg9054XTpOdXIaxUJt',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:25',
  'Jimmy Robins',
  'I Cant Please You',
  'Gerhart 45',
  'northern soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3qdxCJAqsHPsowg91RJCU2',
  'found',
  86,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:30',
  'Mary JAne Hooper',
  'Ive Got Reasons',
  'Power-Pac 45',
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7Gmb33nmkxVETieoPSiukO',
  'found',
  83.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:33',
  'Earl King',
  'Trick BAg',
  'IMPERIAL 45',
  'new orleans bounce, classic blues, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6bbm9n1aZ3KKqsfvWYO18r',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:35',
  'Bobby POwell',
  'Do Something For Yourself',
  'WHIT 45',
  'northern soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6ju32X2jqmIo6jNbul3aPH',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:38',
  'OV Wright',
  'Ace of Spades',
  'BACK BEAT 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:41',
  'Hal PAige',
  'After Hour Blues',
  'FURY 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:45',
  'Jmes Carr',
  'Stronger Than Love',
  'GOLDWAX 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:47',
  'Lawdy LAwdy',
  'Junior Wells',
  'STATES 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:50',
  'Frankie Lee Sims',
  'Misery Blues',
  'ACE 45',
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4ZwXa3DW8ZEETSZ6sOC6GX',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:53',
  'Jimmy McCracklin',
  'The Bitter and The Sweet',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:57',
  'Eddie Bo',
  'Check Your Bucket',
  'Bo SOund 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:03',
  'Koko TAylor',
  'Wang Dang Doodle',
  'CHECKER 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1cXc92MX9kFjMrrDsvdf9w',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:07',
  'Joe Hudson',
  'Hoo Wee Pretty Baby',
  'EXCELLO 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:11',
  'Albert Washington',
  'You Gonna Miss Me',
  'FINCH 45',
  'northern soul, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3d0TWvmeiDMe12QMtdyKzP',
  'found',
  93.4,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:11',
  'handsome Earl',
  'Eevrybody Got To Cry',
  'VIN 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:14',
  'Southland SPiritual Singers',
  'Rock Me',
  'SACRED SOUL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:20',
  'Huey Smith and the Clowns',
  'Little Liza Jane',
  'ACE 45',
  'boogie-woogie, doo-wop',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4ldGeYdmBytywTmcOoL2HQ',
  'found',
  83.9,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:21',
  'MAgic Sam',
  'Looka Whatcha Done',
  'COBRA 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:23',
  'Bo Diddley',
  'im High Again',
  'CHECKER 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:26',
  'BB KIng',
  'And Like That',
  'KENT 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:29',
  'Eddie Burns',
  'HArd Hearted Woman',
  'HARVEY 45',
  'blues, modern blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3lJ4DjGx072cOSTpEfVC3P',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:32',
  'Sonny Boy Williamson',
  'Dont Start Me Talking',
  'CHECKER 45',
  'blues, classic blues, country blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3mzHVjE0AuJBI3H7Wx75TY',
  'found',
  73.5,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:35',
  'Little Applewhite',
  'Hand Me Down My Shotgun',
  'High WAter 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:39',
  'Precious Bryant',
  'Dont You Wanna Jump',
  'Fool me Good',
  'blues, country blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2bMIOyyaHH0EUtt9bKGMZZ',
  'found',
  86,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:44',
  'Little Sonny',
  'Orange Pineapple Cherry Blossom Pink',
  'WHEELSVILLE 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:47',
  'Wild Child Butler',
  'Jelly JAm',
  'JEWEL 45',
  'blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7qBzjLEedMgn3hDLrCbu37',
  'found',
  86.9,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:02',
  'Samara Joy',
  'No More Blues',
  'Portrait',
  'vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1Y8FFe5ZLw3k002uBeXQJU',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:07',
  'Miles Davis',
  'I Thought About You',
  'Love Songs',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6cqDz44YJno8pJmTd8eKrD',
  'found',
  89.8,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:12',
  'Ellis Marsalis',
  'Dear Dolores',
  'Loved Ones',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0jv4VBk7t1pds3F8k3i9om',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:25',
  'Chet Baker',
  'I Fall In Love Too Easily',
  'My Funny Valentine',
  'jazz, cool jazz, vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0F845nujLVqCb0XMZCh5Pc',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:34',
  'Roderick Harper',
  'Look Into Your Eyes',
  'Confidence',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4nST0dQhCOZc1PRqXqMVkH',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:37',
  'JD Allen',
  'You Are Too Beautiful',
  'Love Letters The Ballad Sessions)',
  'hard bop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/26zZuMaWxRQOv8XhKqd230',
  'found',
  98,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:44',
  'Steve Turre',
  'United',
  'Colors for the Masters',
  'latin jazz, afro-cuban jazz, jazz funk',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7CK4C44vTHtiZj06aziVQD',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:51',
  'Christian McBride Big Band f/Jeffrey Osborne',
  'Back In Love Tonight',
  'Without Further Ado Vol 1',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:53',
  'John Coltrane',
  'All Or Nothing At All',
  'Ballads',
  'jazz, jazz ballads, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/79lOA9cjiispflDp40oCuQ',
  'found',
  83.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:04',
  'Lakecia Benjamin',
  'Noble Rise',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:12',
  'Gonzala Rubacalba, Yainer Horta 7 Joey Calveiro',
  'Te Quedaras',
  'A Tribute To Benny More and Nat King Cole',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:15',
  'The Afrodiziac''s Jazz',
  'Immigration',
  'immigration',
  'jazz funk, latin jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2pPvtcYPz3QDBpg9Vvx0iX',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:23',
  'Gregory Agid',
  'Mystery Blues',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1Ux2iz2HAdoDl9WeAM4Z0F',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:25',
  'Herlin Riley',
  'Borders Without Lines',
  'Perpetual Optimism',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5mrtCmMRDHNyfaqssLLAtW',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:34',
  'Michael Wolff',
  'Movie Night',
  'Sunny Day',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/15VpLhmMrTRQjcqB3NpY8e',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:41',
  'Chick Corea Christian McBride Brian Blade',
  'Windows-Live',
  'Trilogy 3',
  'jazz fusion, jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2hTRFIb8fFCAyiDsuk88Da',
  'found',
  98,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:50',
  'Nicholas Payton w/Esperanza Spalding Karriem Riggins',
  'Gold Dust Black Magic',
  'Triune',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:55',
  'Modern Jazz Quartet',
  'La Ronde Suite',
  'Django (Rudy Van Gelder Remaster',
  'cool jazz, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7pkXaoEDDMloIR9Jevl2yJ',
  'found',
  86.4,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:01',
  'Joey DeFrancesco',
  'A Change Is Gonna Come',
  'Project Freedom',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0z3appBiwBR7PrjfyRE6Rg',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:08',
  'Jack McDuff',
  'Mellow Gravy',
  'The Prestige Years',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:14',
  'Dr Lonnie Smith',
  'The World Weeps',
  'Breathe',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4tg0KZUPj7ER5rl00xsI9b',
  'found',
  89.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:25',
  'Charles Earland',
  'The Count Is In The House',
  'Stomp',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7G6yjB7CNs3IfE6Ois3I2F',
  'found',
  76,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:36',
  'Sullivan Foortner',
  'Daahoud',
  'Southern Nights',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:49',
  'Steven Oquendo Latin Jazz Orchestra',
  'El Que Se Fue',
  'A Salute to Tito & Tito',
  'latin jazz, big band',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4fdTgxBGytsy3yD299EPCJ',
  'found',
  83.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:50',
  'Michika fulumori',
  'There Is Always Light',
  'Eternity And A Day',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:07',
  'rory gallagher',
  'moonchild',
  NULL,
  'blues rock, blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/400XN4PpJ4sFByiegnHFZi',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:12',
  'jimmy thackery',
  'edward''s blues',
  NULL,
  'blues, modern blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6cRDUCoVdu4LISiop8jZhv',
  'found',
  84.8,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:18',
  'eric gales',
  'save yourself',
  NULL,
  'modern blues, blues rock, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0Q7SPiDtEPTDEcLxKhQGJp',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:18',
  'jimmie rodgers',
  'gambling polka dot blues',
  NULL,
  'traditional country, classic country, bluegrass',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2bgu6qcMr5Gyad6JqezIox',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:29',
  'ma rainey',
  'sweet rough man',
  NULL,
  'classic blues, blues, ragtime',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/62EoPZVylvGUYIAIlJj94i',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:32',
  'jack kelly & his memphis jug band',
  'HIGHWAY NO. 61 BLUES',
  NULL,
  'ragtime, country blues, traditional country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0oETu3ciPSvJ8F3m2sahpM',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:40',
  'hoyt axton',
  'never been to spain',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/75JNwfdXwUHiJAUng5GFFI',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:40',
  'three dog night',
  'never been to spain',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4czsX9Yl9As2oC3pjRkARq',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:45',
  'toronzo cannon',
  'been better to you',
  NULL,
  'blues, modern blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/28r6UUyRHjFEfjq35K7f1o',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:50',
  'larkin poe',
  'bleach blond bottle blues',
  NULL,
  'blues rock, modern blues, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3cRhk3aGHPTe4aptRyQAJW',
  'found',
  88.8,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:52',
  'badgerino',
  'I''m Shakin''',
  NULL,
  'blues rock, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4iCn10vgSHAPQogLt9auUo',
  'found',
  83.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:58',
  'cactus & warren haynes',
  'no need to worry',
  NULL,
  'psychedelic rock, blues rock, acid rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4HlKQwq7HVJmKOuMsaAM9K',
  'found',
  78.7,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:09',
  'robert pete williams',
  'goodbye slim harpo',
  NULL,
  'country blues, blues, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6jgxQSwXuwvTBoSiq5M0q2',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:12',
  'mississippi fred mcdowell',
  'mama says I''m crazy',
  NULL,
  'blues, classic blues, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4znofhdZ5Bwl6n66s5adIk',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:16',
  'the wesley jefferson blues band',
  'the wolves are howling',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:22',
  'RL Burnside',
  'everything is broken',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:27',
  'Tom Waits',
  'Come on Up To the House',
  'Mule Variations',
  'singer-songwriter, southern gothic',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7zhbOCrOKbncbqKvSwQx9R',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:37',
  'Buddy Guy',
  'Trick Bag',
  'Ain''t Done With The Blues',
  'blues, classic blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/05TorTxmQUmFf9GKG719zD',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:37',
  'eddy clearwater & los straitjackets',
  'monkey paw',
  NULL,
  'blues, classic blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4ydU8PWYjuLamfZ3KmrQ1r',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:38',
  'tedeschi trucks band & leon russell',
  'Space Captain',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:46',
  'johnny winter',
  'I love everybody',
  NULL,
  'blues, blues rock, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5oSxhWtNKdlyAPUEk5A1u0',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:49',
  'steepwater band',
  'off the rails',
  NULL,
  'blues rock, modern blues, southern rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3NAFsbMFGTe7nIUkMWlE0Y',
  'found',
  84.5,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:53',
  'bobby rush & kenny wayne shepherd',
  'hey baby (what are we gonna do)',
  NULL,
  'blues rock, blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0A6qE97WhRoULRzABXLFvF',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:57',
  'mason rack band',
  'black betty',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:07',
  'patsy montana',
  'old nevada moon',
  NULL,
  'traditional country, classic country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/26GhTTx1bLOuWsWxfBSicQ',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:10',
  'dan hicks & his hot licks',
  'shorty falls in love',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3vgeKxQBeJ5vUwQf7n7ZtQ',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:12',
  'matt bunsen & the burners',
  'life on the road 2.0',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2WJxQ5v1wYS7gqG1T1cHCu',
  'found',
  90.1,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:17',
  'kenny bill stinson',
  'sunday night in shreveport',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:22',
  'mark rubin',
  'goon with a hammer',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:24',
  'marty stuart',
  'catalina',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:27',
  'james mcmurtry',
  'safe side',
  NULL,
  'alt country, americana, outlaw country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/78mKI61YrlGlHzr6TO4SSN',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:31',
  'dave alvin',
  'black sky',
  NULL,
  'alt country, americana, roots rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0Qc8WOY2NEd5t4U3zfWFNx',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'Dr. John',
  'Mardi Gras Day',
  NULL,
  'cajun, zydeco',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'The Meters',
  'Fire On the Bayou',
  NULL,
  'funk, soul, jazz funk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0BRETWVsgLUOyuw1GQdhiG',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'cadillac john nolden & bill abel',
  'give it all to me baby',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'robbie robertson',
  'osage oil boom',
  NULL,
  'native american music',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5CT03vQttU9NE2jEwT3rEY',
  'found',
  100,
  '2026-02-07 07:28:40'
);

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