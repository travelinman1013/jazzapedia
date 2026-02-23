-- WWOZ Database Export
-- Generated: 2026-02-23T09:12:34.316Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-23 09:11:00
-- Days: 4
-- Tracks: 455

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-20',
  'https://open.spotify.com/playlist/5ubYZ6DfTRpiyD8y7JEM0W',
  '{"totalTracks":151,"successfullyFound":108,"notFound":43,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-20 07:25:22',
  '2026-02-23 09:12:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-21',
  'https://open.spotify.com/playlist/6VWk5n2TXiBDEBpBeMk3Fx',
  '{"totalTracks":118,"successfullyFound":54,"notFound":64,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-21 10:30:06',
  '2026-02-23 09:12:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-22',
  'https://open.spotify.com/playlist/6SF1dt8PNV2TalVU5Bl0lF',
  '{"totalTracks":146,"successfullyFound":89,"notFound":57,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-23 09:10:59',
  '2026-02-23 09:12:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-23',
  NULL,
  '{"totalTracks":39,"successfullyFound":30,"notFound":9,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-23 09:10:59',
  '2026-02-23 09:12:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-20';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '00:56',
  'Coco Robicheaux',
  'Back Around Blues',
  'Yeah, U Rite!',
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '01:03',
  'Lee Dorsey',
  'Can You Hear Me',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/1bUJTomj0LymQPYOraAwI4',
  'found',
  100,
  '2026-02-20 07:25:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '04:29',
  'Leroy Jones',
  'Two Five One',
  'I''m Talkin'' Bout New Orleans',
  'brass band, ragtime',
  'Overnight Music - Friday',
  NULL,
  'https://open.spotify.com/track/3MQNczTJ3Q17IEQ9l827CT',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:02',
  'Mingus Big Band',
  'Goodbye Pork Pie Hat',
  'The Essential Mingus Big Band',
  'big band, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/317FdhJgt48gtopOwixZox',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:12',
  'Junior Cook',
  'Illusion Of Grandeur',
  'Somethin`s Cookin`',
  'hard bop, soul jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5DZaiG42dD4M4WhZ2WdML9',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:21',
  'Kenny Garrett',
  'Qing Wen',
  'Beyond The Wall',
  'jazz, jazz fusion',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7ypjD2wNz3o5a3wnfI4JfS',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:32',
  'Herbie Hancock',
  'Actual Proof',
  'This Is Jazz, Vol. 35',
  'jazz, jazz fusion, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1Aix42Q7mxGLMDglHhIOg3',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:42',
  'Lee Konitz',
  'Thingin''',
  'Gracefullee',
  'cool jazz, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2vCZ52C9glIWP38YVGvUH8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '06:52',
  'Branford Marsalis',
  'B.B.`S Boogie',
  'I Heard You Twice The First Time',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:06',
  'Fats Waller',
  'St. Louis Blues',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/34VGrMR1FkMHnUOfNn8Dvo',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:08',
  'Louis Jordan',
  'Louie`s Blues',
  'The Aladdin X And Vik Recordings',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:11',
  'Randy Weston',
  'Babe`s Blues',
  'Earth Birth',
  'hard bop, gnawa, free jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2h0tIuCseoWgga7SKZdPAn',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:14',
  'Billy Eckstine',
  'Here Comes The Blues',
  'Everything I Have Is Yours-The B',
  'vocal jazz, big band, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/6TuhfI3t5WlvxC6O1rtaz8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:18',
  'Art Tatum',
  'Mr. Freddie Blues',
  'The Definitive Art Tatum',
  'jazz, ragtime, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/3daUe5N6yZ7vXYcYDqwtjk',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:21',
  'Wes Montgomery',
  'West Coast Blues',
  'Movin` Wes',
  'jazz, hard bop, cool jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4zgOHE23pzKltkcLzIwQDz',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:24',
  'Thelonious Monk',
  'Blues Five Spot',
  'Monk`s Dream [Expanded]',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/61ieytawm4bscc4GDE8nqq',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:27',
  'Barry Martyn',
  'Legends Funky Blues',
  'Barry Martyn`s Legends of Jazz',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:31',
  'Freddie Hubbard & Jimmy Heath',
  'Bluesville',
  'Jam Gems',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:42',
  'Kenny Burrell',
  'Bluescape',
  'Lucky So And So',
  'hard bop, jazz, cool jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7fRPPyg14gKkHrPU81AYo8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:47',
  'Blue Mitchell',
  'Blue Funk',
  'Graffiti Blues [Bonus Track]',
  'hard bop, bebop, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/202VvQBKI2lDzL2FZjjojG',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:52',
  'Wessell Anderson',
  'Baton Rouge Blues',
  'Ways Of Warmdaddy',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '07:57',
  'Roy Haynes',
  'Limehouse Blues',
  'True Or False',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5xeAiN54RCnG6ys0XeXnd2',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:02',
  'Count Basie Orchestra',
  'The James Bond Theme',
  'Basie Meets Bond',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:06',
  'Roland Alphonso',
  'From Russia With Love',
  'Something Special- Ska Hot Shots',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:10',
  'David Fathead Newman',
  'Goldfinger',
  'Cityscape',
  'hard bop, bebop, soul jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5ygVEOHtQ5R3Yllb4Y45Mz',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:16',
  'Thomas Marriott',
  'You Only Live Twice',
  'Flexicon',
  'hard bop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1NnAAZIzOs8es85DGDEvnA',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:24',
  'Chaka Khan',
  'Diamonds Are Forever',
  'Classikhan',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1RcqQbe5Hrkf9VFI4oUFkJ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:27',
  'Tony Allen',
  'Secret Agent',
  'Secret Agent',
  'afrobeat',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4IKFqkY2q7b98PI7L5Lias',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:33',
  'Prysm',
  'Secret World',
  'Second Rhythm',
  'dubstep, french jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0aUW40VLG4pCp28qAN1oMa',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:37',
  'World Saxophone Quartet',
  'Spy On Me Blues',
  'Political Blues',
  'free jazz, avant-garde, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0TRt7qL2puUHmpEcr3T5mA',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:43',
  'Delfeayo Marsalis',
  'Lone Warrior',
  'Minions Dominion',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '08:55',
  'Terence Blanchard',
  'Cosmic Warrior',
  'Breathless',
  'jazz, latin jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/79TvWpGgRDtuIwyBd0tSsl',
  'found',
  70.9,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:07',
  'Louis Armstrong',
  'All That Meat And No Potatoes',
  'Satch Plays Fats - A Tribute To',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4rfxu3vOUWRaOx8YwUEpbi',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:12',
  'Fats Waller And His Rhythm',
  'When Somebody Thinks You`re Wond',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:16',
  'Billie Holiday',
  'On The Sunny Side Of The Street',
  'The Complete Commodore Recording',
  'jazz, vocal jazz, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/16ARXAJAcL8ubHDpBLcqDQ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:19',
  'Boswell Sisters, The',
  'We Just Couldn''t Say Goodbye',
  'The Boswell Sisters 1931-1935',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7aQfeMpFntQuvAY7pE27yV',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:21',
  'Louis Armstrong',
  'Big Butter And Egg Man',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1u92L2GbWf2x9CZPpi0HN1',
  'found',
  88.6,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:24',
  'Billie Holiday',
  'Fine And Mellow',
  'The Complete Commodore Recording',
  'jazz, vocal jazz, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1QdQ4r05QWhtcTTXOgRtyA',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:28',
  'Fats Waller And His Rhythm',
  'I Got Rhythm',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:31',
  'Billie Holiday',
  'It`s A Sin To Tell A Lie',
  'Jazz Portrait (CD02)',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:34',
  'Boswell Sisters',
  'Roll On, Mississippi, Roll On',
  'Riverboat Shuffle',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2TKplQR3KJt0UvflZpmXri',
  'found',
  84.4,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:37',
  'Louis Armstrong',
  'Lazy River',
  'Essential Louis Armstrong 2',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4iWVckKLpNVsudGsYuh5t1',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:40',
  'Billie Holiday',
  'All Of Me',
  'Jazz Portrait (CD02)',
  'jazz, vocal jazz, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1LGqJ3nvxpVXDWpEzq4DJD',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:44',
  'Ella Fitzgerald',
  'I Want To Be Happy',
  'Hallelujah!',
  'jazz, vocal jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2PNY6w3rlyAey9YPfI67v4',
  'found',
  73.4,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:48',
  'Louis Armstrong',
  'Potatohead Blues',
  'The Essential Louis Armstrong [S',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:51',
  'Ma Rainey',
  'See See Rider Blues',
  'Ma Rainey (1924 - 1928)',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5IaL2keUnZoNf1qcp9NdiQ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:55',
  'Bessie Smith',
  'Need A Little Sugar In My Bowl',
  'Martin Scorsese Presents The Blu',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6qRvnXftofjYJm1Mg98UWL',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '09:58',
  'Ella Fitzgerald',
  'A Tisket A Tasket',
  'Hallelujah!',
  'jazz, vocal jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5935p4F2K5crvwdc6mBLPg',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:00',
  'Bessie Smith',
  'A Good Man Is Hard To Find',
  'Martin Scorsese Presents The Blu',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/579uSl7H3qVFkPBalLlwi8',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:03',
  'Fats Waller',
  'Sweet Sue, Just You',
  'I`m Gonna Sit Right Down- The Ea',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0vq2rpC3M1D896W77nMjQ2',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:06',
  'Louis Armstrong',
  'Black And Blue',
  'The Essential Louis Armstrong [S',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2f886TYxWwiRDwfopPseYS',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:09',
  'Ella Fitzgerald',
  'Bei Mir Bist Du Schon',
  'Hallelujah!',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:13',
  'Fats Waller And His Rhythm',
  'Spreadin` Rhythm Around',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:15',
  'Louis Armstrong',
  'Dinah',
  'St. Louis Blues Volume 6',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2ZvvGC5aVeFtF390cDXN9L',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:19',
  'Sidney Bechet Noble Sissle Orch.',
  'Basement Blues',
  'Memphis Town',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:22',
  'Bessie Smith',
  'Squeeze Me',
  '1925-1927',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7sZSCA3zr8s8Rh5vNwqP2L',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:25',
  'Jelly Roll Morton',
  'Sweet Subsitute',
  'Last Sessions- The Complete Gene',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:28',
  'Sidney Bechet',
  'E Flat Blues (Margarent Johnson,',
  'Volume 1 -- 1923',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:31',
  'Billie And DeDe Pierce',
  'Eh La Bas',
  'Gulf Coast Blues',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0DUlro5NRZ4lu3B9T5m8eq',
  'found',
  86.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:34',
  'Jelly Roll Morton',
  'Doctor Jazz',
  'Great Original Performances- 192',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4X0XLqn7JlDtsciNc44XkO',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:38',
  'Louis Armstrong',
  'Basin Street Blues',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5Jf9KnZKBTmaFDmSwWSawU',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:41',
  'Billie And DeDe Pierce',
  'Get A Working Man',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2UtoxMiITEc70DHUA4r4Og',
  'found',
  83.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:45',
  'Louis Armstrong',
  'Chimes Blues',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/52qpj8CmP0gdmGaJiCBC1f',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:47',
  'Sidney Bechet',
  'Atlanta Blues (Sarah Martin, Blu',
  'Volume 1 -- 1923',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:51',
  'Papa Celestin`s New Orleans Band',
  'Marie LaVeau',
  'Marie LaVeau',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '10:58',
  'Louis Armstrong',
  'Weather Bird',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2hlOBnSPiXLTigIMlxyvt0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:05',
  'louis armstrong',
  'When You''re Smiling',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0aAdPAlrBJqqqkkhttZIKU',
  'found',
  84.5,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:10',
  'papa celestin',
  'Jambalaya',
  NULL,
  'ragtime, brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4Y8BqDIeat59a8qnzVXmv0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:13',
  'danny barker',
  'Bill Bailey',
  NULL,
  'ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5qjJwKmqp5XgliRChUsG2m',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:17',
  'dirty dozen brass bandw',
  'dark shadow',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:21',
  'irma thomas',
  'CAN''T GET ENOUGH',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:22',
  'john boutte',
  'god bless the child',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:27',
  'james booker',
  'pop''s dilemma/ irene goodnight',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4D1s4J92zUqnVMVL1jS5Bb',
  'found',
  73.9,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:38',
  'jon cleary',
  'tww nah nah',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:47',
  'john gros',
  'Ain''t No Use',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '11:59',
  'funk monkey',
  'break the road',
  'pre-roll',
  'jazz funk',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7jYKCBjzTH48S5LrDLltr5',
  'found',
  91,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:28',
  'funk monkey',
  'Mojo HAnnah',
  'pre-roll',
  'jazz funk',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2D9x5BXmaEpgkOSMdmsbR1',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:29',
  'craig klein',
  'Redemption Song',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3xLGjIB3S6sed4jlaKgbuZ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:34',
  'panorama brass band',
  'blue stars',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:38',
  'michot''s melody makers',
  'coyote sur les chemins',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0XFFKWMzWs5I2uKTNbDTEB',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:41',
  'sweet crude',
  'porkupine',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2OenaoPWpHYcwD7kjFjwBa',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:44',
  'Big Freedia',
  'Celebration',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/723J8TT1MrywSg66aIqZio',
  'found',
  73.5,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:49',
  'stanton moore, ben ellman, skerik, charlie hunter, matt perrine',
  'nalgas',
  NULL,
  'jazz funk, acid jazz, jam band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1YHpwbDiidY3zc8Vahlav0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:53',
  'meyers',
  'hot sex',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3EN7chspTQbvOTGSy35vrA',
  'found',
  72.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '12:56',
  'new orleans nightcrawlers',
  'tchfuncta/ on that day',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0wFgcJWyGXKriyzuYjie02',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:09',
  'camile baudoin',
  'oh lonesome me',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:12',
  'loose cattle',
  'birthday cake',
  NULL,
  'americana',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3opLOajfZ9hghv8mLGHDbu',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:16',
  'subdudes',
  'time for the sun to rise',
  NULL,
  'cajun, zydeco, roots rock',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2Vb3vkXP4RYMeEitBBUSJY',
  'found',
  72.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:22',
  'magnolia beacon',
  'mariachi waltz',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:28',
  'dash rip rock',
  'mean mr mustard',
  NULL,
  'psychobilly, roots rock, rockabilly',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1RApR37a0etFBp1yJOGP7q',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:31',
  'malevitus',
  'night of the dog',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1RFrOEVu12z9P35VRlCdJ7',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:36',
  'Bas Clas',
  'Elvis In Las Vegas',
  'Fortune''s Told',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4XvKTS6FNNP9kZwLTNgMwV',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:42',
  'bonerama with johnny sansone',
  'derelict junction',
  'so much love',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:47',
  'tab benoit',
  'little queenie',
  NULL,
  'blues, cajun, modern blues',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0BFcpB2VOfFlGjBVybLmmK',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:51',
  'Earl King',
  'Always A First Time',
  'Sexual Telepathy',
  'classic blues, new orleans bounce, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1X5GbFPXclCnG7R16CUFTl',
  'found',
  72.6,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '13:55',
  'Snooks Eaglin',
  'Can You Hear Me',
  'The Way It Is',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:04',
  'hound dog taylor',
  'dont blame me',
  'the best of',
  'classic blues, blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1ZItohuFi2ck8eOf7j5rVA',
  'found',
  79.3,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:05',
  'floyd dixon with johnny guitar watson',
  'let''s go smitty',
  'rare 60s electric blues',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:07',
  'eddie clearwater',
  'let''s boogie',
  'chicago blues nights vol 2',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:08',
  'little walter',
  'just your fool',
  'complete chess recordings',
  'blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4Dxe3Y8MPu7ffNrBFPNzRL',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:09',
  'don covay',
  'why did you put shoes under my bed',
  'different strokes for different strokes',
  'northern soul, classic soul, philly soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/26zfmjKW6CycTvYk5I3uQ0',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:10',
  'james booker',
  'FEEL SO BAD',
  'lost paramount tapes',
  'boogie-woogie, cajun, ragtime',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4h8T5R9HDhH1X35VEuSfj7',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:11',
  'pee wee clayton',
  'you were wrong',
  'things i used to do',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:14',
  'furry lewis',
  'John Henry',
  '4th and beale',
  'country blues, blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3htW4Ky3zoDU1KZGxVLfhz',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:24',
  'como mamas',
  'he''s calling me',
  'move upstairs',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:24',
  'the staple singers',
  'swing down chariot',
  'faith and grace',
  'soul, motown, classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4kCFsz1nop35J5xNpdR0MI',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:25',
  'snooks eaglin',
  'i''ve been walking',
  'imperial recordings',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:26',
  'junior wells',
  'i could have had religion',
  'southside blues jam',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5SsZtlhqcZlD5vZUcFwfWw',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:32',
  'paul butterfield blues band',
  'Mellow Down Easy',
  'paul butterfield blues band',
  'blues, blues rock, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3w7JOstC58U7VxTQcm7GIN',
  'found',
  90.4,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:34',
  'eagle park slim',
  'going back to eugene',
  'northwest blues',
  'modern blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6UY7TEIsy4sQR6U0kajjuW',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:34',
  'lightnin slim',
  'hoodoo blues',
  NULL,
  'classic blues, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/61W3GaQEBDUMljwuXWbMYK',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '14:35',
  'skip james',
  'drunken spree',
  'early sessions',
  'blues, country blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0LnA4Rd9YISzNFfup5cCF3',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:03',
  'al ferrier',
  'yard dog',
  'swampland jewels',
  'rockabilly, cajun, psychobilly',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0Q5mpXGf3afDH6AWiQTz7g',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:03',
  'johnny guitar watson',
  'lover jones',
  'a real mother for ya',
  'blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0FBi9BKrbCGZpvAxqF9IYx',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:09',
  'bilyy bizor',
  'she stays drunk all the time',
  'top collection',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:10',
  'big mama thornton',
  'im feeling alright',
  '1966 with muddy waters blues band',
  'blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2oBuD0bsCutoNh1gbVuBPn',
  'found',
  83.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:15',
  'jimmy reed',
  'high and lonesome',
  'complete veejay recordings',
  'blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7h4Q4ZaEAQJZfj6vjGpV18',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:19',
  'mickey champion',
  'my little boy blue',
  'what you want',
  'boogie-woogie, blues, modern blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6KXh2YXSV09H9sTtu7bFUt',
  'found',
  77.6,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:20',
  'johnny lee hooker',
  'bang bang bang bang',
  'live at soledad prison',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:25',
  'john lee hooker and canned heat',
  'burnin hell',
  'hooker n heat',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:26',
  'fred mcdowell',
  'dankins farm',
  'this aint no rock n roll',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:43',
  'gabe carter',
  'anything you need',
  NULL,
  'modern blues, blues rock, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2ejOQnSditWLlMXZApbOhw',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:43',
  'ranie burnette',
  'gone dead on you',
  'ranie burnette''s hill country blues',
  'country blues, blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2RVm99Mg3om1YBxcppoekD',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '15:44',
  'odell harris',
  'before you accuse me',
  'searching for odell harris',
  'classic blues, blues, footwork',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/669jAiOOlVEcgd40e0C38J',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:02',
  'Lafayette Harris Jr',
  'Long Hot Summer Blues',
  'All In Good Time',
  'jazz, jazz ballads, soul jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/79B66RInJQJ5qcRcLocHk5',
  'found',
  70.7,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:07',
  'Nicole Glover',
  'The Fox',
  'Nicole Glover Plays',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2ONZE0FG9CkmclhyXtsa2s',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:11',
  'Samara Joy',
  'Autumn Nocturne',
  'Portrait',
  'vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4mF1CkkNkg1TR9NhtzuRGU',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:18',
  'Bill Evans Trio',
  'Nardis',
  'Explorations',
  'jazz, jazz ballads, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/37vEa9sfgAqEZuqX8AX0Zk',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:22',
  'Christopher McBride & The Whole Proof',
  'The Hang The Hustle The Path',
  'The Hang The Hustle The Path',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:36',
  'Anthony Stanco',
  'Just A Moment',
  'In The Groove Live At The Alluvion',
  'spoken word',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7eO56Ygo3mZnJKeHSgm1SK',
  'found',
  90.2,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:38',
  'Louis Hayes',
  'Tour De Force',
  'Artform Revisted',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/37wT6iYQQfrWmD1aTz1Lob',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:40',
  'Brandon Sanders',
  'Until You Come Back To Me',
  'Lasting Impression',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:45',
  'Eric Alexander',
  'MARIA',
  'Like Sugar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6HgVtVXPkM1HLpcCBVoUpB',
  'found',
  79.3,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '16:50',
  'Jeremy Pelt',
  'Picking Up The Pieces',
  'Sound Track',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5sp5Yg2JnnDBUbLF9Fjxtc',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:01',
  'Lee Morgan',
  'The Sidewinder',
  'The Sidewinder',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0jGh2myWgeSSuj0bXeYZn0',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:10',
  'Houston Person',
  'Back In New Orleans',
  'Moment To Moment',
  'jazz, jazz ballads, soul jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2rFj1BoQ8J4l7LR1qXBNUh',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:18',
  'Branford Marsalis Quartet',
  'As Long As You Know You''re Living Yours',
  'Belonging',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/53BIMABrBFMit1BUprSHnB',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:25',
  'Jason Stewart',
  'Wailing Jane',
  'Cyclicality',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1p9RW6MQEHGg2SuzlfzNiG',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:33',
  'Victor Goines',
  'Body And Soul',
  'Morning Swing',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:37',
  'The Session',
  'Peace Is Broken Again',
  'The Session Live@Snug Harbor',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6ts5x2OePjSd76nDpTe6I6',
  'found',
  90.9,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:42',
  'John Coltrane',
  'Bags & Trane',
  'The Heavyweight Champion- The Co',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6JfWlP0wKOuG46Tj6xEEJ2',
  'found',
  72.7,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '17:50',
  'Bobby Hutcherson',
  'Jitterbug Waltz',
  'For Sentimental Reasons',
  'hard bop, jazz, free jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2Zs9T5QAFwRPZeoVFRymsg',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:00',
  'Pat Bianchi',
  'Midnight Mood',
  'Back Home',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1tU26yUrac5LA3fyHDpEZ6',
  'found',
  98,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:07',
  'Brother Jack McDuff',
  'I''m Getting Sentimental Over You',
  'Ain''t No Sunshine Live In Seattle',
  'soul jazz, jazz funk, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4EOE5mIBfeaDFa3qSdgPFC',
  'found',
  74.8,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:14',
  'Mike LeDonne',
  '11 Years',
  'You''ll See The Anniversary Quartet Live At The Cellar',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:26',
  'Joey DeFrancesco',
  'Lift Every Voice And Sing',
  'Project Freedom',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6GNNzZz4fs5Djxz116lFUJ',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:34',
  'JD Allen',
  'Don''t Go To Strangers',
  'Love Letters (The Ballad Sessions)',
  'hard bop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2b9qr9lAmrTJOe2mOC2b3D',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:39',
  'Roderick Harper',
  'Confidence',
  'Confidence',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2qQ8ZR8AjkGFutIzHa4Wji',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:41',
  'Michael Dease',
  'Willow Walks In',
  'City Life Music of Gregg Hill',
  'jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5vpMOR80JyEExpXTYu2BGl',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:54',
  'Cyrille Aimee',
  'Being Alive',
  'Move On: A Sondheim Adventure',
  'french jazz, vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0bQ0AgBETvjk6PqyOGsH92',
  'found',
  100,
  '2026-02-21 07:38:58'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-20',
  '18:57',
  'Thelonious Monk',
  'Thelonious',
  'The Best of Thelonious Monk- The',
  'jazz, bebop, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5yc2APVVniRhfzEEdhVh7x',
  'found',
  100,
  '2026-02-21 07:38:58'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-21';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '02:28',
  'Art Neville',
  'What`s Going On',
  'His Specialty Recordings',
  'blues',
  'Overnight Music - Saturday',
  NULL,
  'https://open.spotify.com/track/4N0wDSschgunusYDgJmKhI',
  'found',
  100,
  '2026-02-21 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '04:27',
  'Smiley Lewis',
  'If You Ever Loved A Woman',
  'Gumbo Blues (Disc-1) New Orleans',
  'boogie-woogie, doo-wop, blues',
  'Overnight Music - Saturday',
  NULL,
  'https://open.spotify.com/track/2tBVGLmDv2PuWi5wtRKJMb',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '05:28',
  'Lee Dorsey',
  'Great Googa Mooga',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Overnight Music - Saturday',
  NULL,
  'https://open.spotify.com/track/7dinE4vfJC5KfQLvuZX0tJ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Louis Jordan And His Tympany Five',
  'Inflation Blues',
  'Louis Jordan And His Tympany Five',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Original Prague Syncopated Orchestra',
  'Five Foot Two, Eyes of Blue',
  'Crazy Years--Happy Music',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Teddy Wilson aho',
  'I Can''t Believe That You''re in Love with Me',
  'Chronological 1937-1938 - Classics 548',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:39',
  'Zenith Hot Stompers',
  'Oriental Strut',
  '25th Anniversary Album',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4RzEsVGbIa52Ce0IKDi85O',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:42',
  'Red Roseland Cornpickers (D-1984)',
  'I''ll See You In My Dreams',
  'Double Talk',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:50',
  'Red Roseland Cornpickers (D-1984)',
  'I''m A Ding Dong Daddy From Dumas',
  'Double Talk',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:50',
  'Royal Society Jazz Orchestra',
  'Sing You Sinners',
  'Harlem to Hollywood',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '08:54',
  'Royal Society Jazz Orchestra',
  'The Golddigger''s Song (We''re in the Money)',
  'Harlem to Hollywood',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:05',
  'Kentucky Ramblers',
  'Good Cocaine (Mama Don''t Allow It)',
  'The Rise and Fall of Paramount Records, Volume 2 (1928-1932)',
  'cajun',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6XwKkSj6P7Ogj71fZhd5a8',
  'found',
  84.8,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:08',
  'Kentucky Ramblers',
  'Everybody Works But Father',
  'The Rise and Fall of Paramount Records, Volume 2 (1928-1932)',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:11',
  'Kid Ory',
  'Farewell To Storyville',
  'Chronological 1945-1950',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6EqaCMtMDQWzhBKcRYmyYk',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:14',
  'Kid Ory',
  'Joshua Fit De Battle Of Jericho',
  'Chronological 1945-1950',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6V8KYsKi0hwCiyyq2EE8NQ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:18',
  'Louis Armstrong',
  'On A Little Bamboo Bridge',
  'The Complete Louis Armstrong Decca Sessions (1935-46), Disc 2',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:21',
  'Louis Armstrong',
  'When Ruben Swings The Cuban (Alt Tk-B)',
  'The Complete Louis Armstrong Decca Sessions (1935-46), Disc 2',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:24',
  'Golden Eagle Jazz Band',
  'Goin'' Crazy with the Blues',
  'Young Woman''s Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:27',
  'Golden Eagle Jazz Band',
  'Good Old New York',
  'Young Woman''s Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:32',
  'Dick Cathcart''s Dixielanders',
  'I Want A Girl',
  'Dynamic Directional Dixieland',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:35',
  'Dick Cathcart''s Dixielanders',
  'Somebody Stole My Gal',
  'Dynamic Directional Dixieland',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:37',
  'Jelly Roll Morton And His Orchestra',
  'Pretty Lil',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 010',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2ReuvcuHUfb0hHhns0z0Xp',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:41',
  'Jelly Roll Morton And His Orchestra',
  'BurninÂ´ The Iceberg',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 010',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:44',
  'Lars Edegran',
  'South',
  'Triolian String Band',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:50',
  'Lars Edegran',
  'That Old Gang of Mine',
  'Triolian String Band',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:52',
  'Bix Beiderbecke',
  'In A Mist',
  'Volume I - Singing The Blues',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5Bk13n28rlG7GYCKDshsQM',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '09:55',
  'Bix Beiderbecke',
  'Clarinet Marmalade',
  'Volume I - Singing The Blues',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5H4bQ14RjOVM4eKtaIpn3B',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:00',
  'olympia brass band',
  'down by the riverside',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/6Erhozn8ac6VwaV9HHZ4Zn',
  'found',
  80.8,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:03',
  'george lewis',
  'Sing On',
  NULL,
  'ragtime, free jazz, boogie-woogie',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/4gdYqjNGZNBsS0HhiuH4SH',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:10',
  'Jellyroll Morton',
  'wildman blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:12',
  'Colossus brass band',
  'royal street parade',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:25',
  'paul barbarin',
  'paul barbarin second line',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:30',
  'Paul barbarin',
  'give it up',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:34',
  'Paul Barbarin',
  'We',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:39',
  'Paul Barbarin',
  'Dookys Doing His DAnce',
  NULL,
  'ragtime',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/68zbRMWcHU3nwiiNRMhzdw',
  'found',
  86,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:42',
  'Lucien BArbarin',
  'Ballin the Jacks',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:54',
  'papa french',
  'GO TO NEW ORLEANS',
  'Albert Papa French',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '10:59',
  'Geeorge French and Bob French',
  'NEW ORLEANS',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:00',
  'frog joseph',
  'lazarus trombone',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:09',
  'Louis Armstrong ane Duke Ellington',
  'I''m Just A lucky so and so',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:12',
  'Lillian Boutte',
  'Somethings Got A Hold Of Me',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:16',
  'David Lastie and A TAste Of New Orleans',
  'Make Me A Pallet On the Floor',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:26',
  'Allen Toussaint',
  'Bono',
  'The Wild Sounds of Allan Toussan',
  'cajun',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/7LKF3oRri1OqWfITsViAHI',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:27',
  'ChuckCarbo',
  'The Barbers Blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:28',
  'Alvin Shine Robinson',
  'Oh Red',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:32',
  'Dr John',
  'mama don''t allow',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:43',
  'George Porter',
  'Break in The Road',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:45',
  'June GArdner',
  '99 plus one',
  NULL,
  'northern soul',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/7yo5HJjQfG5BXy5LrC3BAs',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:48',
  'Johnny Adams',
  'never alone',
  NULL,
  'soul blues, blues',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/1GcJx48953NOkD4GBXN2F6',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:56',
  'Alvin Shine Robinson',
  'wake up and face the music',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '11:56',
  'DAVE BARTHOLEMEW',
  'SHRIMP AND GUMBO',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:06',
  'Ruben Gonzalez',
  'Cumbanchero',
  'Introducing ... Ruben Gonzalez',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/6pZYhibuXUulNR6SBDzb5a',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:09',
  'Ruben Gonzalez',
  'Mandinga',
  'Introducing ... Ruben Gonzalez',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3prslnZsGiNplP2ZB5QP3a',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:11',
  'Ruben Gonzalez',
  'Almendra',
  'Introducing ... Ruben Gonzalez',
  'son cubano, latin jazz, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1QeZkp17cGygfRmmedpWad',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:18',
  'Quinto Mayor',
  'Pa'' Gozar Contigo',
  'Salsa con Golpe',
  'salsa, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4Pt6EMPE8ZiU3xVhIVi7Al',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:19',
  'Quinto Mayor',
  'Catalina La O',
  'Salsa con Golpe',
  'salsa, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1SVJlXoSGDFQLaFtQtjtCC',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:21',
  'Quinto Mayor',
  'El Nazareno',
  'Salsa con Golpe',
  'salsa, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/7zeTQcmOxjNES9VoL0qOMX',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:33',
  'Orquesta La Moderna Tradicion',
  'Su Majestad el Danzon',
  'Danzonemos',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:34',
  'Orquesta Moderna Tradicion',
  'Cuerdas de Amor',
  'Danzonemos',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:36',
  'Orquesta La Mooderna Tradicion',
  'Circunstancia',
  'Danzonemos',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:52',
  'Richie Ray & Bobby Cruz',
  'Los Fariseos',
  'Un Sonido Bestial',
  'salsa',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1qkmMCJrI8J8ySZatTd7h6',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:55',
  'Richie Ray & Bobby Cruz',
  'Richie''s Jala Jala',
  'Un Sonido Bestial',
  'salsa',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4xIfAQygRlpW2OF4AKnNi8',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '12:57',
  'Richie Ray & Bobby Cruz',
  'Juan en La Ciudad',
  'Un Sonido Bestial',
  'salsa',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4pY88GD3ucG4pZbTSJfJKo',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:10',
  'Larry Harlow',
  'Yo Soy Latino',
  'Yo Soy Latino',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:11',
  'Larry Harlow',
  'Mango del Monte',
  'Yo Soy Latino',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:12',
  'Larry Harlow',
  'Yo Soy Asi',
  'Yo Soy Latino',
  'salsa, latin jazz, son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/0CYpc8mPpVSXgw2ronvVQ1',
  'found',
  73,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:37',
  'Charlie D''Cali y su Salsa',
  'Baila Mi Piano',
  'Salsa Dance',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:39',
  'Sonora Carruseles',
  'Este es mi Son',
  'Salsa Dance',
  'salsa, merengue, mambo',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/2bS5OzRkjInNkC7lgtbGZs',
  'found',
  74.8,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '13:41',
  'Jimmy Bosch',
  'El Avion de La Salsa',
  'Salsa Dance',
  'latin jazz, salsa, mambo',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1lYXzZApPSpLv5qgn4Ysph',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:00',
  'Mamhy Claudia',
  'Na Langwe L''Amour',
  'L''imperatrice (the empress)',
  'zouk',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0LLQBz2SR0ftJhm015x9yY',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:05',
  'Les Etoiles du Zaire',
  'Zouke Zouke',
  'Sonodisc Congo Collection',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:13',
  'Tshala Muana',
  'Kalume',
  'Sonodisc Congo Collection',
  'rumba congolaise, ndombolo, coupé décalé',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3IYQoJ0TWqO9TeoiZAGKzs',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:19',
  'Tshala Muana',
  'Mbanda Matiere',
  'Tshala Muana',
  'rumba congolaise, ndombolo, coupé décalé',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1WxyyYaukt2Cb7rwI2wD7O',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:24',
  'Mav Cacherel feat Dally Komoko and Bongo Wende',
  'Bikeno Ba YaYa',
  'Mav Cacherel',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:29',
  'Mav Cacherel feat Dally Komoko and Bongo Wende',
  'Mayi Ya Moungwa',
  'Mav Cacherel',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '16:40',
  'Le Leuple',
  'Banque Ya Ba Soucis',
  'Le peuple',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:31',
  'Monique Seka',
  'Cafe Cacao',
  'Okiman',
  'zouk, rumba congolaise, ndombolo',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/05JaBEvFslkHHNjKPST3Td',
  'found',
  79.3,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:42',
  'Soukous Stars',
  'Tatina',
  'Gozando',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:50',
  'Meiway',
  'Aie bebou',
  'Melodie Afrique Parade',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '17:54',
  'Tabu Ley and Faya Tess',
  'Tien An Men',
  'Siegneur Tabu Ley',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:13',
  'Seprock',
  'Track 37',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:14',
  'Jonathan Richman and the Modern Lovers',
  'Egyptian Reggae',
  'Rock N Roll With',
  'proto-punk',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/27lIgIDPyApD9F6rC2gUaT',
  'found',
  81.7,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:15',
  'Exuma',
  'Fame Is The Name Of The Game',
  'Universal',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:18',
  'Rickie Clark Company',
  'Time To Throw Down',
  NULL,
  'soul jazz',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/0A4PStLLHevmpO1GyArEXL',
  'found',
  87.1,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:19',
  'Mos Def',
  'Umi Says',
  NULL,
  'east coast hip hop, old school hip hop, hip hop',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/5Ru9OjtEw5htfnVKpYsIcv',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:24',
  'Ojeda Penn',
  'Happiness Is Having You Near',
  'Happiness',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:30',
  'Stanley Cowell',
  'Here I Am',
  'Talkin Bout Love',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:40',
  'Les McCann',
  'The Harlem Buck Dance Strut',
  'Layers',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:42',
  'Archie Shepp',
  'Back Back',
  'Kwanza',
  'free jazz, jazz, avant-garde',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/0XNcHHeBqmrqyaIdCw6DZ8',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:53',
  'Gil Scott-Heron and Brian Jackson',
  'A Lovely Day',
  'From South Africa To South Carolina',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:54',
  'Bo Diddley',
  'Pollution',
  'Another Dimension',
  'blues, classic blues, rock and roll',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6gZDY2QjNDZPQxXkdaU9I8',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '18:56',
  'Little Milton',
  'Don''t Turn Away',
  'Friend Of Mine',
  'blues, soul blues, classic blues',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/1mqroFpFdZACr3DqELoI8C',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:05',
  'The Pyramids',
  'Indigo',
  'Lalibela',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:21',
  'Sir Victor Uwaifo',
  'Ekassa 34',
  'Talk Of The Town Ekassa Vol 2',
  'highlife, afrobeat, fújì',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6GwxJqoXvBelEWSQ8eMHuU',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:32',
  'Coryell',
  'Morning Sickness',
  's/t',
  'jazz fusion, smooth jazz, jazz',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6YDFh7faxYD9WmJtiDaAfN',
  'found',
  74.5,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:40',
  'Cymande',
  'Dove',
  's/t',
  'funk, afrobeat',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/4xnyBIfiVgT7ZjrHGdrHtw',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:51',
  'Jimi Hendrix',
  'Somewhere Over The Rainbow',
  'Crash Landing',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:53',
  'Sly and the Family Stone',
  'Dance To The Medley',
  'Dance To The Music',
  'funk, motown, classic soul',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/3CVrWjBV6NtYFyQ93BOVjA',
  'found',
  88.5,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '19:59',
  'Ike & Tina Turner',
  'Bold Soul Sister',
  'Bold Soul Sister: The Best of th',
  'motown, northern soul',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6g2RtR71Qj12dKQIwPpFJc',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:02',
  'Fred Wesley & The J.B.''s',
  'Same Beat Pts. 1, 2 & 3',
  '45 single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:10',
  'Fatback Band',
  'All Day',
  'Raising Hell',
  'funk, post-disco, jazz funk',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5ExF7rCGsIqzfR50vJlyjz',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:15',
  'Brief Encounter',
  'We Want to Play for You',
  'We Want to Play',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:19',
  'Jean Carn',
  'We Got Some Catchin'' Up to Do',
  'Sweet and Wonderful',
  'philly soul, post-disco, classic soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/1SA5Nrwu1mAf4b2xeDuZ6k',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:24',
  'Loleatta Holloway',
  'All About the Paper',
  'Loleatta Holloway',
  'philly soul, disco, chicago house',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/7IN51r8swM1RAAHRaVireJ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:30',
  'Syl Johnson',
  'Ms. Fine Brown Frame',
  'Ms. Fine Brown Frame',
  'soul, soul blues, northern soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/2RIGZwkq06ulhOyZBYRSYX',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:36',
  'Enchantment',
  'Dance to the Music',
  'Enchantment',
  'quiet storm, classic soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/3jGQ6lhHte4v3hjKUqRLXJ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:40',
  'Kay-Gee''s',
  'Good Feel',
  'Kilowatt',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:46',
  'Cameo',
  'I Like It',
  'Knights of the Sound Table',
  'funk',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5dWh3XErsEExZC5mFSxDnZ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '20:50',
  'Parliament',
  'Funkentelechy',
  'Funkentelechy vs the Placebo Syndrome',
  'funk, funk rock',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5uQ9lDKORWOuaXkiYQ1AtC',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:05',
  'Michael Henderson',
  'Riding',
  'Do it All',
  'post-disco, quiet storm',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/0HodbMp1sIBY0HTG0gBSK7',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:10',
  'Sun',
  'Dance (Do What You Wanna Do)',
  'Sunburn',
  '',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/0WxWZ0H9y6RIUToRkE5xYQ',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:16',
  'Freedom',
  'Get Up and Dance',
  '12 inch single',
  'post-disco',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5jHoV1o7W5GhUGWV19dDlo',
  'found',
  100,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:23',
  'Wood, Brass & Steel',
  'Funkanova',
  'Wood, Brass & Steel',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:28',
  'Platypus',
  'Street Babies',
  '12 inch single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:35',
  'Willie Hutch',
  'Soul Strut',
  'Havin a House Party',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:39',
  'Faze-O',
  'Good Thang',
  'Good Thang',
  '',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5ZC1fRFFI9ENQYaXShYBmI',
  'found',
  98,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:48',
  'James Brown',
  'You Can''t Keep a Good Man Down',
  'Bring it On',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-21',
  '21:53',
  'Hugh Masekela & Company',
  'Ashiko',
  'Live in Lesotho',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-22 07:50:28'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-22';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '05:26',
  'Irma Thomas',
  'These Four Walls',
  'A Woman`s Viewpoint The Essentia',
  'classic soul',
  'Overnight Music - Sunday',
  NULL,
  'https://open.spotify.com/track/5znJY3Ph9EWBhnOHFyFlbw',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:06',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:06',
  'The Oscar Peterson Trio',
  'In The Still Of The Night',
  '1959',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:08',
  'Benny Goodman',
  'But Not For Me',
  'Complete Capitol Small Group Recordings Benny Goodman',
  'big band, swing music, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/27xZGgIXVlPc2viNYEiTWz',
  'found',
  81.8,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:12',
  'Helen Merrill',
  'I''m A Fool To Want You',
  'Helen Merrill With Gil Evans & Hal Mooney',
  'vocal jazz, jazz ballads, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6tHYmn2CeK7I34u9F6Y7IL',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:16',
  'Hank Jones',
  'When Hearts Are Young',
  'Solo And With His Own Bands 1947-59',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:21',
  'Ben Webster',
  'When I Fall In Love',
  'A Night Out With Verve',
  'jazz, jazz ballads, cool jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4DlBA6MzvC9imYVTBAUO6e',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:25',
  'Vaughn Monroe and his Orchestra',
  'I Miss Your Kiss',
  '1944-1945',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:29',
  'Ray Brown',
  'Jim',
  'The Man Complete Recordings 1946-1959',
  'jazz, cool jazz, bebop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0VfE0hHdVU9SQuhuW3f7yg',
  'found',
  98,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:38',
  'The Garden District Trio',
  'Watch What Happens',
  'Back In New Orleans',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:41',
  'Ella Fitzgerald',
  'The Starlit Hour',
  'Ella Fitzgerald: The Early Years - Part 2',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:49',
  'Duke Ellington and his Orchestra',
  'In A Mellotone',
  'The Blanton-Webster Band',
  'jazz, big band, swing music',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/7ej47XvK3Lu3u0tLyhM9td',
  'found',
  83.2,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:49',
  'Pee Wee Russewll',
  'All Too Soon',
  'Seven Classic Albums',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '06:57',
  'Dakota Staton',
  'You Showed Me The Way',
  'Five Classic Albums',
  'vocal jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/7a0RuqgO4Fw916SgZ95Ah3',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:00',
  'Ray Brown',
  'Cool Walk',
  'The Man Complete Recordings 1946-1959',
  'jazz, cool jazz, bebop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0XrBYYkLpm3prH0v2nyYl8',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:06',
  'Buddy Tate',
  'That''s All',
  'Midnight Slows',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:10',
  'Ray Charles',
  'Willow Weep For Me',
  'Standards',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:15',
  'Vic Dickenson and Buck Clayton',
  'The Lamp Is Low',
  'Kansas City',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:21',
  'Georgie Auld',
  'Blue And Sentimental',
  'Four Classic Albums',
  'bebop, big band, exotica',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5f7zKf7mBvvegFwjChfABF',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:24',
  'Melody Gardot',
  'My One And Only Thrill',
  'My One And Only Thrill',
  'vocal jazz, french jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/2UAeHdOS92bO64Wz5CrGjA',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:31',
  'Red Norvo''s All Star Sextet',
  'The Man I Love',
  'The Keynote Jazz Collection',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3beVI20o8ELflbubNYB4io',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:36',
  'Edison, DeFranco, Carter, Smith, Getz, Gray, Basie, Green et al',
  'Ballad Medley',
  'The Complete Norman Granz Jam Sessions',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:50',
  'The Glenn Miller Orchestra',
  'At Last',
  'Timeless',
  'big band, swing music',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/53EWX6NEJknT5mtcdo8CXD',
  'found',
  89.5,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '07:55',
  'Count Basie & His Atomic Band',
  'The Deacon',
  'Complete Live At The Crescendo 1958',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '08:11',
  'Jenny Swoish',
  'Moonlight Serenade',
  'Tonight In Dreamland',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '08:16',
  'Nnenna Freelon, Kenny Barron, Ron Carter, Ben Riley, Jon Faddis',
  'If I Had You',
  'A Great Night In Harlem',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '08:22',
  'Luiz Bonfa',
  'Eurydice',
  'Bossa Nova',
  'bossa nova, brazilian jazz, latin jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4eeKG1IH8lzFsvCHPXivHM',
  'found',
  70.2,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
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
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
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
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:07',
  'Bruce Daigrepont',
  'Perrodin two step',
  'Petit Cadeau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:08',
  'David Doucet',
  'Port Arthur waltz',
  '1957',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5R9bSj3MNYiclJaYyGiTct',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:09',
  'Michael Doucet',
  'Gigue dAcadie',
  'Beau Solo',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7yVehr9PScaHWJfXBsDQdb',
  'found',
  79,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:10',
  'Daigle-Frey Affair',
  'slow steppin',
  'Daigle-Frey Affair',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:11',
  'Dewey Balfa, Marc SAvoy, D.L. Menard',
  'Jai passe devant ta porte',
  'En Bas du Chene Vert',
  'cajun, zydeco, folk québécois',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5sLfaNbNyNPEWBtBNByUac',
  'found',
  75.3,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:19',
  'Balfa Brothers',
  'Casey Jones',
  'JAi Vu Le Loup, Le Renard Et La Belette',
  'cajun, zydeco, folk québécois',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1y0sljAjLVcJkf8iaqq5Le',
  'found',
  86,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:21',
  'Basin Brothers',
  'Little dark eyes',
  'Louisiana Music Commission & Mulates Presents the Basin Brothers',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:24',
  'T-Sale',
  'Le jogue ou plombeau',
  'T-Sale',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:27',
  'Savoir Faire',
  'Le moulin',
  'REnaissance',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:34',
  'Bonsoir, Catin',
  'Un boquet de camelias',
  'Vive lAmour',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:39',
  'Nathan Abshire',
  'Blues de tac-tac',
  'Great Cajun Accordionist',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:42',
  'Acadian Cajun Band',
  'A pound of tobacco',
  'All Night Long',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:48',
  'Savoy-Doucet Cajun Band',
  'Aux Natchitoches',
  'Home Music with Spirits',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5M9POAuQPpTzUh6GDrYwyH',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:52',
  'Sidney Brown',
  'Valse des mache',
  'Best of Two Cajun Greats',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:54',
  'LInzay Young and Joel Savoy',
  'Le vol de la faquetaique',
  'After Hours at Valcour Records',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '12:57',
  'Tracy Schwarz Cajun Trio',
  'Evangeline Special',
  'Tracy Schwarz Cajun Trio',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:02',
  'Les Amis Creole',
  'Fais pas tout ca',
  'Les Amis Creole',
  'cajun, zydeco, traditional music',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4aFKF6SCn28pGGiKlfruH5',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:07',
  'Sunpie Barnes, Michael Doucet',
  'Joe Pete got two women',
  'New Orleans Visit Before Katrina',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:11',
  'Albert Chevalier',
  'Moman couche',
  'Zydeco the Early Years',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2a5ScdecXiFLLnXTiPdpwt',
  'found',
  98,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:13',
  'Fernest and the Thunders',
  'Little rain falling',
  'Fernest and the Thunders',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:17',
  'Bois Sec Ardoin & Canray Fontenot',
  'Bon soir, Moreau',
  'La Musique Creole',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5WjtUdpYUo7fm2dsBRrGlU',
  'found',
  89.8,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:19',
  'Canray Fontenot',
  'La valse de mom et pop',
  'Louisiana Hot Sauce, Creole Style',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2sfmkTFIeM7aR07JWfU341',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:24',
  'Joe Hall & the Cane Cutters',
  'La robe a parasol',
  'Melange',
  'cajun, zydeco, traditional music',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4SHQiZsO8Xjq85A3Vm1r20',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:25',
  'Motordude Zydeco',
  'I am a farmer',
  'Big Oakland',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:31',
  'Miss Ann Godly and the Zydeco Brothers',
  'Strutt and hump',
  'Miss Ann Godly and the Zydeco Brothers',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:34',
  'Rockin Dopsie & the Twisters',
  'I passed in front of your door',
  'French Style',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:39',
  'John Hart',
  'Opelousas half step',
  'Blowin Man',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:41',
  'Boozoo Chavis',
  'Make it to me',
  'Zydeco Homebrew',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/7i8t3KNpZQVDPs3z3pyoOz',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:46',
  'Clifton Chenier',
  'Cliftons blues',
  'King of Louisiana Blues & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0wSydZ8PboFsSq8vn3YtGH',
  'found',
  79,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:49',
  'Clifton Chenier',
  'Ay Ai Ai',
  'Clifton Cheniers Rockin Accordion',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1WUD9fIg0fUDrM7eWwXcD2',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:52',
  'Clifton Chenier',
  'Lafayette waltz',
  'King of Louisiana Blues & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2rRIwcUCEsUzjJeDwuyMi6',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '13:57',
  'Clifton Chenier',
  'Louisiana shuffle--live',
  'King of Louisiana Blues & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0ml0HL7WAYhnKZD9EuVHJe',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
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
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:04',
  'The War And Treaty',
  'If This Day (From The Gray House Original Soundtrack)',
  'The Gray House (Original Soundtrack From the Amazon Series)',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0Te2w0wQWeyPwvrKxsrkXq',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:07',
  'Crys Matthews',
  'Like Jesus Would',
  'Reclamation',
  'americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/31Df2MU9sXelRZU7f4yZWP',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:11',
  'Southern Culture On the Skids',
  'Jesus Took My Burden',
  'Kudzu Records Presents',
  'psychobilly, rockabilly, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/53rxcy9Y6c6Ul0gM8Yiieq',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:14',
  'The Band of Heathens',
  'Pleasing People',
  'Country Sides',
  'red dirt, texas country, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1HNaPyVz6DAqJQoXPN3PPi',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:17',
  'Katie Dahl',
  'Braver Than Me (feat. Allison Russell)',
  'Wildwood',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:21',
  'Terry Klein',
  'Hopelessness Is Going Around',
  'Hill Country Folk Music',
  'americana, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/25hPrn5opZkrODM2sgOwJS',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:24',
  'Jim Lauderdale',
  'That Kind of Life (That Kind of Day)',
  'Game Changer',
  'bluegrass, americana, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3iLyHVr3Vqc7pE9GaikcCD',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:33',
  'The Po'' Ramblin'' Boys',
  'I Believe in the Old Time Way',
  'Back to the Mountains',
  'bluegrass, newgrass, christian bluegrass',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4WKHvRkGLRdKJaqpvgBOxc',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:46',
  'Caleb & Reeb',
  'Too Far Gone',
  'Gold In Your Pocket',
  'bluegrass, cajun, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4nbtBijv5gZDVqGhVKvmb6',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:50',
  'Bronwyn Keith-Hynes',
  'I Built A World (feat. Jason Carter)',
  'I Built A World',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '14:54',
  'The String Cheese Incident',
  'Nobody Thought You Would',
  'Lend Me A Hand',
  'jam band, newgrass, bluegrass',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4vGUgnCW773gUG9DGxseO8',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:06',
  'Gurf Morlix',
  'My Lesson',
  'Fishin'' in the Muddy',
  'americana, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0hkG0774LMgy66BHsQGFxX',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:12',
  'Todd Snider',
  'THE TEMPTATION TO EXIST.',
  'HIGH, LONESOME AND THEN SOME.',
  'alt country, americana, outlaw country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/37ziZTSS7tkIHU2pnqdo0y',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:16',
  'Lucinda Williams',
  'Freedom Speaks',
  'World''s Gone Wrong',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:22',
  'Eighteen Mile',
  'Living Waters',
  'Living Waters - Single',
  'christian bluegrass, bluegrass, southern gospel',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6oCHQR2RrG6KGOff5IYk1e',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:25',
  'The Carter Sisters',
  'My Clinch Mountain Home',
  'Voice From The Ridge-The Final Sessions',
  'classic country, traditional country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/25kp1aNm99vvYpQH1dSjS3',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:33',
  'I''m With Her',
  'Wild and Clear and Blue',
  'Wild and Clear and Blue',
  'newgrass, bluegrass, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6OIvQ2YzNJ2tckkVkUqieI',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:36',
  'Nanci Griffith',
  'Love At The Five & Dime',
  'The Last Of The True Believers',
  'folk, americana, singer-songwriter',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5MhqCzQuPwHEVGS2i5zHOz',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:41',
  'Rhiannon Giddens, Resistance Revival Chorus & Crys Matthews',
  'How I Long for Peace',
  'How I Long for Peace - Single',
  'folk, americana, southern gothic',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1c1GPJWgvwyrBk7sT7vio9',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:45',
  'Melissa Etheridge',
  'Bein'' Alive',
  'Bein'' Alive - Single',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3SVJYWgXciZ7MU5JfsMknA',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:49',
  'Sara Bug',
  'No Man No Kids',
  'Into The Blue',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0YqtKLedoDE4XyyNJ9k9UW',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:52',
  'Carsie Blanton',
  'Party At The End Of The World',
  'Love & Rage',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3UDx0BL9CLgKyrgmOY1eZt',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '15:59',
  'Hunter Root',
  'If the Body is a Temple',
  'Crooked Home',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1ntV8lwnTzJZl1dialMJ8T',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
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
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:07',
  'Hampton Haws',
  'HIP',
  NULL,
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:10',
  'JOHNNY HODGES',
  'EMPTY BALLRJOOM BLUES',
  '3 SHADES OF BLUE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:14',
  'NANCY WILSON AND CANNONBALL ADDERLEY',
  'HAPPY TALK',
  'Happy Talk',
  'vocal jazz, jazz, jazz ballads',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/7ahQIRq0EOeY9UYVvABDFp',
  'found',
  84.8,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:19',
  'dave brubeck',
  'Gone With The Wind',
  'dave brubeck at storyille',
  'jazz, cool jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1Ggi3QPEkijZ4UHznlMh7W',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:21',
  'benny goodman',
  'East Of The Sun',
  'The Classic 1950s Sessions',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:43',
  'BUDDI COLLETE',
  'SLEEPY SLEPT HERE',
  'THE CHICKO HAMILTON QUINTET',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:45',
  'DJKE FETTER LATOUCH',
  'TAKIN A CHANCE ON LOVE',
  NULL,
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:54',
  'BUDDY DEFRANCO',
  'OLD BLACK MAGIC',
  'SWEET AND LOVELY',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0YYYvMw9saiWwA3cRDN6ZN',
  'found',
  74.5,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '16:57',
  'DAVE BRUBECK',
  'I WAMT TO BE HAPPY',
  'JAZZ GOES TO COLLEGE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '17:00',
  'buddy de franco',
  'they say it''s wonderful',
  'sweet and lovely',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '17:16',
  'JACK MONTROSE QUINTET',
  'CONCERTINO DA CAMERA (BLUES AND VANILLA)',
  'BLUES AND VANILLA',
  'cool jazz, swing music, bebop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/4zr5c1KQCcDSNySKg6ivtg',
  'found',
  74.5,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '17:36',
  'BARNEY KESSEL',
  'Satin Doll',
  'THE POLL WINNERS',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '17:38',
  'ART Blakey',
  'CAFE',
  'a jazz massage',
  'hard bop, jazz, bebop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/23GEnfTtqV3zCQY8QaETSJ',
  'found',
  82.7,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '17:46',
  'art blakey',
  'just knock on my door',
  'a jazz massage',
  'hard bop, jazz, bebop',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/4whk8lIF9QP2LBPWJr8uog',
  'found',
  82.7,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '17:54',
  'the modern jazz quartet',
  'delaunay''s dielemma',
  'django',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '17:58',
  'Gene Krupa Orchestra',
  'Thanks for the Boogie Ride',
  '45 Single - Okeh',
  'big band, swing music',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/6OlXaFu6dst9anqntQm8Nz',
  'found',
  88.3,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '19:59',
  'Louis Armstrong',
  'Hepcat''s Ball',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:05',
  'Tony Allen',
  'Gbedu',
  'Legos No Shaking',
  'afrobeat',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4WRoz05bYGW0uoI7qnQLBX',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:13',
  'The Gladiators',
  'Looks Is Deceiving',
  'Dreadlocks The Time Is Now',
  'roots reggae, reggae, rocksteady',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3GoATJsKLQG75M4rQa479Z',
  'found',
  81.6,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:16',
  'Hollie Cook',
  'Milk & Honey',
  'Hollie Cook',
  'reggae, dub, roots reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5kHSFEtrXMjXnqSrgdg4bx',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:18',
  'Hollie Cook',
  'Together',
  'Vessel of Love',
  'reggae, dub, roots reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/74s0iAUGtNzPHReA8Uhybj',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:23',
  'Winston McAnuff, The Bazbaz Orchestra',
  'Common Sense',
  'A Drop',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:27',
  'Bob Marley & The Wailers, Nutty O, Winky D',
  'So Much Trouble In The World',
  'Africa Unite',
  'reggae, roots reggae, dancehall',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6llDUgUyYmnnismQIpfbEX',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:31',
  'Don Carlos',
  'Jah People Unite',
  'Ease Up',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/73q30e2ezrtXQDFyrfxAXf',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:34',
  'Augustus Pablo',
  '555 Crown Street',
  'Rockers Story',
  'dub, roots reggae, reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4sS2rWuZpN2KwOF7e8hunc',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:42',
  'Perfect Giddimani',
  'Hit Them With Music',
  'What To Do Riddim',
  'reggae, roots reggae, ragga',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5IiYrqwy6NGVDHTXSGwmlF',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:46',
  'Gladiators',
  'Naturality',
  'Dreadlocks The Time Is Now',
  'roots reggae, reggae, rocksteady',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/7xFDtobpAbrgYkqwy53B8K',
  'found',
  74.5,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:51',
  'Alton Ellis',
  'Back To Africa',
  'Lloyd Daley''s Matador Production',
  'rocksteady, reggae, lovers rock',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6daVDNsc42HId1FfWsN1Kp',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:53',
  'Breeze',
  'Reality',
  'Woman Talk: Caribbean Dub Poetry',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:53',
  'Jerry Jones',
  'Trying Times',
  'Jerry Jones at the Hotel Kingston',
  'rocksteady, soul jazz, lovers rock',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/48mhkCF8yLeFBWf5X6AHxX',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '20:58',
  'Dezarie',
  'Eaze The Pain',
  'Eaze The Pain',
  'reggae, roots reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5mGSP2dK4Ui09iLIRKxJzy',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:01',
  'Rico',
  'This Day',
  'Man From Wareika',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/1mvvLt4YksidNbXeW3vseZ',
  'found',
  70,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:08',
  'Rico',
  'Ramble',
  'Man From Wareika',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:17',
  'Sister Carol',
  'Nubian Wombman',
  'Nubian Wombman',
  'reggae, roots reggae, ragga',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3vjGsLZ0M9Uop89CreL6Bz',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:20',
  'Jason Mraz, Sister Carol',
  'Time Out (feat. Sister Carol)',
  'Look For The Good',
  'soft pop, acoustic pop, reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3gjzRSiItyvJBysIDJkffH',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:23',
  'Sister Carol',
  'International Style',
  'Black Cinderella',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5MRNQupnoSHZ6GCVVESqnc',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:27',
  'Nakeeba Amaniyea',
  'Roots Rasta',
  'Beyond The Sky',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2uMIDO1Vr7UtmQtmPznVZo',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:28',
  'Nakeeba Amaniyea, Sister Carol',
  'Muma and Pickney Reunion',
  'Beyond The Sky',
  'reggae, roots reggae, ragga',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6CMKtktkcrGt3nB4es7EDv',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:30',
  'Sidney Thrope',
  'Hot Spot',
  'Interpertations & Improvisations: T Tribute To Reggae''s Keyboard',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:38',
  'Queen Omega, The Expanders, Walshy Fire',
  'Roots Daughter Flex',
  'Top Shelf Riddim',
  'reggae, ragga, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/3is4AaXyjyt5s2jQliEnrk',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:39',
  'Doreen Schaffer',
  'Try A Little Smile',
  'Adorable You',
  'rocksteady, lovers rock, roots reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5ObFPYKe6nhHBKyeTyA7py',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:40',
  'Chick Webb',
  'Jungle Mama',
  'Spinnin` The Webb',
  'swing music, big band, jazz',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/7jTBgH7GklBZG4enplNQrf',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:44',
  'U-Roy',
  'Sound Of The Wise',
  'Lloyd Daley''s Matador Productions 1968-1972',
  'reggae, roots reggae, rocksteady',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/46qTIfFLS0uogq5OA5OIa8',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:46',
  'Big Youth',
  'Wake Up EverybodyWake Up Everybody',
  'Hit The Road Jack',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:48',
  'Everton Blender',
  'Ali Ali Ho',
  'Higher Heights Revolution',
  'lovers rock, reggae, roots reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4MrEp411BPB7pOxYtExdZJ',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:51',
  'Prince Alla',
  'Bucket Bottom',
  'Only Love Can Conquer',
  'roots reggae, dub, reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/0vLchBeCobi9Xfk0rr4k40',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:53',
  'Rico',
  'Lumumba',
  'Man From Wareika',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '21:57',
  'Protoje, Mortimer',
  'Truths & Rights',
  'A Matter Of time',
  'reggae, roots reggae, ragga',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/20rK352sPUjBz04rCquZSK',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '22:01',
  'CENTER OF THE RIVER',
  'Mississippi',
  'CENTER OF THE RIVER',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '22:18',
  'David Buchbinder',
  'White Horse',
  'CENTER OF THE RIVER',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '22:35',
  'CENTER OF THE RIVER',
  'Over in the Glory Land',
  'CENTER OF THE RIVER',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '22:42',
  'Joe Krown',
  'With You in Mind',
  'Tribute',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '22:48',
  'John Papa Gros',
  'Yes We Can Can',
  'GIANTS',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '22:54',
  'Funk Monkey',
  'Double Toke',
  'Pre-Roll',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4lVGwvp70NJz2qTydMixjJ',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '23:02',
  'bonerama',
  'empty world (so much love)',
  'so much love',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '23:06',
  'Barakat',
  'Beit Beirut',
  'Taawilat Sittee',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2P3FLV9QMaeZAB8rVyKhhR',
  'found',
  100,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '23:13',
  'David Bandrowski',
  'Mama & Papa',
  'Serpentine',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '23:20',
  'TOMMY CHEEK',
  'SUNNY DAY',
  'ST. CLAUDE BRIDGE',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/244bU28bUMiNqN0h9S8fi3',
  'found',
  98,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '23:32',
  'james houlahan',
  'I Believe in You',
  'on a wing',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '23:38',
  'Anna Pidgorna, Ludovico Ensemble',
  'Drown in the depth',
  'Invented Folksongs',
  'minimalism',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2kvl1kpqORRywZzYfNYUHt',
  'found',
  98,
  '2026-02-23 09:10:59'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-22',
  '23:50',
  'Vesna Pisarovic, Noel Akchote, Tony Buck, Greg Cohen, Axel Dorne',
  'Pokraj Save bagrem drvo raste',
  'Poravna',
  'renaissance, musique concrète, free jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4HMbRVmQMz9IRlZRVbhwY9',
  'found',
  77.4,
  '2026-02-23 09:10:59'
);

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