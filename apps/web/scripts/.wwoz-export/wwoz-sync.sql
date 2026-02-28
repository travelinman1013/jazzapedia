-- WWOZ Database Export
-- Generated: 2026-02-28T07:53:48.740Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-28 07:52:45
-- Days: 3
-- Tracks: 554

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-25',
  'https://open.spotify.com/playlist/4o0s8sOOPKUq6tgmM30Y7P',
  '{"totalTracks":147,"successfullyFound":105,"notFound":42,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-26 07:22:38',
  '2026-02-28 07:53:47'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-26',
  'https://open.spotify.com/playlist/5BxgWAVDXNcc0w7PWHfR7V',
  '{"totalTracks":206,"successfullyFound":159,"notFound":47,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-26 07:22:38',
  '2026-02-28 07:53:47'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-27',
  'https://open.spotify.com/playlist/3elM6ENm02exk2K8ocBy5f',
  '{"totalTracks":170,"successfullyFound":102,"notFound":68,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-27 07:39:37',
  '2026-02-28 07:53:47'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:05',
  'Kelan Phil Cochran & Legacy',
  'White Nile',
  'African Skies',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:16',
  'The Stan Tracy Quartet',
  'Starless and Bible Black',
  'Under Milk Wood: Jazz Suite',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:19',
  'Michael White',
  'The Blessing Song',
  'Pneuma',
  'free jazz, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1tO5IV6beNuuSTAVVZuI0N',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:26',
  'Nat Birchall',
  'Mysticism Of Sound',
  'Mysticism Of Sound',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:34',
  'John Coltrane',
  'Ole',
  'Ole Coltrane',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5T2Cft0v1qKSmH0GUDzB2b',
  'found',
  98,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:53',
  'George Russell',
  'The Outer View',
  'The Outer View',
  'free jazz, hard bop, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1dOQayg44ijE1IREXjZGFL',
  'found',
  80.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:06',
  'Jeff Albert/ Ben Lamar Gay/ Matt Lux/ Quin Kirchner',
  'Brain Dance',
  'Live At The Hungry Brain',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:15',
  'Jacob Fred Jazz Odyssey',
  'Grub Ridge Stomp',
  'Telluride Is Acoustic',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:22',
  'Matt Lux Communication Arts Quartet',
  'Israels',
  'Astral Spirits Sampler',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:41',
  'Messthetics w/ James Brandon Lewis',
  '30 Years of Knowing',
  'Deface The Currency',
  'jazz funk, experimental jazz, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/4dbeqJtqE2Vcdo8LLVsXlb',
  'found',
  86,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:42',
  'Lester Bowie''s Brass Fantasy',
  'The Emperor',
  'Avant Pop',
  'free jazz, experimental jazz, brass band',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0RDNQnjcMcmvEYVSEREqkE',
  'found',
  98,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:49',
  'Bobby Hutcherson',
  'NTU',
  'Linger Lane',
  'hard bop, jazz, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0Xxl87QnsMfyKl9Lv0B0AN',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:57',
  'OkoNski',
  'October',
  'Entrance Music',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2H5IEbMZnikxlbHki7m3Su',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:03',
  'SML',
  'Taking out the Trash',
  'Taking out the Trash',
  'ambient jazz, indie jazz, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3le7tV5MtNCVpBQ1e2ubSD',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:08',
  'Snarky Puppy',
  'Flight',
  'Sylva',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:15',
  'Stereolab',
  'Flashes In The Afternoon',
  'Cloud Land/ Flashes In The Afternoon',
  'art pop, krautrock, post-rock',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7gPnOSaYRgpoSkAAIQWix9',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:21',
  'Gary Bartz Ntu Troop',
  'Celestial Blues',
  'Harlem Bush Music',
  'jazz funk',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0YEZzOR61QvNc6w8SUFLcg',
  'found',
  98,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:32',
  'Kronos Quartet, Laurie Anderson, Sexmob',
  'Images Suite',
  'Outer Spaceways Incorporated',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:41',
  'Kronos Quartet & Armand Hammer',
  'Blood Running High',
  'Outer Spaceways Incorporated',
  'footwork, experimental hip hop, alternative hip hop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5p9z9NvWJ45JzNvJpGLOhg',
  'found',
  73.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:46',
  'Russell Gunn',
  'Love Requiem',
  'Love Stories',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0wrtAd5p9VYC7HxBxblDwc',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:51',
  'Noah Young',
  'Nightcrawlers',
  'Noah',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:54',
  'Takuya Kuroda',
  'Zigzagger',
  'Zigzagger',
  'indie jazz, nu jazz, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/59mO0z3XsMmdIWBA8WHTKP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:04',
  'Kermit Ruffins',
  'Good Morning New Orleans',
  NULL,
  'brass band, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/09LHgBX7qtVQtFsZufi6vx',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:06',
  'David & Roselyn',
  'Sweet Georgia Brown',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:10',
  'Catherine Russell',
  'Going Back To New Orleans',
  'Send For Me',
  'vocal jazz, swing music, jazz',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2OVoxN3zfOw57Tg2djnIWX',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:23',
  'Don Vappie',
  'Port Bayou St. John',
  'Blue Book Of Storyville',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:23',
  'New Orleans Joy Makers',
  'What''s The Use',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:28',
  'Chris Barber''s Jazz Band',
  'EllingtoniaDoubleCheckStompStevedoreStomp...',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:33',
  'New Orleans Nightcrawlers',
  'Ursuline Second Line',
  'Atmosphere',
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2mcndFr75L1DX3wRulX5gi',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:39',
  'Lucien Barbarin',
  'Tishimingo Blues',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:47',
  'Leroy Jones',
  'Baby Won''t You Please Come Home',
  NULL,
  'brass band, ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3k4NiKfh6Lij2jJUIrjzvn',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:54',
  'Lars Edegran',
  'Aquellos Ojos Verde(Green Eyes)',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:54',
  'Mark Braud',
  'Dwight Braud Blues',
  'Hot Sausage Rag',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:02',
  'Wendell Eugene',
  'I Can''t Give You Anything But Love',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:05',
  'Bob French''s Original Tuxedo Jazz Band',
  'You''ve Got The Right Key But The Wrong Key Hole',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:11',
  'Sweet Emma',
  'Fidgety Feet',
  NULL,
  'ragtime, zydeco, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/5VblXaA0uBaDsihoASC1kx',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:23',
  'George Lewis',
  'Should I',
  NULL,
  'ragtime, free jazz, boogie-woogie',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1I9iQvDhnW3BizU0J9Ctk0',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:23',
  'Mari Watanabe',
  'Old Rockin Chair',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:30',
  'Gerald French & the original tuxedo jazz band',
  'muskrat ramble',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3MIoKjjjlOHCadQm9GfhcN',
  'found',
  94.7,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:35',
  'Wycliffe Gordon',
  'Up A Lazy River',
  'Hello Pops!',
  'christian jazz, jazz, big band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/7DNZHxrQIvjLAmqCrDtkA1',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:39',
  'Ronell Johnson',
  'That''s A Plenty',
  'That Gentilly Swing',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0o6nqIknxFnEtj5aivXhRC',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:45',
  'Danny Barker',
  'Can''t We Be Friends',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:48',
  'Mark Brooks',
  'How Come You Do Me Like You Do',
  'My Little Margie',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:52',
  'Thais Clark & Her Pam Court Serenaders',
  'Bye And Bye',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:03',
  'CHARLES BROWN',
  'HONEYDRIPPER',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:09',
  'ROOSEVELT SYKES',
  'BLUES BASS',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3tluCX0MxOnFBoY6To59dH',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:09',
  'ROOSEVELT SYKES',
  'ON THE SUNNY SIDE OF THE STREET',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0msnNzDUtHTQh8ODySgalP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:12',
  'ROOSEVELT SYKES',
  'HANGOVER',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4eLOvMKyA4tPO76yeEyijY',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:16',
  'ROOSEVELT SYKES',
  'LONG LONESOME NIGHT',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5q4NXRSTa4fdSWh6cBqGNv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:20',
  'ROOSEVELT SYKES',
  'COMING HOME',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7uNSzL5kLXZKbzHTr7RLhm',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:24',
  'ROOSEVELT SYKES',
  'TOY PIANO BLUES',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1S7IHsM30zwDRSKujXCu8U',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:27',
  'ROOSEVELT SYKES',
  'GREEN ONION TOP',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0YIs4Yqs5BgtNzvCu6J64m',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:32',
  'ROOSEVELT SYKES',
  'SUGAR CUP',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4zUcBV3eiOvzPWLZc7LTuM',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:34',
  'ROOSEVELT SYKES',
  'HOT NUTS',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7lpSMyGby40MsT13JiHtua',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:36',
  'ROOSEVELT SYKES',
  'DRIVING WHEEL',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/60hRi6ZwEKTQ5O9vt8br3s',
  'found',
  88.1,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:52',
  'ANNA MOSS',
  'SLOW DOWN KAMIKAZE',
  'AMNESTY',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0rxpCQEElJCw1jNIIHOglp',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:53',
  'JEFF BROUSSARD AND THE NIGHTIME SYNDICATE',
  'HELLO BABY',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:02',
  'PERCY SLEDGE',
  'TAKE TIME TO KNOW HER',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5UgzlDrLBJj9qIjSXdU0Yj',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:02',
  'PERCY SLEDGE',
  'TELL IT LIKE IT IS',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2ClfhEMRWE7LrEwsDIYoXe',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:03',
  'PERCY SLEDGE',
  'YOU DON''T MISS THE WATER',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0NJ4pEnvusFpnJDYzpfoLW',
  'found',
  91.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:08',
  'ROUGH SEVEN',
  'ST. ANTHONY',
  'GIVE UP YOUR DREAMS',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:11',
  'WILLIE TEE',
  'THANK YOU, JOHN',
  NULL,
  'northern soul, cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0BoqOgRYha5xpzy70w7LqQ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:13',
  'WYNTON MARSALIS JAZZ AT LINCOLN CENTER ORCHESTRA',
  'PARKER''S MOOD',
  NULL,
  'latin jazz, big band, jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4PkRPGYwJNnoGD2jz84hi1',
  'found',
  84.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:23',
  'IRMA THOMAS',
  'I NEED YOUR LOVE SO BAD',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2ykaQGOB0YE3oF4S5J4E6Q',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:24',
  'JULIE ODELL',
  'APOCAPOLYPSE MAKE OUT TAPE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:36',
  'Rory Danger And The Danger Dange',
  'Cat Man',
  'The Age of Exploration',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5lP2lKagYsynChsyHyyV01',
  'found',
  84.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:46',
  'FATS DOMINO',
  'BLUE MONDAY',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7iwQPvyViIkyT0HWnatjnk',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:46',
  'FATS DOMINO',
  'JAMBALAYA',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6liVZNPddEzxAycwFUYISS',
  'found',
  81.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:46',
  'FATS DOMINO',
  'LET THE FOUR WINDS BLOW',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1Hw3FmSlDwqhvtNSukbZKB',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:49',
  'ELVIS COSTELLO WITH EARL PALMER',
  'GLITTER GULCH',
  'KING OF AMERICA',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:52',
  'Dash Rip Rock - PAIN PILLS NEVER',
  'Pain Pills Never Expire',
  'A Song In Everyone',
  'psychobilly, roots rock, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/73t9XvBGcHKDMVxRyUc2cK',
  'found',
  74.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:57',
  'CHAMPION JACK DUPREE',
  'PUFF PUFF',
  NULL,
  'classic blues, blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2cIYj9AgvEokyatdXzEaCE',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:59',
  'DOUG AND RUSTY KERSHAW',
  'DIGGY LIGGY LO',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:02',
  'DR. JOHN',
  'THE FLAMING SWORD',
  'DUKE ELEGANT',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4xQ1qAjMULTcrUyneSoTFY',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:08',
  'THE DESLONDES',
  'LESS HONKIN'' MORE TONKIN''',
  NULL,
  'americana, alt country',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3w9e0SmPhSv1J19LzOeNUD',
  'found',
  72.6,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:16',
  'DESLONDES',
  'THIS IS NOT A SAD SONG',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:27',
  'Sweet Crude',
  'Mon Esprit',
  'Creatures',
  'cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7p02T2V97WFFSOf7mV3ZZH',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:39',
  'Sweet Crude',
  'Jolie Blonde',
  'Jolie Blonde',
  'cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0pCENOA4tG52xd8rBxLIki',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:48',
  'DESLONDES',
  'FIVE YEAR PLAN',
  NULL,
  'americana, alt country',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7cxNEDmtZhl2uB4RseZYXi',
  'found',
  73,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:48',
  'DOC CHEATHAM',
  'NEW ORLEANS',
  NULL,
  'jazz, ragtime',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3cK9XupQv1EWKPVMMcQxqd',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:48',
  'PAUL BARBARIN WITH DANNHY BARKER',
  'EH LAH BAS',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:55',
  'Bobby Rush',
  'Porcupine Meat',
  'Porcupine Meat',
  'blues, soul blues, classic blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2eV3zI9y4gKAzh2ZwzRWLX',
  'found',
  70,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:59',
  'Dr. John',
  'Eleggua',
  'Locked Down',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5zbKKnn0Ar6EMkP9q7nzd9',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:03',
  'BARRY WHITE',
  'IT''S ECSTACY WHEN YOU LAY DOWN NEXT TO ME',
  'ALL TIME GREATEST HITS',
  'disco, soul, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3QXNBUYJX2aekx6mHQ14GZ',
  'found',
  94.9,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:05',
  'Johnny Guitar Watson',
  'Superman Lover',
  'The Funk Anthology (CD01)',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4uSkp9MFh5VWMvmk6kz91a',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:11',
  'Lenny Williams',
  'She Took My Drawers',
  NULL,
  'quiet storm, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/01HZhFg6vDfSnW6oI9o5Rr',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:14',
  'FRANK MCMOMB',
  'GOTTA FIND A WAY',
  'LOVE STORIES',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:19',
  'Earth, Wind And Fire',
  'Getaway',
  'Spirit',
  'funk, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/67J6NR2Tdl0h2epWHcCBBN',
  'found',
  89.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:25',
  'Betty Wright',
  'Baby Sitter',
  'The Platinum Collection',
  'classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7GgOJVfchlSVLm1iQIDOt9',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:25',
  'HONEY CONE',
  'WANT ADS',
  'SWEET REPLIES',
  'northern soul, classic soul, motown',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/76lrpneaFuAxiMAbnNc6Hu',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:28',
  'EJ JONES',
  'GAS STATION LOVE',
  'SINGLE',
  '',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/05u9J0N4u9dduKObvvYzFI',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:32',
  'KING GEORGE',
  'FRIDAY NIGHT',
  'SINGLE',
  'zydeco, footwork, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1Ynv5ahQNdRRgDGcMVa3Y6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:36',
  'Freddie King',
  'Big Legged Woman',
  'The Shelter Records Years',
  'blues, classic blues, blues rock',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/37RtOpFMu0i0wzjtK7c1bn',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:42',
  'LATIMORE',
  'QUALIFIED MAN',
  'STRAITEN IT OUT',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5bCrFgw4doVSYLQpoJdR4x',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:46',
  'Bobby Blue Bland',
  'Members Only',
  'Members Only',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4wvKPOCiOlZh6xwwympC8c',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:50',
  'POKEY BEAR',
  'BUMP BUMP BUMP',
  'SINGLE',
  'zydeco, blues, footwork',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3j8WBBgh0ktSKSdBo2vVPL',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:55',
  'ARETHA FRANKLIN',
  'JUMP TO IT',
  'JUMP TO IT',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3MWoJGrKXOTlEBIZzDoZkx',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:00',
  'Chuck Carbo',
  'Drawers Trouble',
  'Drawers Trouble',
  'doo-wop',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2urKyk4uUq4AhFLit7jVn0',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:10',
  'Marvin Gaye',
  'I Want You (Vocal)',
  'Great Songs and Performances [19',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:19',
  'Betty Wright',
  'Let Me Be Your Lovemaker',
  'The Platinum Collection',
  'classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5lWRWrkDnxWU2WXdXrCaJ4',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:19',
  'GLADYS KNIGHT',
  'LOVE OVERBOARD',
  'ALL OUR LOVE',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2dykYf0mZG217bYkiREKEh',
  'found',
  76.4,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:24',
  'FUNKADELIC',
  'KNEE DEEP',
  'SINGLE',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:29',
  'SHIRLEY BROWN',
  'WOMAN TO WOMAN',
  NULL,
  'classic soul, soul, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4vrOAcjaNkGkV2ZswUZHC1',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:32',
  'Rufus Thomas',
  'The Breakdown (Part 1)',
  'Funkiest Man Alive- The Stax Fun',
  'classic soul, soul, northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3JsG5lLvDChBIDQjTwsy96',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:35',
  'SOLO',
  'Heaven',
  'SOLO',
  'new jack swing',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5Xv3eesPSCo1YVdU2RePWe',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:39',
  'Etta James',
  'Born Under A Bad Sign',
  'Life, Love & The Blues',
  'soul, soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6lbGZSI5ptoB8JXn0wtBC2',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:42',
  'Jon Cleary',
  'Help Me Somebody',
  'Mo Hippa',
  'cajun, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3h9Cb73AmkpayL5goQoWFS',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:52',
  'Stevie Wonder',
  'You`ve Got It Bad Girl',
  'Talking Book',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/57OXk0inzVWWphdygquXIy',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:59',
  'THE SPINNERS',
  'COULD IT BE I''M FALLING IN LOVE',
  'THE VERY BEST OF THE SPINNERS',
  'philly soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5i0urffBRKl09GSX2Jhdeh',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '16:46',
  'Ellis Marsalis',
  'Swinging At The Haven',
  'The Classic Ellis Marsalis',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0DBIYyONtffnfzghtKeOV6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:26',
  'Donald Harrison Jr',
  'The Art Of Passion',
  'The Art Of Passion',
  'brass band, cajun, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4swXwaUKGuuui36qOethwU',
  'found',
  72.6,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:28',
  'Kurt Ellings',
  'tHEY sPEAK No Evil',
  'In The Brass Palace',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:29',
  'James Brown',
  'Sunny',
  'Gettin'' Down To It',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:29',
  'Lonnie Listen Smith',
  'A Garden Of Peace 2025',
  'A Garden Of Peace 2025',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:32',
  'Maerice Brown',
  'Shine',
  'Shine',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:58',
  'Stanley Turrentine',
  'caravan',
  'If I Could',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:59',
  'Audrey LeCrone',
  'Hot Nuts',
  'single',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4xfJJxQPTZgE3hmaaGbltM',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:59',
  'Roy Hargrove',
  'Strasbourg/St. Denis',
  'Earfood',
  'jazz, jazz ballads, latin jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/62VWmsNoDmqT0Mj9oHHFVh',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:00',
  'Adonis Rose',
  'Smooth Jazz',
  'The Unity',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:10',
  'Sonny Criss',
  'Out Of Nowhere',
  'Out Of Nowhere',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/61rcyizfBhKoQtZclQhDFw',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:11',
  'John Dokes',
  'I Will Wait For You',
  'Our Day',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0AGbc98gCsyVHJfjDq91eU',
  'found',
  72.6,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:13',
  'Benny Golson',
  'whisper not',
  'whisper not',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4MQnsFi22wHTzOzod8iYDb',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:17',
  'john coltrane',
  'naima',
  'giant steps',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4jvCXYZwM8pR1p0vvK7PtW',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:30',
  'Dexter Gorden',
  'Three O''Clock In the Morning',
  'Classic Bluenote Recordings',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:39',
  'Eddie Harris',
  'Listen Here',
  'The Electrifying Eddie Harris',
  'soul jazz, jazz funk, hard bop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/54cxEkH90CHuDMe3dfiWOl',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:40',
  'Oliver Nelson',
  'Blues For Mr. Broardway',
  'More Blues And The Abstract Truth',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:52',
  'Ben E. King',
  'Besame Mucho',
  'Spanish Harlem',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/28NtAT1qy1k4Z0Lfe3shxZ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:53',
  'Wayne Shorter',
  'Black Nile',
  'Night Dreamer',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0Dfpbbbwi2MW7o6fGPJnNr',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:01',
  'DIRTY DOZEN BRASS BAND',
  'JOHN THE REVELATOR',
  'Funeral For A Friend',
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2YDUeulONtt8IFIsZfmRst',
  'found',
  90.3,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:05',
  'fats domino',
  'when the saints go marching in',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0KmbPjTHwZV7lmIwhBeXmV',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:07',
  'johnny guitar watson',
  'cold, cold heart.,',
  NULL,
  'blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5nIEwtPimAJW4byrPkxxw6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:09',
  'memphis minnie and kansas joe',
  'when the levee breaks',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0MOqj6Xt2xJ1L0hkRX1hns',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:13',
  'johnny cash',
  'me and bobby mcgee',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6VDrf0mwqJmGBtn11bWBAM',
  'found',
  74.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:16',
  'i saac hayes',
  'randolph and dearborn',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:19',
  'fats domino',
  'helping hand.',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/21SJiWZAQXVC1JK4KOpDGC',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:22',
  'wilson pickett',
  'teardrops will fall',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1ca3x8sBSYonA9V5rUVAVO',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:24',
  'lee dorsey',
  'work, work, work',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3MpqJujoIWtwENKzyLZveP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:27',
  'johnny cash',
  'satisfied mind',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4i5U0edk7EZFrgbrV5CiZ6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:30',
  'isaac hayes',
  'the red rooster',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/65BsUMwfZiEYMUgzgv1a2Z',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:34',
  'fats domino',
  'trouble in mind...',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6lBgS6zFG9SwtsFG0Og1uV',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:36',
  'nina simone',
  'gin house blues',
  NULL,
  'vocal jazz, soul jazz, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3fvYHuKuvcjBMKTFaVnyGt',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:38',
  'big amos patton',
  'going to vietnam',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5jMHCboQZZPHbps3LhYX73',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:42',
  'isaac hayes',
  'joe bell',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3T5GJhkEZ2dxVEhzVZRAMR',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:42',
  'johnny cash',
  'what is man',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6XkYXfLUaNAKquAHfVdk5a',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:48',
  'fats domino',
  'why don''t you do right',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3ztY1iQFildCCoL9JtIA4N',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:51',
  'johnny adams',
  'in a moment of weakness',
  NULL,
  'soul blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4ocDtEuuOpoZhPxG3S9Yqv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:53',
  'little richard',
  'i don''t know what you got',
  NULL,
  'rockabilly, rock and roll, doo-wop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0PkFYFPWz9vfSpN5HCIndR',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:57',
  'johnny cash',
  'understand your man',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/13kfQhv7drKlGtbfSz0H0u',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:00',
  'Isaac Hayes',
  'Hung up on my baby',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7wEGeUzpPNnHKfOtSgYjG4',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:01',
  'fats domino',
  'before i grow too old',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/46HWAi2wZzWQaRuSuX7Kdu',
  'found',
  88.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:09',
  'freddie scott',
  'are you lonely for me',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1k4ezzB6K9OjDBs8MYasri',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:12',
  'sugar pie desanto',
  'go go power',
  'in the basement',
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7LAYpsg85AZyNiMXCZFqa6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:18',
  'isaac hayes',
  'kidnapped',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3jSGlLGtEgtnXdiom2UsAk',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:18',
  'johnny cash',
  'cajun born',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2un5eSriHvrGIZ7iKiyS6z',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:20',
  'fats domino',
  'what a price.',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/66YWZw8kQkt0LZQokgMO89',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:27',
  'billy the kid emerson',
  'if lovin'' is believing',
  NULL,
  'classic blues, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5cuMEAui0BJxHANaEhnXPI',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:27',
  'wynona carr',
  'please mr jailer',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6e8MuYfAwNPOrrNb8HhdzQ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:29',
  'johnny cash',
  'orleans parish prison',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5FvJ83BvPK8cmY5lHmToio',
  'found',
  74.4,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:32',
  'isaac hayes',
  'run fay run',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5mwaa3dQPx9LVEJG5cXqFS',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:33',
  'fats domino',
  'three nights a week',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5l8AvWEzLSiHajzkdQ6WYZ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:36',
  'ruth brown',
  'mama he treats your daughter mean',
  NULL,
  'boogie-woogie, swing music, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2yShRZBSQ7Pa7GPrdQBjhy',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:39',
  'solomon burke',
  'home in your heart',
  NULL,
  'soul, soul blues, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0mtwviFWrTaFjb8EcYDwum',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:41',
  'johnny cash',
  'what is truth',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0snyjt8NMg7Dc7E3xnDH9b',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:45',
  'iaac hayes',
  'buns o'' plenty',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:48',
  'fats domino',
  'my heart is bleeding',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1UAbcX89xwBKoFN7JrsqoC',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:49',
  'the valentinos',
  'it''s all over now.',
  NULL,
  'northern soul, doo-wop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2tQ0AQqERX1t2S5chq9zBv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:52',
  'faye adams',
  'that''s what makes my baby fat',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0mUPYvsTbFN1f20twdLUrb',
  'found',
  94.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:52',
  'johnny cash',
  'do lord.',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4YVVuc40BBBfVtfKAYMiRT',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:55',
  'memphis underground',
  'theme from shaft.',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5lk9kxSl2K0CNHUpihvVT7',
  'found',
  84.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:01',
  'Fats Domino',
  'rising sun.',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4AT7dNrKZz7tYhWfKniTc9',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:06',
  'the 5 royales',
  'tears of joy',
  NULL,
  'doo-wop, northern soul, roots rock',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7ifgJqZqvP4VzkVjVSNekd',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:07',
  'bo diddley',
  'i''ve had it hard',
  NULL,
  'blues, classic blues, rock and roll',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7IgExJzfNioxLp6nQSvxOv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:09',
  'johnny cash',
  'louisiana man.',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5wOJStS7BHUPk8FlKYNaDk',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:10',
  'iaac hayes',
  'breakthrough',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:13',
  'Fats Domino',
  'the prisoner''s song',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6VlpDROAr1Jy5OpIXoqOst',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:18',
  'vivian reed',
  'i fel the earth move',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:21',
  'shorty long',
  'devil with the blue dress',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3H7tyINgmMveEd3p8WYo0p',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:23',
  'johnny cash',
  'god''s gonna cut you down',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6jXPZid0KLorvgIDP6TiSo',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:26',
  'isaac hayes',
  'the duke',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4Sj8FmVyT2cP3hkfCNcBzs',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:33',
  'Fats Domino',
  'i lived my life',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4MYMABF6EBGxckVsfuDzDT',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:36',
  'clarence carter',
  'set me free.',
  NULL,
  'classic blues, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2PJ9r5TFXrTKGgqBnBzAWn',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:36',
  'jean knight',
  'you city slicker',
  NULL,
  'classic soul, motown, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0rbtlfPUf239P4cQ9p4PFN',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:36',
  'johnny cash',
  'drive on',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/18G7C4uElv5Be4rpVCUjOZ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:39',
  'isaac hayes',
  'dorinda''s party',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2JEiclIv6hVZuY3g3EqGjv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:44',
  'Fats Domino',
  'red sails in the sunset',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6Y71cMJ51ghNyMawNXDt9J',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:47',
  'james brown and the famous flames',
  'i don''t mind.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2ccAMXmyEIP9JUIWSsTZFA',
  'found',
  91.9,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:50',
  'rhetta hughes',
  'you''re doing it with her when it should be with me',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4nQB6F5IZxw2gtvIxMgNqr',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:52',
  'johnny cash',
  'ain''t no grave.',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1xADYlM5rjnbJvAW2tc0qF',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:54',
  'Fats Domino',
  'valley of tears',
  'live at UNO',
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/07y359wzDBx5eGjKCZn5z5',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:54',
  'isaac hayes',
  'end theme',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/07Fsl68EtWOMbBQzDSbOG3',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:01',
  'KENNY BURRELL',
  'DOWNSTAIRS',
  'GUITAR FORMS',
  'hard bop, jazz, cool jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7zXdMe02Msa2iGQckEMI2e',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:03',
  'LEONARD COHEN',
  'THE GUESTS',
  NULL,
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1MJxEpCcl7V13Z76Nfy6Lp',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:05',
  'LEONARD COHEN',
  'DARKNESS',
  'OLD IDEAS',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0J7o7SK5I9WTyl6u86pMHF',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:13',
  'LEONARD COHEN',
  'DID I EVER LOVE YOU?',
  'POPULAR PROBLEMS',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2QCaIZQkKrDLmpSIcfQsDS',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:25',
  'LEONARD COHEN',
  'ANTHEM',
  'THE FUTURE',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7aAE5KL20Uycf3dswsaHjp',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:25',
  'LEONARD COHEN',
  'NIGHT COMES ON',
  'VARIOUS POSIITIONS',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2WgnLtwA8WxNuFRz6j0VXB',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:29',
  'Astral Project',
  'Sombras En La Noche',
  'VoodooBop',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1eRwKX1BFhVek2f7RzGxt3',
  'found',
  76.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:39',
  'FATS DOMINO',
  'GOING TO THE RIVER',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4UKHl1LeSu7Gci8ONW7g99',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:42',
  'FATS DOMINO',
  'TROUBLE BLUES',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1LEipO50i7GHp7x2A0eQYH',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:45',
  'FATS DOMINO',
  'COQUETTE',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3wVRC7XGgay0BoYiDsA5KP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:45',
  'FATS DOMINO',
  'SO SWELL',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5ZWeHOqNZIpo9t5dbQtfAh',
  'found',
  75.9,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:50',
  'JOHN LENNON AND YOKO ONO',
  'STARTING OVER',
  'DOUBLE FANTASY',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:55',
  'CHARLES LLOYD & THE MARVELS WITH LUCINDA WILLIAMS',
  'WE''VE COME TO FAR TO TURN AROUND',
  'VANISHED GARDENS',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:01',
  'CHARLES LLOYD',
  'NE ME QUITTE PAS',
  'JUMPING THE CREEK',
  'free jazz, hard bop, jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1S2Eb6UUcVz4iubHEeG5Bq',
  'found',
  80.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:15',
  'CHARLES AZNAVOUR',
  'LA BOHEME',
  NULL,
  'chanson, variété française, french jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1WvvmEowf7hiz5EnyAwtTj',
  'found',
  79,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:19',
  'CHARLES AZNAVOUR',
  'ISABELLE',
  NULL,
  'chanson, variété française, french jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1NZiAlQZeJSW7DNaOSOdzU',
  'found',
  74.1,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:24',
  'FREDDIE SCOTT',
  'ARE YOU LONELY FOR ME, BABY?',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3gQxrbpK4V3XmKI1kc487J',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:24',
  'FREDDIE SCOTT',
  'JUST LIKE A FLOWER',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6rOJnjdYb1NI4LhwfgYT19',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:30',
  'JOHNNY CASH',
  'ROWBOAT',
  NULL,
  'classic country, outlaw country, country',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6PSQXLJ32A7Ra9kfKP4q3M',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:34',
  'LEE HAZELWOOD',
  'HOUSE SAFE FOR TIGERS PART 1 & 2',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:34',
  'LEE HAZELWOOD',
  'THE NIGHT BEFORE',
  NULL,
  'baroque pop',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0SR9Imu6UcbMoPWI40Vh5P',
  'found',
  72,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:42',
  'LEE HAZELWOOD',
  'YOUR SWEET LOVE',
  NULL,
  'baroque pop',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6DVyQl6VTvbqNQ0WU7gXIR',
  'found',
  72,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:47',
  'TOWNES VAN ZANDT',
  'FOR THE SAKE OF THE SONG',
  NULL,
  'americana, folk, outlaw country',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4ELGuNlKE0uiD6waM1qWhu',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:49',
  'RY COODER',
  'PARIS, TEXAS',
  NULL,
  'blues, country blues, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1idiifjTcCoGfBeZiYOdim',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:57',
  'SHANNON MCNALLY',
  'AFTER MIDNIGHT',
  'MAGNOLIA',
  'americana, alt country',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4VHLVYN5bws2MFYhOqXywO',
  'found',
  100,
  '2026-02-27 07:39:37'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-27';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '00:00',
  'DUANE EDDY',
  'RAUNCHY',
  NULL,
  'surf rock, rockabilly',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/46mwWUGW6lzD4gLPAwdcMz',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '00:00',
  'GRACE JONES',
  'LIBERTANGO',
  NULL,
  'art pop',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4QHfFzsVXbLewUmI2UMel5',
  'found',
  71.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '06:01',
  'Buddy Rich & Gene Krupa',
  'Night Train',
  'Burnin'' Beat',
  'big band, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7rgmWU6JDJhKfpSrXbcMqO',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '06:20',
  'Henderson, Wooten, Smith',
  'Crash Course',
  NULL,
  'jazz fusion, jazz funk, modern blues',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1B4x1QONLMuIpJqYqdSyta',
  'found',
  74.9,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '06:25',
  'Tony Williams Lifetime',
  'emergency ward',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '06:49',
  'Corcoran Holt',
  'Flatbush',
  'Freedom of Art',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '06:49',
  'Jazz Sabbath',
  'The Wizard (Live)',
  'Jazz Sabbath Live',
  'jazz, jazz fusion',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7f0Tbc81ZnVWrUbQwIb8ah',
  'found',
  98,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '06:49',
  'Wajdi Cherif',
  'Wajdi Cherif_Live at FTH Theatre_Lost in the Moment',
  'Live at FTH Theatre NYC',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:00',
  'Mark Christian Miller',
  'Mr. Kicks',
  'Strange Meadowlark',
  'vocal jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/6NhYg4nlP6wHf43EWmwkqC',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:07',
  'James Fernando',
  'The Parisian',
  'Philly 3',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5fdKciy6f5Ddw2CNKJnEYU',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:11',
  'Dave Stryker',
  '2 Blue Fire',
  'Blue Fire',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:12',
  'Lafayette Harris, Jr.',
  'Time (feat. Jeremy Pelt)',
  'All in Good Time',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:41',
  'Daggerboard, The Skipper And Mike Clark',
  'Tranquil Blue',
  'Daggerboard, The Skipper And Mike Clark',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:41',
  'Elvin Jones & Jimmy Garrison Sextet',
  'Just Us Blues (feat. McCoy Tyner)',
  'Illumination! (feat. McCoy Tyner)',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:41',
  'Kevin Hays',
  'Sco More Blues (feat. Bill Stewart & Doug Weiss) [Live]',
  'Live at Smalls (feat. Bill Stewart & Doug Weiss)',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '07:50',
  'Eyal Vilner Big Band',
  'Shout, Sister, Shout!',
  'Big Apple Stomp',
  'swing music, big band',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/45WpytOfYkNKQM0HSCP83y',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '08:08',
  'Ola OnabulÃ© ft. Hazelrigg Brothers',
  'The Voodoo',
  'It''s Never Over',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '08:15',
  'Julian Lage',
  'Storyville',
  'Scenes From Above',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '08:25',
  'Aaron Parks',
  'Little River',
  'By All Means',
  'jazz, jazz fusion',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1kmKV67WowGUUR9KpklaMT',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '08:33',
  'Horace Silver',
  'Song for My Father',
  'Silver in Seattle: Live at the Penthouse',
  'hard bop, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1CDBaGlisZlOJzvx88lL8A',
  'found',
  98,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '08:47',
  'Eric Alexander & Vincent Herring',
  'A Peck A Sec',
  'Split Decision',
  'hard bop, jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2VeccWfY1EmvvDAHz8k21G',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '08:53',
  'Cecil Taylor',
  'Bemsha Swing',
  'Jazz Advance',
  'free jazz, experimental jazz, avant-garde',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/3k3nVFLnWCkhuKQTZOnioK',
  'found',
  98,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:07',
  'Jelly Roll Morton',
  'The Chant',
  'Great Original Performances- 192',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1MS9dbjUFMZz6e7KxUQZDv',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:10',
  'Louis Armstrong',
  'Cornet Chop Suey',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/17ePXPR7ozFN1IJxPH6Fql',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:14',
  'Jelly Roll Morton',
  'Black Bottom Stomp',
  'Great Original Performances- 192',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3orMMCSWQHPBVpmuSl9Abg',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:17',
  'Sidney Bechet',
  'Maple Leaf Rag',
  NULL,
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:20',
  'Johnny Dodds',
  'Ballin` The Jack',
  'Great Original Performances 1923',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4dk822de12lYql3NGHuMtN',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:23',
  'Original Tuxedo Jazz Band',
  'Et Las Bas',
  'Original Tuxedo JB Centennial',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:26',
  'Louis Armstrong',
  'Memories Of You',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3RHnCNgXRrDj1cMiMCBgx6',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:30',
  'Jelly Roll Morton',
  'Doctor Jazz',
  'Great Original Performances- 192',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4X0XLqn7JlDtsciNc44XkO',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:33',
  'Kid Ory',
  'South',
  'Kid Ory`s Creole Jazz Band- 1944',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3vGmib5KUJ3NNEl12BBTAe',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:36',
  'Albert Burbank with Kid Ory & hi',
  'Fidgety Feet',
  'Sounds of New Orleans Vol. 3',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:42',
  'Kid Sheik',
  'I Want To Be Happy',
  'Kid Sheik In Cleveland And Bosto',
  'brass band, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4Rm1LBTf1xKXGxq7BD3hWO',
  'found',
  70.7,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:44',
  'Louis Armstrong',
  'That`s My Home',
  'Sugar- The Best Of The Complete',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7cOP0FJzPYpGaxNiwQr7r4',
  'found',
  86.4,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:48',
  'Kid Sheik',
  'Over In The Gloryland',
  '1961',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:50',
  'Preservation Hall Jazz Band',
  'Louisiana Fairytale',
  'Preservation- An Album To Benefi',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5WehPMJFchIR9tsvwtNnYV',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:54',
  'Fats Waller',
  'China Boy',
  'The Savory Collection 1935-1940',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '09:59',
  'Sidney Bechet',
  'Atlanta Blues (Sarah Martin, Blu',
  'Volume 1 -- 1923',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '10:28',
  'Preservation Hall Jazz Band',
  'Ain`t She Sweet',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '10:32',
  'Preservation Hall Jazz Band',
  'Hindustan',
  'Preservation Hall Jazz Band Live',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3BuCpbnWDLs38gTXARuedB',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '10:37',
  'Sweet Emma Barrett',
  'Tishomingo Blues',
  'New Orleans- The Living Legends',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/49IrCc6OmXTgH3WOtJVrV8',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '10:42',
  'Jim Robinson',
  'In The Shade Of The Old Apple Tr',
  'New Orleans- The Living Legends',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0M2gAeO3QBbV1T1482DzJJ',
  'found',
  93,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '10:45',
  'Sweet Emma',
  'Somebody Stole My Gal',
  'Sweet Emma The Bell Gal At Dixie',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '10:50',
  'Jim Robinson',
  'When You Wore A Tulip',
  'New Orleans- The Living Legends',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5xxzjLz55abygx6GCn2wn9',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '10:55',
  'Mark Braud',
  'Floatin Down The Old Green River',
  'Shake It And Break It',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:08',
  'Electric Yat Quartet',
  'tico tico',
  'Stringin'' with Some BBQ',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/42ZnBi3LJFwAmyTOTp0BEE',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:08',
  'lil queenie',
  'my darlin new orleans',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:13',
  'Margie Perez',
  'Quimbara',
  'Love is All',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7x4ybzhYDHX4TjzNnpCDtl',
  'found',
  81.6,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:19',
  'Paul Sanchez',
  'The Best Bards Know',
  'The Best Bards Know',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/42Gub5M09wcMG5Nhs5F71y',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:24',
  'Linnzi Zaorski',
  'How I''d Love to Take Orders From You',
  'Greet the Dawn',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:27',
  'Gal holiday',
  'Let''s Run Away',
  'Lost & Found',
  'honky tonk',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/67kyGEUDZkMaq3v7Ks5MGk',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:33',
  'Robin Barnes',
  'Hey Na',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:43',
  'Robin Barnes',
  'Eh Ma Belle',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:51',
  'MESCHYIA LAKE & THE LITTLE BIG HORNS',
  'THAT CHICK''S TOO YOUNG TO FRY',
  'BAD KIDS CLUB',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:55',
  'NOLA String Kings',
  'Si Tu Vois Ma Mere',
  'Dream Palace',
  'ragtime, afro-cuban jazz, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2d88FXO6u5o9adGl2ptBrc',
  'found',
  78.4,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '11:57',
  'Irene Sage',
  'Come On In',
  'Come on In',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/11b2aGKZQUfarxQwICNHr1',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:00',
  'Dr John',
  'Let''s Make A Better World',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1pQDCxe6aZCXyYBuRHlpIQ',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:14',
  'Ella Fitzgerald and Louis Armstr',
  'Love Is Here To Stay',
  'Ella and Louis Again',
  'jazz, vocal jazz, swing music',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/63qs0QjDLhV22OMdAxGaMQ',
  'found',
  79,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:23',
  'Iguanas',
  'Boom Boom Boom',
  'Nuevo Boogaloo',
  'tejano, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4hPyd0086Rz8up0YOQhUVh',
  'found',
  71.8,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:24',
  'Phil Melancon',
  'Men of the Sewerage & Water Board',
  'Alive at Le Pavilion',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:25',
  'Kermit Ruffins With The Rebirth',
  'It`s Later Than You Think',
  'Throwback',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:32',
  'Neville Brothers',
  'Ball Of Confusion (That`s What T',
  'Walkin` In The Shadow Of Life 20',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:39',
  'Eric Johanson',
  'Don''t Hold Back',
  'Live In Mississippi',
  'blues rock, modern blues, blues',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/78ofxwsnF5AUVNCIA2zxdb',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '12:52',
  'Eric Johanson',
  'Yellow Moon',
  'Yellow Moon',
  'blues rock, modern blues, blues',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4OAuobpqqRv1PthT6TKBOE',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:00',
  'eLECTRIC yAT qUARTET',
  'Blue Rondo a La Turk',
  'Stringin'' with some BBQ',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3dJutXNcy3ss6TEPzf2iYe',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:08',
  'Freddie Keppard',
  'messin'' around',
  'The Complete Set 1923-26',
  'ragtime, jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1SsU2APUINtlk6QdNS1g57',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:13',
  'Freddie Keppard',
  'HERE COMES THE HOT TAMALE MAN',
  'The Complete Set 1923-26',
  'ragtime, jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3M4q4zUhywdFefbEVClg8X',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:18',
  'Freddie Keppard',
  'Salty Dog, Part 2',
  'Festival de Jazz',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:20',
  'Freddie Keppard',
  'sTOK yARD Strut',
  'Festival de Jazz',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:24',
  'Jimmy Buffett',
  'University of Bourbon Street',
  'Equal Strain on All Parts',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:28',
  'Freddie Keppard',
  'So This is Venice',
  'The Complette Set 1923-26',
  'ragtime, jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2VxqEA0hhPBR8q79eoPew1',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:30',
  'JAMES BOOKER',
  'ALL AROUND THE WORLD',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5DMBQrBdudPYM8szoZSKSl',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:39',
  'Chuck Perkins',
  'Lil Liza Jane',
  'A Lovesong for NOLA',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2b7rlT7CZfrj6UAUcgbROh',
  'found',
  83.2,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:41',
  'Bo, Monk 7=& the Rebirth bras bnd',
  'Sho-Fly',
  'LA Spice',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:49',
  'Ingri Lucia feat. the Bonerama Horns',
  'Rhinestone Cowboy',
  'Fortune',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:50',
  'Funk Monkey',
  'Am I The Same Girl',
  'Pre-Roll',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '13:55',
  'Bonerama',
  'Ohio',
  'so much love',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:00',
  'Dr. John',
  'Going Back to New Orleans',
  'Going BAck to New Orleans',
  'cajun, zydeco',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1Pm466s6uewgUglATVbZgN',
  'found',
  80.5,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:03',
  'Clarence `Gatemouth` Brown',
  'Funky Mama',
  'Gate`s On The Heat [Bonus Track]',
  'blues, classic blues, modern blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2mTUnMqEtb0gxwwVfRywsB',
  'found',
  85.5,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:13',
  'Big Chief Monk Boudreaux and Spyboy Jwan Boudreaux',
  'Low Down Dirty Blues',
  'Slip Don''t Fall',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:14',
  'Dean Zucchero',
  'Crawfish No More',
  'Song For The Sinners',
  'modern blues, blues rock, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6qUmgcmCTLyrLfo90jwf56',
  'found',
  75.1,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:19',
  'Marva Wright',
  'Born With The Blues',
  'Born With The Blues',
  'zydeco, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3YC64bBrAAvSVMTvOb60Or',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:26',
  'Trudy Lynn',
  'Trouble With Love',
  'Golden Girl',
  'soul blues, blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1QMD9IliT7V9XADovU4rnM',
  'found',
  70,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:31',
  'Eddie 9V',
  'Halo',
  'Saratoga',
  'retro soul, soul blues, modern blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6HZnfTf3jPklvOcImCy4WS',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:44',
  'Sally Baby''s Silver Dollars',
  'Down in New Orleans',
  'Sally Baby''s Silver Dollars',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:47',
  'John Mooney',
  'Push & Shove',
  'Truth of the Matter',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:51',
  'Buddy Red',
  '1958',
  '1958',
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7EpwrQ4tSJszHQbyMtNuHz',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '14:54',
  'Rev. Peyton''s Big Damn Band',
  'John Hughes',
  'TheWhole Fam Damily',
  'bluegrass, roots rock, southern gothic',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5rBsWY9DYfGQ8hxzVk13eH',
  'found',
  83.2,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:00',
  'Bettye Lavette',
  'Why Does Love Got To Be So Sad',
  'Interpretations',
  'soul blues, northern soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6odhbJr6rl1mNHpld4q2Hu',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:07',
  'Irma Thomas',
  'Another Man Done Gone',
  'After The Rain',
  'classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1Pnhvd4erl0dyh4mPlG6lq',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:10',
  'North Mississippi Allstars',
  'Stuck Inside Of Mobile With The',
  'Keys To The Kingdom',
  'modern blues, southern rock, jam band',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/28aD0kMB5Jxwyn56NGLZio',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:14',
  'COREY HARRIS',
  '5-0 BLUES',
  'Fish Ain''t Bitin''',
  'blues, modern blues, country blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/27tk87JtoaWeqDeovdIPGr',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:19',
  'Papa Mali',
  'Early In the Morning',
  'Do Your Thing',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:42',
  'Johnny Sansone',
  'The Night The Pie Factory Burned Down',
  'Once it Gets Started',
  'modern blues, blues, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6QJFqyd0Q246qFmaNr8d11',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:42',
  'Masters Of Reality',
  'T.U.S.A.',
  'Sunrise On The Sufferbus',
  'stoner rock, stoner metal, sludge metal',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7LR1PJwcOEPUkquondSMO7',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '15:56',
  'Bonnie Raitt',
  'Everything That Touches You',
  'Streetlights',
  'blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6fHXNNdf1a2RmgmTrjWQ78',
  'found',
  88.1,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:04',
  'Bill Ware and the Club Bird Allstars',
  'Martian sunset',
  'Martian Sunset',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:05',
  'Brandon Sanders',
  'Shadowboxing',
  'Lasting Impression',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:11',
  'Jackie McLean',
  'I Found You',
  'Fire And Love',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:21',
  'Alvin Batiste',
  'Late',
  'Late',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4LlHcS8yVlKqDkN6QLGmqC',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:23',
  'JD Allen',
  'I Get Along With Out Very Well',
  'Love Letters (The Ballad Sessions)',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:31',
  'Freddie Hubbard & Jimmy Heath',
  'All Members',
  'Jam Gems',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:36',
  'Ahmad Jamal',
  'The Girl Next Door',
  'Complete Live At The Spotlight 1958',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:39',
  'Miles Davis',
  'Blue In Green',
  'Kind of Blue',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6eDwvuj5HgrswLPGyCMtsY',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:52',
  'Cory Weeds Jerry Weldon',
  'Hey Lock!',
  'Cory Weeds Meets Jerry Weldon',
  'jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6uSb7uaHwOHFhao4Tr3Baq',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '16:58',
  'Paul Sanchez',
  'Love Always Finds A Way',
  'Love Always Finds Away',
  'brass band, cajun, zydeco',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2GDMkvOvtgVyH4T90aPehg',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:08',
  'Paul Sanchez',
  'Waypoints And Dive Joints',
  'Love Always Finds A Way',
  'brass band, cajun, zydeco',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6Btp8NAHy0acE1R2FtBcFn',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:11',
  'John Coltrane',
  'Blue Train (Alternate Take)',
  'Blue Train',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6MDu4rxAE3aBxtiZdlTYeB',
  'found',
  98,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:21',
  'John Coltrane, Johnny Hartman',
  'Lush Life',
  'John Coltrane & Johnny Hartman',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0Srs2sPdZTfFvvfLP4DGa0',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:28',
  'Bill Cunliffe Trio',
  'God Only Knows',
  'Sunrise Over Molakai',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:36',
  'Ricky Sebastian',
  'Footsteps',
  'The Spirit Within',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:40',
  'George Coleman',
  'Stella By Starlight',
  'George Coleman with Strings',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7rUK6bTeusEoi2H3OBqonl',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:46',
  'Roderick Harper',
  'Put A Smile On Your Face',
  'Confidence',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0di7t3IO06R5zE5iEqCXVc',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:51',
  'Eric Alexander',
  'Early Morning Stroll',
  'Like Sugar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/432n8eGB20ZQb4oT0IArwG',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '17:55',
  'Dexter Gordon',
  'Society Red',
  'The Classic Blue Note Recordings',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/535ESV6NM4qtKHJkfKxG5F',
  'found',
  98,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:07',
  'Ike Quebeck/Freddie Roach-organ',
  'I Want A Little Girl',
  'Heavy Soul',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:10',
  'Shirley Scott',
  'Triste',
  'Great Scott!',
  'soul jazz, hard bop, acid jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/61iLVnr218iKuSUAFZy7sb',
  'found',
  98,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:17',
  'Linda Dachtyl',
  'Caravan',
  'Full Steam Ahead',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:26',
  'Joey DeFrancesco',
  'Swingin'' The Samba',
  'Finger Poppin: Celebrating The Music of Horace Silver',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0yzv9pnwxKto5ADsp3JWRS',
  'found',
  90.6,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:33',
  'Jason Marsalis',
  'And The Beat Goes On',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:39',
  'Eric Scott Reed',
  'Delightful Daddu',
  'Out Late',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:45',
  'Paul Sanchez',
  'All The Broken Hearted Artists',
  'Love Always Finds A Way',
  'brass band, cajun, zydeco',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2CeFiYmdbV2dVYEORgwFc8',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:51',
  'Chick Corea Christian McBride Brian Blade',
  'Work',
  'Trilogy 2',
  'jazz fusion, jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2JcUpMuDQuOoJt2ULTCNvd',
  'found',
  79.3,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '18:56',
  'Ellis Marsalis',
  'Goodbye',
  'On The First Occasion',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/3gJ7Hfx83eNIxDQNxF0fEs',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:03',
  'me first & the gimme gimmes',
  'top of the world',
  NULL,
  'ska punk, punk, skate punk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1g7JqvlVogGPJJ33thdne3',
  'found',
  88.8,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:06',
  'etta james',
  'I got you babe',
  NULL,
  'soul, soul blues, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/228jEjW3dgYStlF1JrZfdq',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:08',
  'brave combo',
  'purple haze',
  NULL,
  'polka',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/008CwFW5o6TmGGQ9dOIAHn',
  'found',
  82.3,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:10',
  'marty stuart',
  'running down a dream',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:14',
  'lost bayou ramblers',
  'I love rock n roll',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:17',
  'badgerino',
  'eye of the tiger',
  NULL,
  'blues rock, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4wWgfNJszxZOTNILRK41SY',
  'found',
  86.2,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:24',
  'dread zeppelin',
  'kung fu fighting',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:29',
  'rolling stones',
  'YOU CAN''T CATCH ME',
  NULL,
  'classic rock, rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0PAIXbeVe6z8zlkuVHHiq5',
  'found',
  84.4,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:34',
  'marcia griffiths',
  'Don''t let me down',
  NULL,
  'rocksteady, lovers rock, reggae',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4Syz1PCBRXy9oAt5R3hEPu',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:37',
  'green day',
  'I fought the law',
  NULL,
  'punk, pop punk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1j2h6KLOmjWrxpSsfwoKXd',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:38',
  'flying lizards',
  'Money',
  NULL,
  'new wave',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5rgY6vN5CaEL3boucCi3CT',
  'found',
  82.4,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:42',
  'peter sellers',
  'Can''t Buy Me Love',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:44',
  'egg yolk jubilee',
  'aunt cheese wheat',
  NULL,
  'cajun, zydeco',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3RaBnivKrm091cUwyedGt4',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:46',
  'spike jones',
  'sabre dance',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:48',
  'merry clayton',
  'rainy day wome #12 & 35',
  NULL,
  'classic soul',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4BoikJC6AqRciOjXoCe3ba',
  'found',
  90.7,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:51',
  'cliff wagner',
  'Don''t Think Twice',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:53',
  'david bowie',
  'knock on wood',
  NULL,
  'glam rock, art rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6KgmbHqwwekzfHPMSTsa50',
  'found',
  88.6,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '19:57',
  'jimi hendrix',
  'get out of my life woman',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:04',
  'benzedrine monks',
  'do you think I''m sexy',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:07',
  'richard cheese',
  'rock the casbah',
  NULL,
  'comedy, swing music',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0pGWlg1SV7M04NFZDxH9yF',
  'found',
  98,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:09',
  'william shatner & peter frampton',
  'spirit in the sky',
  NULL,
  'spoken word, classic rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4ysguUpDdaoLM8b6GpJesF',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:11',
  'pat boone',
  'smoke on the water',
  NULL,
  'adult standards',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6FKKTuCncZ57NZFGjqJfTo',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:18',
  'deep purple',
  'the battle of new orleans',
  NULL,
  'hard rock, classic rock, rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3h0E66eHFp7RhkncoKGboe',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:20',
  'dolly parton',
  'Purple Raine',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:30',
  'chipmunks',
  'wild thing',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:32',
  'mr chicken',
  'the final countdown',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:33',
  'kermit the frog',
  'this frog',
  NULL,
  'children''s music',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5rjv5YbFjaHeCgEJq5a4ej',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:38',
  'liberace',
  'flight of the bumble bee & the bumble boogie',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/278IGOIWpbULNX1ZgJtHMp',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:40',
  'melbourne ska orchestra',
  'pink panther theme',
  NULL,
  'ska, rocksteady, ska punk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6kdLYUjLzU16xvz1ust11c',
  'found',
  93,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:44',
  'cha wa & alvin youngblood hart',
  'Masters Of War',
  NULL,
  'brass band, cajun, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6sJ8td31CEEcrxQStJSxxN',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:49',
  'tav falco',
  'Brazil',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '20:53',
  'post modern jukebox',
  'talk dirty',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:06',
  'phil degruy',
  'theme from MASH',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:07',
  'lucinda williams',
  'street fighting man',
  NULL,
  'alt country, americana, outlaw country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1Lw6xQ2izxXxNdXNYyLS35',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:11',
  'bonerama',
  'Third Stone From The Sun/ ride on',
  NULL,
  'brass band, cajun',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5QOkYc7cxMvlPAtFcKuG17',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:15',
  'mavis staples & willie nelson',
  'Grandma''s Hands',
  NULL,
  'outlaw country, classic country, country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5ei4fpAeExAQfduUR2ov1h',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:20',
  '8 bit remix',
  'Sweet Dreams Are Made of This',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:24',
  'odetta',
  'mama told me not to come',
  NULL,
  'folk, traditional folk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0s3AKOp2llosJjC9jcPMDO',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:26',
  'bonnie raitt',
  'right down the line',
  NULL,
  'blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1ciDeTaBbYEP3aBj2Eu5X4',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:31',
  'lettuce',
  'everybody wants to rule the world',
  NULL,
  'jam band, funk, jazz funk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0UAEKR6MERtRUStQcSEdsH',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:34',
  'glen campbell & roy clark',
  'ghost riders in the sky',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:35',
  'DR. JOHN',
  'END OF THE LINE',
  NULL,
  'cajun, zydeco, classic soul',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2IwhGWbdmfMZMZ9JE4GiDN',
  'found',
  71.5,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:35',
  'THE METERS',
  'WITCHITA LINEMAN',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:35',
  'james booker',
  'On The Sunny Side Of The Street',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1J7N2A9TacvffOGYY3AGA5',
  'found',
  100,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:35',
  'jason ricci & joe krown',
  'Ode to Billie Joe',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-28 07:52:44'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '21:35',
  'neville brothers',
  'if i had a hammer.',
  NULL,
  'cajun, zydeco',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0YlWSmTIJJYJQ9eJlBXcrA',
  'found',
  86,
  '2026-02-28 07:52:44'
);