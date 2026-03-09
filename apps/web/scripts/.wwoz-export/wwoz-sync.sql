-- WWOZ Database Export
-- Generated: 2026-03-09T09:30:07.547Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-09 06:17:08
-- Days: 4
-- Tracks: 299

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-06',
  'https://open.spotify.com/playlist/5RwfUmgeuI1ZXngDdOGFV8',
  '{"totalTracks":63,"successfullyFound":45,"notFound":18,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-07 07:42:33',
  '2026-03-09 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-07',
  'https://open.spotify.com/playlist/4VlBNa6ZynDll5dV23Wjcy',
  '{"totalTracks":111,"successfullyFound":69,"notFound":42,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-08 08:09:42',
  '2026-03-09 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-08',
  'https://open.spotify.com/playlist/1j2FAj1xokfNZNVKGfA0OI',
  '{"totalTracks":96,"successfullyFound":59,"notFound":37,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-09 06:16:24',
  '2026-03-09 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-09',
  NULL,
  '{"totalTracks":14,"successfullyFound":11,"notFound":3,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-09 06:16:24',
  '2026-03-09 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-03-06';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '06:17',
  'Return to Forever',
  'Romantic Warrior',
  NULL,
  'jazz fusion, jazz, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7p2TzhFWl5zpqBnG0TAnED',
  'found',
  86.9,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '06:47',
  'James Booker',
  'Blueberry Hill > Let The Four Winds Blow',
  'Behind The Iron Curtain',
  'boogie-woogie, cajun, ragtime',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5kWa7cX25okXHJY9X6I6Hz',
  'found',
  95.8,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '06:47',
  'Joe Krown',
  'Uptown Boogie',
  'New Orleans Piano Rolls',
  'zydeco',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4AsKxuvg59x8STLR9bmWIC',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '06:50',
  'Lafayette Harris, Jr.',
  'Iko Iko',
  'All in Good Time',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2kKaNesRaL8K6HM6SikPkE',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '07:42',
  'Daggerboard, The Skipper And Mike Clark',
  'Runnin'' Into One',
  'Daggerboard, The Skipper And Mike Clark',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '07:42',
  'Julian Lage',
  'Red Elm',
  'Scenes From Above',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '07:43',
  'James Fernando',
  'Singularity',
  'Philly 3',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/31OEddcxVVlrTbUVtl8LyG',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:11',
  'Eyal Vilner Big Band',
  'Let the Good Times Roll',
  'Big Apple Stomp',
  'swing music, big band',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2yR8YnZiMdpY9c8vm1ztZ7',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:11',
  'Eyal Vilner Big Band',
  'The Tip Jar Blues',
  'Big Apple Stomp',
  'swing music, big band',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4fvFPowioWTGrzYRtDjiQd',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:11',
  'Jazz Sabbath',
  'Behind The Wall Of Sleep (Live)',
  'Jazz Sabbath Live',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4NABGC8kxVrsrbh6Z68TcR',
  'found',
  98,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:29',
  'Lettuce',
  'Cook',
  'Cook',
  'jam band, funk, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/73jwUC2e8UdsBUk7wqyoWz',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:52',
  'Ghost-Note',
  'Slim Goodie',
  'Mustard n'' Onions',
  'jazz funk, jazz fusion, funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5acAF3aMbtb49WDDohfWKb',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:52',
  'Horace Silver',
  'The Kicker',
  'Silver in Seattle: Live at The Penthouse',
  'hard bop, jazz, bebop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/03GekuTeEoSNyD3Ggg1xZD',
  'found',
  70.8,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:52',
  'Makaya McCraven',
  'Sunset',
  'Deciphering The Message',
  'nu jazz, experimental jazz, indie jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5PAQ2JpAOHW8q7u17qqh58',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '08:55',
  'Branford Marsalis',
  'Blues For One',
  'In My Solitude- Live At Grace Ca',
  'jazz, vocal jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2ILgNoEuozXJl4ZRddSfkj',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '09:07',
  'Jelly Roll Morton',
  'Black Bottom Stomp',
  'Great Original Performances- 192',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3orMMCSWQHPBVpmuSl9Abg',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '09:11',
  'Louis Armstrong',
  'Shine',
  'Essential Louis Armstrong 2',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6Ljmv3jYHknxNOURjomCxu',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '09:22',
  'Fats Waller',
  'I Got Rhythm',
  'The Savory Collection 1935-1940',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/64ERJk46NhMNvT4ypIZsB0',
  'found',
  72.6,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '09:24',
  'Louis Armstrong',
  'Struttin` With Some Barbecue',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4FFngk7s8FmSyIamI5wAXt',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '09:39',
  'Lars Edegran',
  'Shout Sister Shout',
  'Shout Sister Shout- Edegran Orch',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '09:56',
  'George Lewis',
  'Ice Cream',
  'Ice Cream',
  'ragtime, free jazz, boogie-woogie',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0tj3FmT7o4qVZ5ZbIaHhIZ',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '10:13',
  'Doreen Ketchens',
  'Down In Honky Tonk Town',
  'Doreen`s Jazz New Orleans Vol. V',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '10:16',
  'Doreen Ketchens',
  'Lil Liza Jane',
  'New Orleans The Band! The Band!',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '10:29',
  'Mark Braud',
  'China Boy',
  'Shake It And Break It',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '10:32',
  'Mark Braud',
  'Floatin Down The Old Green River',
  'Shake It And Break It',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '10:42',
  'Leroy Jones',
  'Armstrong Parade',
  'I''m Talkin'' Bout New Orleans',
  'brass band, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3rb3ouU4WMyAcE5U22XCiP',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '10:48',
  'Leroy Jones',
  'When My Dreamboat Comes Home',
  'Mo` Cream From The Crop',
  'brass band, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6hkPavPwg2nh4DkND4egec',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '10:56',
  'Preservation Hall Jazz Band',
  'Ti-Pi Ti-Pi Tin',
  'Songs Of New Orleans (CD01)',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2SgV7N4g0ra1Jecg4ifRoG',
  'found',
  98,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:03',
  'johnny sansone',
  'oz radio',
  NULL,
  'modern blues, blues, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/23HOZlwVjE8RRUV7VuOBCa',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:08',
  'johnny jenkins',
  'voodoo in you',
  NULL,
  'blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2KkfWKZVoLFpAP7dOZ7Oc2',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:24',
  'johnny winter',
  'rollin cross the country',
  NULL,
  'blues, blues rock, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4d6VjFTRmRrGDX6BVs7VpF',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:25',
  'king curtis',
  'wet funk',
  NULL,
  'soul jazz, classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3w37WdQ8vHCVtlO4oWMTNz',
  'found',
  75.7,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:33',
  'king floyd',
  'i feel like dynamite',
  'CHOICE CUTS',
  'classic soul, motown',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3icEt2TCIsw0kPZvGRyA5K',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:39',
  'lee fields and the expressions',
  'money is king',
  'my world',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:42',
  'mike mattison and trash magic',
  'I can''t stand it',
  'turn a midnight corner',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '14:59',
  'steve cropper, pop staples, albert king',
  'don''t run down your heater down',
  'jammed together',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '15:17',
  'tami lynn',
  'one more night of sin',
  NULL,
  'northern soul, motown, classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1xRszeOQaHXEcNSTxXqBTM',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '15:17',
  'willie tee',
  'I''m only a man',
  NULL,
  'northern soul, cajun, zydeco',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/65v7qYTzSokU6nACYIZmvu',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '15:26',
  'james booker',
  'one day from being a fool',
  NULL,
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '15:37',
  'freddi/henchi and the soulsetters',
  'funky to the bone',
  NULL,
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7848JMy11fZljVWE3G9LLB',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '15:50',
  'earth, wind and fire',
  'system of survival',
  NULL,
  'funk, disco',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0PWpenS4tZEHeOlS5Rt67L',
  'found',
  89.5,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '16:05',
  'Eric Alexander & Vincent Herring',
  'Pharoahs Dance',
  'Split Decision',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/3fqV9s8djLL1pL2BFLqLCQ',
  'found',
  77.4,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '16:09',
  'Eddie Allen''s Push',
  'Rhythm People',
  'Rhythm People',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '16:09',
  'Ellis Marsalis',
  'Twelve`s It',
  'Twelve`s It',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '16:28',
  'Herlin Riley',
  'Borders Without Lines',
  'Perpetual Optimism',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5mrtCmMRDHNyfaqssLLAtW',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '16:40',
  'Dexter Gordon',
  'Guess I`ll Hang My Tears Out To',
  'The Classic Blue Note Recordings',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/57Qv0Ls4xEB3UblVSeCbUJ',
  'found',
  96.1,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '16:51',
  'Gregory Groover Jr',
  'Good Sir',
  'Old Knew',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '16:55',
  'Herbie Hancock',
  'Riot',
  'The Complete Blue Note Sixties S',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/01L7NrYczCVyoQ91CmCtNw',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '17:08',
  'Lee Morgan',
  'The Sidewinder',
  'The Sidewinder',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0jGh2myWgeSSuj0bXeYZn0',
  'found',
  98,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '17:33',
  'Gregory Agid',
  'Mystery Blues',
  'Back In The House',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1Ux2iz2HAdoDl9WeAM4Z0F',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '17:35',
  'John Coltrane',
  'All Or Nothing At All',
  'Ballads',
  'jazz, jazz ballads, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/34awem0NGNdHpLkTt3t1vI',
  'found',
  83.2,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '17:39',
  'Nicole Glover',
  'Petrichor',
  'Memories Dreams Reflections',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/3Gnc4SAepPlhlcCZvCQiJc',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '17:49',
  'Nick Finzer',
  'Say When',
  'The Jazz Orchestra Vol. 1',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5rrHwrjJBIEY3feIND6U4F',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '17:53',
  'Cyrille Aimee',
  'Let''s get Lost',
  'Let''s Get Lost',
  'french jazz, vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/681APKGStzVRMjGUGHxm2E',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '18:04',
  'Richard -Groove- Holmes',
  'Hot Tat',
  'Hot Tat',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '18:12',
  'Jack McDuff',
  'Laura',
  'The Re-Entry',
  'soul jazz, jazz funk, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/43GdNARIagsfAQFJU2yTB1',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '18:24',
  'Dr. Lonnie Smith',
  'Your Mama`s Got A Complex',
  'Too Damn Hot!',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1M2H7VCzNIfEkjjHdsYWBz',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '18:29',
  'Joey DeFrancesco',
  'Moanin`',
  'The Street of Dreams',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/06LK7vP4JcaaD3CBIptLui',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '18:41',
  'Bobby Hutcherson',
  'Jitterbug Waltz',
  'For Sentimental Reasons',
  'hard bop, jazz, free jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2Zs9T5QAFwRPZeoVFRymsg',
  'found',
  100,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '18:47',
  'Victor Goines',
  'Body And Soul',
  'Morning Swing',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '18:57',
  'Miles Davis',
  'I Thought About You',
  'Love Songs',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/35cVPYey7qARqHMRKn5fio',
  'found',
  91.6,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '21:55',
  'Meters',
  'Good Old Funky Music',
  'Funkify Your Life- The Meters An',
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-06',
  '21:57',
  'Meters',
  'A Message From The Meters',
  'Funkify Your Life- The Meters An',
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-03-07 07:42:33'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-07';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:04',
  'Lionel Hampton',
  'On The Sunny Side Of The Street',
  'Chronological 1937-1938',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/71Za4EwTDqJHeY4rL76qsX',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:07',
  'Lionel Hampton',
  'Ring Dem Bells',
  'Chronological 1937-1938',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/7eQzjisRnA54XTht46hEWl',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:16',
  'Nat Gonella',
  'The Japanese Sandman',
  'The Golden Age of Nat Gonella & His Georgians',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4T7ps8K0qGXfSfT6RegAPL',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:19',
  'Nat Gonella',
  'Caravan',
  'The Golden Age of Nat Gonella & His Georgians',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:28',
  'Pasadena Roof Orchestra',
  'You''re The Cream In My Coffee',
  'Greatest Hits',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:31',
  'Pasadena Roof Orchestra',
  'Varsity Drag',
  'Greatest Hits',
  'swing music, orchestral, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0Pkl3h49om2kYWlqSbzcJZ',
  'found',
  89.5,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:40',
  'Climax Jazz Band',
  'Savoy Blues',
  'Live at Malloney''s',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:45',
  'Climax Jazz Band',
  'Cakewalkin'' Babies',
  'Live at Malloney''s',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:56',
  'Mills Brothers',
  'Daddy''s Little Girl',
  'Best of the Decca Years',
  'big band, adult standards, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3mJ4KsaqFTOZuOt005fBiv',
  'found',
  86,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '08:59',
  'Mills Brothers',
  'You Always Hurt the One You Love',
  'Best of the Decca Years',
  'big band, adult standards, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/42og107RMzQPsQUIJBSUbD',
  'found',
  86,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:14',
  'Mitchell Brothers',
  'Nobody Knows What a Red-Head Mamma Can Do',
  'Library of Congress National Jukebox',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:17',
  'Mitchell Brothers',
  'Linger Awhile',
  'Library of Congress National Jukebox',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:25',
  'International Novelty Orchestra',
  'No Wonder',
  'Library of Congress National Jukebox',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:26',
  'International Novelty Orchestra',
  'All Alone',
  'Library of Congress National Jukebox',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5ykb1Ry7kSttQMpDNuXxYM',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:35',
  'Skeets Tolbert And His Gentlemen Of Swing',
  'Papa''s In Bed With His Britches On',
  'Chronological 1931-1940',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:38',
  'Skeets Tolbert And His Gentlemen Of Swing',
  'Everybody Loves My Baby',
  'Chronological 1931-1940',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:48',
  'Reuben Reeves & Omer Simeon',
  'Papa Skag Stomp',
  'Complete Recorded Works In Chronological Order 1929-1933',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2XXihThSLzrqeCA1Ri8IVx',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '09:51',
  'Reuben Reeves & Omer Simeon',
  'Beau-Koo Jack',
  'Complete Recorded Works In Chronological Order 1929-1933',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3uyVYIccYm8nMh4ChRrVHc',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '10:00',
  'Bix Beiderbecke',
  'Blue River',
  'Volume I - Singing The Blues',
  'ragtime, big band, jazz',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/2T4GIQJMJEPEpRk1VDK1kV',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '10:25',
  'Rebirth Brass Band',
  'Feel Like Funkin` It Up',
  'Ultimate',
  'brass band, zydeco, cajun',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/45wVHx4mkMrIWUjbELiuqG',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '10:59',
  'Dirty Dozen Brass Band',
  'Blackbird Special',
  'This Is The Dirty Dozen Brass Ba',
  'brass band, jam band, cajun',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/1sOg5pN3Z7RCXk1NxtGooe',
  'found',
  90.3,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '11:04',
  'Kermit Ruffins',
  'I Got Mine',
  'Livin` A Treme Life',
  'brass band, cajun',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/4kA04sOJI7p0CFk4PyU7q9',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '11:39',
  'Louis Armstrong',
  'Anybody Here Want To Try My Cabb',
  'Portrait Of The Artist As A Youn',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:04',
  'Asylum Street Spankers',
  'Brazil',
  NULL,
  'swing music, ragtime, electro swing',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5qfGJRzSDCsDkXHytf5y5J',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:16',
  'Ana Paula & Clara da Silva',
  'Amor pra Dar e Receber',
  NULL,
  'samba, new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5l9hW5BMS1L16QrUkFPRFl',
  'found',
  83,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:20',
  'Rizzueto',
  'Doacao',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:24',
  'Leo Cavalcanti & Josyara',
  'Abracao a Brasa, Brasil',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:27',
  'Antonio Adolfo',
  'Obrigado',
  NULL,
  'brazilian jazz, latin jazz, bossa nova',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4UVnsBtqTddAoT0f6UL1Bv',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:37',
  'Glause, Homero, e Ivan Ferreira',
  'Me da um dinheiro ai',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:39',
  'Clarisse Assad',
  'Electrified!',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:43',
  'Djavan',
  'Muito Obrigado',
  NULL,
  'mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4SDRW95c93E7dLJY9aOdeg',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:46',
  'Ricardo Severo',
  'Tema de Caros Ouvintes',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/0QloIwi7A8NICvvlH4biRo',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:55',
  'Itamar Assumpcao',
  'Prezadissimos Ouvintos',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '14:58',
  'Elis Regina',
  'Amor Ate o Fim',
  NULL,
  'mpb, bossa nova, brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/1EdU5mcOXLk8bYwYG9uBj5',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:01',
  'Welbert Almeida',
  'Nova Orleans',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/31vEsfyOUobcsbPRclx60j',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:05',
  'Roger Davidson Trio',
  'Amor Brasileiro',
  NULL,
  'cool jazz, brazilian jazz, latin jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/35tc2q25TsFESmfJYxXVXd',
  'found',
  78.7,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:15',
  'Jorge Ben',
  'Mexe Mexe',
  'Reactivus Amor Est',
  'mpb, bossa nova, samba',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/0OkXz94xfROIbjq2kI8au7',
  'found',
  86,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:18',
  'Gal Costa',
  'Borzeguim',
  NULL,
  'mpb, bossa nova, brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/1GI3BPlK6KGJ6Vwv9z7Ww4',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:31',
  'Claudio Daeulsberg',
  'Samambaia',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:34',
  'Carlinhos Brown',
  'Por Causa de Voce',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:37',
  'Osmar Milito',
  'Maracatu Atomico',
  NULL,
  'brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6i0PVCE63wMU94Jc6FQatI',
  'found',
  79,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:40',
  'Arturo Sandoval',
  'Aguas de Marco',
  NULL,
  'latin jazz, afro-cuban jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6qed5WM55jFUC1pEA30gkQ',
  'found',
  70.9,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:45',
  'Chick Corea',
  'Brazil',
  NULL,
  'jazz fusion, jazz, latin jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/12QpEAKAH8Zj9pEAWtyCst',
  'found',
  82,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:49',
  'Vanessa da Mata',
  'Nao Me Deixa So',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:54',
  'Os Mutantes w/Zelia Duncan',
  'Baby',
  'Barbacan Theater, Lon',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '15:57',
  'Chico Buarque',
  'Morena de Angola',
  NULL,
  'mpb, bossa nova, samba',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/29tZp1e7ppeVeWqyEGkg5S',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '16:03',
  'los indios tabajaras',
  'bali ha''i',
  'song of the islands',
  'latin folklore',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/34WftnDz6kAeG8tt2mCUeC',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '16:11',
  'mao sidibe & def mama def',
  'oya',
  'oya',
  '',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/13ExQdpYd7ZQrx8Pubz1TA',
  'found',
  83.2,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '16:13',
  'aby ngana diop',
  'liital',
  'liital',
  '',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4juBKVB8iE3FMRzxRwpuwV',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '16:25',
  'bayuratu abebi',
  'yesuke',
  'and her waka band',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '16:38',
  'salawa abeni',
  'waka disco',
  'omi yale',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:02',
  'etoile de dakar',
  'maleo',
  'maleo',
  'afropop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0P5oZSYBLHOTRNCqA0iCQw',
  'found',
  73.9,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:08',
  'jimmy cliff',
  'give the people what they want',
  'give the people what they want',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:21',
  'aby ngana diop',
  'michael ozone''s liital rhythm',
  'aby ngana diop remixes',
  '',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/26tH5DS5U2vBs6YO2YyP73',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:21',
  'bloody civilian',
  'natural mystic',
  'bob marly: one love',
  'alté, afrobeats, afrobeat',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4A7x5uAzDrRQjWZ7xKTTss',
  'found',
  72.3,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:23',
  'dhee, tiwa savage, santhosh narayanan & wondagurl',
  'ancient seed',
  'ancient seed',
  'tamil pop, tamil dance, kollywood',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/68ecoJITGB8aJzb02krL8n',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:34',
  'bloody civilian',
  'head start',
  'ancient seed',
  'alté, afrobeats, afrobeat',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4N7alCheeoFUxAAKkuTzU5',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:42',
  'mona haydar',
  'set the record',
  'songs from the mothership',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:43',
  'asayel',
  'asliyah',
  'asliyah',
  'arabic hip hop, egyptian hip hop, egyptian pop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/5IHH65QmmSkqhbATP3sZFt',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '17:43',
  'felukah',
  'danger',
  'danger',
  'arabic hip hop, egyptian hip hop, indie r&b',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3dSuHRqX1Ewa2uoZVXU4CW',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:10',
  'Seprock',
  'Track 37',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:11',
  'Captain Sky',
  'Moonchild',
  'The Return Of Captain Sky',
  'post-disco',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6wFVAPKbmNFnbC0M9bC7iv',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:22',
  'Pigbag',
  'The Big Bean',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:25',
  'First Love',
  'Don''t Say Goodnight',
  NULL,
  'post-disco',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6WercWrIjPcxCSsIIv4VBy',
  'found',
  98,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:44',
  'Rufus',
  'Love The One You''re With/Sit Yourself Down',
  's/t',
  'quiet storm',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6jpGCFzLqwCrROGGAFDQHJ',
  'found',
  93.5,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:47',
  'Sam Dees',
  'What''s It Gonna Be',
  'The Show Must Go On',
  'northern soul, soul',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/7eohzncnzxiPYNXVTkwE2k',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:56',
  'June Conquest',
  'What''s This I See',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '18:57',
  'Gloria Walker and the Chevelles',
  'Need Of You',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '19:13',
  'Freddy King',
  'Funky',
  NULL,
  'blues, classic blues, blues rock',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/7H0vdFZVvTb67EzC2PneGB',
  'found',
  70.2,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:00',
  'Ike & Tina Turner',
  'Bold Soul Sister',
  'Bold Soul Sister: The Best of th',
  'motown, northern soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/6g2RtR71Qj12dKQIwPpFJc',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:07',
  'Theadora Ifudu',
  'This Time Around',
  'This Time Around (Twice as Much)',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:12',
  'Gladys Knight & the Pips',
  'When You''re Far Away',
  'Visions',
  'motown, classic soul, soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/1vDAN6BFynONTlemYdzE2i',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:18',
  'LaRombe',
  'Love Will Make it Better',
  'From Philly',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:27',
  'The Originals',
  'You Are a Blessing to Me',
  'Down to Love Town',
  'northern soul, motown, classic soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/45hgRoy2VwWGcNNjYw62Iz',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:33',
  'Black Ivory',
  'You Are My Lover',
  'Then and Now',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:42',
  'Kool & the Gang',
  'Music is the Message',
  'Music is the Message',
  'disco, funk',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/4MJyaqLd0NN40OhsSjVxZq',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '20:47',
  'E.U.',
  'Go On With Your Bad Self',
  'Just the Way You Like It',
  'go-go, new jack swing',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/2tder0ykiyoSaLFfPkL8A4',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '21:00',
  'Prime Time',
  'I Owe it to Myself',
  'Flying High',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '21:09',
  'Elements of Love',
  'Fade Away',
  '12 inch single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '21:24',
  'Brothers Johnson',
  'Ain''t We Funkin'' Now',
  'Blam',
  'funk, disco',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/2sLPpoWJkmvizELriXX8nb',
  'found',
  86,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '21:30',
  'Eugene Record',
  'Fan the Fire',
  'Welcome to My Fantasy',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '21:42',
  'Slave',
  'Slide ''88',
  'Slave ''88',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '21:52',
  'James Brown',
  'There It Is (Pt 1)',
  NULL,
  'funk, soul, motown',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/6BrJUFBGSrVZoFogu8XSze',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '21:58',
  'Betty Everett',
  'Keep it Up',
  'Happy Endings',
  'northern soul, doo-wop, motown',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/0uLBSqnRS6L7nCirPDSVCp',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:04',
  'Nina Simone',
  'Turn Me On',
  'Silk & Soul',
  'vocal jazz, soul jazz, soul',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/5TX08awwAs7EHiUAZot3UM',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:05',
  'Anna Moss',
  'Don''t Stop Me Now',
  'Don''t Stop Me Now',
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7xxIHjB2ZU6ZiAxvkwlFGw',
  'found',
  92.6,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:05',
  'Koushik',
  'Battle Rhymes for Battle Timesq',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:09',
  'Mitch Mitchell',
  'Never Walk Out On You',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/0vpBUlrrehbKNDcIk0XHwe',
  'found',
  74.1,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:12',
  'La Tromba',
  'Calaba Calabao',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7scoNOkySD9K0G8oWaOdjZ',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:16',
  'Rebbie Jackson',
  'Centipede',
  NULL,
  'post-disco, new jack swing',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7dox9B92nanss0YuviceR9',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:20',
  'Barbara Mason',
  'Give Me Your Love',
  NULL,
  'philly soul',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3FWFzU86JBKIcAh7iMUxN5',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:24',
  'Both Worlds',
  'Don''tcha Hide It',
  'Don''tcha Hide It',
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:29',
  'Rubblebucket',
  'Rattlesnake',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/07QW84jXLxsyWAhNV8jQdi',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:37',
  'Qwanqua',
  'Somali',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:37',
  'The Lijadu Sisters',
  'Not Any Longer',
  NULL,
  'highlife, afrobeat',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/4xMp9le2qWuL22Fnu3RWUv',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:41',
  'Tune-Yards',
  'Sunlight',
  NULL,
  'art pop',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/5r1GLt3FX07Hg3QTfLXIEZ',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:45',
  'Sam Redmore',
  'A Day in the Dub',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:48',
  'Scotty',
  'Draw Your Brakes',
  NULL,
  'rocksteady, reggae, dub',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/77gwQr8zQG0JYqlG1F1efc',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:51',
  'Wildcookie',
  'Serious Drug',
  NULL,
  'acid jazz',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3EKzH4moV9wWTkVEdgz91A',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '22:54',
  'Gwen McRae',
  '90% of Me is You',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:00',
  'Liquid Liquid',
  'cavern',
  NULL,
  'post-punk, post-disco',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3vS2tjkjD5GSt1ZHOWkQq8',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:00',
  'PawPaw Rod',
  'Glass House',
  'Glass House - Single',
  'indie r&b',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7eOunaNuVmDp5ii1bDqWz8',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:06',
  'Millie Jackson',
  'If Loving You Is Wrong I Don''t Want to Be Right',
  'Caught Up',
  'northern soul, classic soul, soul blues',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/4rlG6QVRACECzJUKRhSMD2',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:16',
  'Misha Panfilov',
  'Coral Song',
  NULL,
  'experimental jazz, ambient jazz',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3Ih01oAp0UTV5tsnmJUBAx',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:19',
  'Ben Marc',
  'Way We Are',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7a1DupIRwQT6BqiXqfwP1F',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:23',
  'Telemakus',
  'Fluttering',
  NULL,
  'nu jazz, jazz funk, jazz fusion',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/5yb0pjtikOmPylTG7PzdBI',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:27',
  'Juana Molina',
  'Indignan a un Zorzai',
  'Doga',
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:37',
  'Daniel Villareal',
  'Parque en Seis',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:37',
  'Fela Soul',
  'Breakadawn',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:42',
  'Susan Cadogan',
  'DO IT BABY',
  NULL,
  'lovers rock, rocksteady, reggae',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/2xCbxVVskxFaTnnG4kkr10',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:43',
  'Lynn Long',
  'Don''t let me down',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3MYZOrF4W1M9R0sfVSMzKG',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:45',
  'Wilfred Luckie',
  'My Thing',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/2CkEWbwNtzW4a6WXIdW55E',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:50',
  'Monik',
  'THANK YOU',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/34vOILAz1FuRDbqIz9K17Q',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:53',
  'DirtBike',
  'Picaron',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:53',
  'Moses Sumney',
  'Cut Me',
  NULL,
  'art pop, indie soul',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1A2BT8JYVRjsKdswwvWXG6',
  'found',
  100,
  '2026-03-08 08:09:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-07',
  '23:58',
  'Little Beaver',
  'I Love the Way you Love',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1LPVJndUFA8cUx8eSpbEyP',
  'found',
  100,
  '2026-03-08 08:09:42'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-08';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
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
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:05',
  'Count Basie',
  'Stormy Monday Blues',
  'The Classic Roulette Collection 1958-1959',
  'big band, swing music, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3WV58EQcLGSvZQoTyvax8Z',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:08',
  'Summit Reunion',
  'Love Theme From Picnic/Moonglow',
  '1992',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:16',
  'Bria Skonberg',
  'Lullabye/ A Child Is Born',
  'What It Means',
  'vocal jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/7IBgnwPnG5Co2qVqxcwHPx',
  'found',
  87.5,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:20',
  'Gene Harris',
  'The Sidewinder',
  'Swingin The Blues',
  'jazz, cool jazz, soul jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4Y4Cuju8kG5oAv1gsytRWC',
  'found',
  74.5,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:26',
  'Teddy Edwards and Houston Person',
  'Pennies From Heaven',
  'Close Encounters',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:37',
  'Nat King Cole',
  'It''s Not What You Say',
  'The Complete Lost Concert',
  'christmas, adult standards, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/2VJLDpFxqhn9O4eHDOd6JJ',
  'found',
  84.1,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:40',
  'Glenn Miller',
  'Song Of The Bolga Boatmen',
  'The Lost Recordings',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:43',
  'Ben Webster',
  'Over The Rainbow',
  'In A Mellotone',
  'jazz, jazz ballads, cool jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/69XmGDda7Gd8UITZ80n1HD',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:54',
  'Diana Krall',
  'I Don''t Stand A Ghost Of A Chance With You',
  'Love Scenes',
  'vocal jazz, jazz, jazz pop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5KI1o8Ta8lnR5SO19WEdtO',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '06:59',
  'Budd Johnson',
  'Destination Blues',
  'Complete Stanley Dance Mainstream Jazz on Felsted 58-59',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '07:04',
  'Buster Bailey',
  'Memphis Blues',
  'Complete Stanley Dance Mainstream Jazz on Felsted 58-59',
  'swing music, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/2ppG9rJfzro3MrJU1Y5P3v',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '07:18',
  'Louis Armstrong',
  'Back O Town Blues',
  'Complete Louis Armstrong Columbia RCA Victor Studio 46-66',
  'jazz, swing music, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1QDcdOQtAEOFA0qzXXC4kk',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '07:23',
  'Lionel Hampton',
  'Someday My Prince Will Come',
  'Mostly Blues',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '07:35',
  'Jane Morgan',
  'What A Difference A Day Made',
  'Seven Classic Albums',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '07:38',
  'Budd Johnson',
  'Foggy Nights',
  'Complete Stanley Dance Mainstream Jazz on Felsted 58-59',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '07:48',
  'The Ray Brown Trio',
  'Kelly''s Blues',
  'Don''t Get Sassy',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '07:55',
  'Dena DeRose',
  'Hold Fast To Your Dreams',
  'Mellow Tones',
  'vocal jazz, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5d491BskIOE8Lp4o8peiar',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '08:03',
  'Vigorito, Going, Zigmont, Sinclair, Mark, Hyman, Bissonnette',
  'Make Me A Pallet On The Floor',
  'Jam Session In Connecticut Volume 2',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '08:10',
  'Johnny Hodges',
  'What''s It All About',
  'The Best Of The Verve Years',
  'cool jazz, jazz, bebop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3LES7l3SZnAJB8xPzJjm6Y',
  'found',
  72.2,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '08:43',
  'Mississippi Mass Choir',
  'When I Rose This Morning',
  'See You in the Rapture',
  'gospel, traditional gospel, worship',
  'The Gospel Show',
  'Lauren Mastro',
  'https://open.spotify.com/track/11dkIaVR8Mx27Polm9U8wE',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '08:45',
  'BIG FREEDIA',
  'HOLY SHUFFLE',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'The Gospel Show',
  'Lauren Mastro',
  'https://open.spotify.com/track/4Y6x385r5gUr5Ey57Mp9z6',
  'found',
  72.6,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '08:59',
  'Jamie Soles',
  'I Come to Praise Him',
  'Good Advice',
  '',
  'The Gospel Show',
  'Lauren Mastro',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '09:02',
  'Chicago Mass Choir',
  'God is My Everything',
  'Project Praise Live in Atlanta',
  'gospel, traditional gospel, worship',
  'The Gospel Show',
  'Lauren Mastro',
  'https://open.spotify.com/track/04MPnUpNYCSCllb5I2geRn',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '09:25',
  'Irma Thomas',
  'Just a Little While to Stay Here',
  'Walk Around Heaven',
  'classic soul',
  'The Gospel Show',
  'Lauren Mastro',
  'https://open.spotify.com/track/3BzSG5OvMSUmSJB2XDx3ec',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '09:25',
  'The Branchettes',
  'Come By Here',
  'Stay Prayed Up',
  '',
  'The Gospel Show',
  'Lauren Mastro',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:03',
  'Bruce Daigrepont',
  'Perrodin Two-Step',
  'Petit Cadeau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:04',
  'Bruce Daigrepont',
  'Perrodin two step',
  'Petit Cadeau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:15',
  'T Marie & Bayayou Juju',
  'Sugar Bee',
  'T Marie & Bayou Juju',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:16',
  'Lafayette Rhythm Devils',
  'Hicks wagon weel special',
  'Les Clefs de la Prison',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:20',
  'FeuFollet',
  'Madame Bosso',
  'Cow Island Hop',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6wxnRAVZLYNmggsrpzsbce',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:30',
  'Charivari',
  'I want to dance with you',
  'I Want to Dance with You',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1OJTH3DzNN6xyG3opGs74Y',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:36',
  'Balfa Toujours',
  'La chchandndellae est alumee',
  'Live at Whiskey River Landing',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:38',
  'Balfa Brothers',
  'Madeleine',
  'Balfa Brothers Play Traditional Cajun Music Vol I & II',
  'cajun, zydeco, folk québécois',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3viSC2iVrLwYoppmopnReA',
  'found',
  86,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:55',
  'BeauSoleil avec Michael Doucet',
  'Le jig Creole',
  'From Bamako to Carencro',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/573IfTlAT3D8YW5mgrBqGO',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '12:58',
  'Creole Belles',
  'Tes parents ne veulent pls',
  'Creole Belles',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:01',
  'High Performance',
  'Fifi Poncho',
  'Thats What Makes the Cajuns Dance',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:11',
  'Savoy Family Band',
  'Tite Robe Ccourte',
  'Turn Loose but Dont Let Go',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:14',
  'Steve Riley & the Mamou Playboys',
  'Clin doeil',
  'Bayou Ruler',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6ZFkS5zGMdauZbNalGNmLV',
  'found',
  79,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:28',
  'T-Mamou',
  'Ossun two step',
  'Cajun & Creole Jam',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5OUxHVNypJHEv5tB5YFXDt',
  'found',
  88.7,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:30',
  'Les Amis Creole',
  'Poullard special',
  'Les Amis Creole',
  'cajun, zydeco, traditional music',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2VOjLpSHTNV4wHOBzjaA9y',
  'found',
  89,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:33',
  'Buckwheat Zydeco',
  'Lache pas la patate',
  'Buckwheat Zydeco Story',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4uqr1V9s2AWnFEWaGyhXk9',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:48',
  'Chubby Carrier',
  'Your love keeps lifting me higher',
  'Back to My Roots',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:49',
  'Beau Jocque & the Zydeco Hi-Rollers',
  'Gardez donc',
  'Pick Up on This',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2rE2v69jLQFFWooCiFmAnN',
  'found',
  93.1,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:55',
  'Rolling Stones & Steve Riley',
  'Zydeco Sont Pas Sale',
  'Tribute to the King of Zydeco',
  'classic rock, rock, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6t4QKiYbyoLfsa0NrOBUSr',
  'found',
  76.2,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '13:58',
  'Corey Ledet Zydeco',
  'Medikamen',
  'Medikamen',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '14:04',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '14:20',
  'Todd Snider',
  'Enjoy Yourself',
  'East Nashville Skyline',
  'alt country, americana, outlaw country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3fevsds61d5JAzZvSWnI64',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '14:25',
  'John Prine',
  'In Spite of Ourselves (feat. Iris DeMent)',
  'In Spite Of Ourselves',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '14:39',
  'Gregg Hill',
  'Oh-Dee-Aye',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0kO5nYREaCpWrQDLxRF2aw',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '14:41',
  'The Wood Brothers',
  'Honey Jar',
  NULL,
  'bluegrass, newgrass, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/05ifN6wsfyc1JIGDTTpBMp',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '14:50',
  'Allen Toussaint',
  'Yes We Can',
  NULL,
  'cajun',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/7jyquSccpyQ25wPgmP1ehU',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '15:11',
  'Anders Osborne',
  'Ho-Di-Ko-Di-Ya-La-Ma-La',
  'Ash Wednesday Blues',
  'modern blues, jam band, blues rock',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/17jUgGQ6XIx5UUml4Xyb1p',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '15:25',
  'California Honey Drops',
  'Here Comes Love',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '15:37',
  'The Wood Brothers',
  'Sing About It',
  NULL,
  'bluegrass, newgrass, americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1hkC9kHG980jEfkTmQYB7t',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '15:43',
  'Lyle Lovett',
  'If I Had A Boat',
  NULL,
  'alt country, americana, outlaw country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6oZaeLPOAb3Rn408f3IQiB',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '15:44',
  'Gregg Hill',
  'Big Blue Moon',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0Z3cDPxSF21i4PN0JsoGLi',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '15:50',
  'Mark Carroll',
  'Marguerite',
  NULL,
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4mR7LtoECk7siA66CtTH9z',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '15:58',
  'Lulu And The Broadsides',
  'Ice Cream Man',
  'Lulu And The Broadsides',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3os4nAXm4pZGOvQKyjdpJC',
  'found',
  82.8,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
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
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '16:14',
  'MAYNARD FERGUSON',
  'SAY IT WITH TRUMPETS',
  'THE BIRDLAND DREAMBAND VOL. II',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '16:15',
  'JONAH JONES',
  'I''M IN THE MARKET FOR YOU',
  'JONAH JUMPS AGAIN',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '16:27',
  'BOB BROOKMEYER',
  'JIVE HOOT',
  'BOB BROOKMEYER AND FRIENDS',
  'jazz, cool jazz, jazz ballads',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1ZUHdJPSwvEBIPJ2jQ5VRi',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '16:28',
  'THE TROMBONES, INC.',
  'DUES BLUES',
  'THE TROMBONES, INC.',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '16:49',
  'AL COHN AND ZOOT SIMS',
  'STOCKHOLM TO L.A.',
  'MOTORING ALONG',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '16:50',
  'EDDIE DAVIS',
  'SWINGIN'' TILL THE GIRLS COME HOME',
  'SWINGIN'' TILL THE GIRLS COME HOME',
  'hard bop, soul jazz, jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5poMCzfgxqM9h2CtDAGQEl',
  'found',
  77.7,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '17:13',
  'BUDDY RICH',
  'WACK WACK',
  'BIG SWING FACE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '17:18',
  'THAD JONES, MEL LEWIS',
  'THREE IN ONE',
  'PRESENTING THE JAZZ ORCHESTRA',
  'big band',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5NdEAODwKFtl1ZJ0Bjyk9h',
  'found',
  82.8,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '17:29',
  'THE NEW ORLEANS NIGHTCRAWLERS',
  'BIG BOTTOM',
  'ATMOSPHERE',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '17:34',
  'dirty dozen brass band with dizzy gillespie',
  'night train',
  NULL,
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '17:49',
  'THE RAMSEY LEWIS TRIO',
  'DANCING IN THE STREET',
  'DANCING IN THE STREET',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '18:00',
  'Gene Krupa Orchestra',
  'Thanks for the Boogie Ride',
  '45 Single - Okeh',
  'big band, swing music',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/6OlXaFu6dst9anqntQm8Nz',
  'found',
  88.3,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
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
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:14',
  'Cole Williams',
  'Let''s Live Together',
  'How We Care For Humantity',
  'retro soul',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/6q8KK4YXB5DTjErwLXd9qg',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:14',
  'Tony Allen',
  'Gbedu',
  'Legos No Shaking',
  'afrobeat',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4WRoz05bYGW0uoI7qnQLBX',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:18',
  'Roberta Flack',
  'Afro blue',
  'First Take',
  'adult standards, classic soul',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2bWxzJ6vsItTYRsoRxZUT0',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:35',
  'Monty Alexander',
  'Jammin''',
  'Stir It Up: The Music of Bob Marley',
  'jazz',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/1hklt25aLqABE1s7vTX0vM',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:35',
  'Monty Alexander',
  'Kaya',
  'Sir It Up',
  'jazz',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4yqcu6jmdJMt34L6BYsV5g',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:36',
  'Soul Remedy',
  'Let It Shine',
  'Soul Remedy',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:41',
  'Zap Mama',
  'Day by Day',
  'Day by Day',
  'afropop, neo soul',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2Jmhg6KyTI3NRJWR0pReiU',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:48',
  'Marty Most',
  'Drumscussion',
  'Marty Most, Jazz Poet, presents: Drumscussion',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '20:58',
  'Kelly Love Jones',
  'Mama Knows',
  'Love Is The Frequency',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/56bYSGOPp9l8IvKesbPSkD',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:00',
  'The Lijadu Sisters',
  'Danger',
  'Danger',
  'highlife, afrobeat',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/0rMHMWvUbtamettgcfMINI',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:14',
  'Tuff Lion',
  'Vibes Preservation',
  'Ten Strings',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/2uMq5N2DCvUfcgjMIhi4LK',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:14',
  'Tuff Lion',
  'Yad Along',
  'Ten Strings',
  'roots reggae, reggae, dub',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/4y4erAqjF8uuzNiOlCpFeE',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:23',
  'Tuff Lion',
  'Majestic Honour',
  'Ten Strings',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:26',
  'Etana',
  'Jah See Dem A Come',
  'Strictly the Best Vol.58',
  'lovers rock, reggae, roots reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5wZpcROvfik0vYTWOSIY2F',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:41',
  'Marcia Griffiths',
  'Lets Talk About Music',
  '3 Blind Mice Riddim',
  'lovers rock, rocksteady, reggae',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/7d38pKH2jlljHFWxUtJ7Rb',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:42',
  'The Dynamics',
  'Low Rider',
  'Drag N''Fly',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/445LQUtVXZbq33JwhNojTf',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:46',
  'Fela Ransom-Kuti and The Africa ''70 with Ginger Baker',
  'Egbe Mi O',
  'Fela Ransom-Kuti and The Africa ''70 with Ginger Baker - Live!',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:53',
  'Monty Alexander',
  'So Ja Sah',
  'Stir It Up: The Music Of Bob Marley',
  '',
  'Spirits of Congo Square',
  'Baba Geno',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '21:59',
  'Roy Ayers',
  'Everybody Loves The Sunshine',
  'Ubiquity',
  'jazz funk',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/5le4sn0iMcnKU56bdmNzso',
  'found',
  78.5,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '22:07',
  'Ian Dogole',
  'Tunji (Live)',
  'The Last Trane to Africa',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4RKya5O0U5lhpfg43UMwrw',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '22:20',
  'Heisenberg Uncertainty Players',
  'Hold On',
  'Return to the Enchanted Forest',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4oGu22FCIfWSUFeoLgditG',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '22:28',
  'Dave Douglas',
  'Energy Fields',
  'Transcend',
  'free jazz, jazz, experimental jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2X83nyB8sO0psRjCYF8Tt7',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '22:35',
  'Eddie Allen, PUSH, Steve Turre',
  'Eve''s Deception',
  'The Rhythm',
  'free jazz, avant-garde, latin jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/7cNnKUeexEkonoid44dL2D',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '22:45',
  'Sariyah Idan',
  'Can We, Vibe (live)',
  'Live In Berlin Volume 1',
  'native american music, indie jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6P4ite7takPoxRWgQyJr0u',
  'found',
  98,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '22:52',
  'Gregory Groover Jr., Joel Ross, Paul Cornish, Harish Raghavan, K',
  'Old Knew',
  'Old Knew',
  'christian jazz, choral, jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0K4tAE5pHlVNy9SZhWMCd4',
  'found',
  85.9,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:02',
  'Dave Stryker, Jared Gold, Mclenty Hunter Jr.',
  'Dexterity',
  'Blue Fire: The Van Gelder Session',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:08',
  'BARAKAT',
  'Mother of Pearls',
  'TAAWILAT SITTEE',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4h9xbWzBgaUyMHsmxvqfVN',
  'found',
  89.5,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:17',
  'Gaelle Bagot & Juan Manuel Nieto, Simon Lannoy',
  'Cordillera',
  'Jardin d''ailleurs',
  'french jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/4cJYnygUGAcp0jXuLPYFHo',
  'found',
  84.3,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:23',
  'Syran Mbenza, Samba Mapangala',
  'Niekese Maneno',
  'Rumba Africa',
  'champeta, rumba congolaise, ndombolo',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3P75ieeNAOp7DZj2U7Jh4k',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:31',
  'Catrin Finch',
  'Angels',
  'Notes to Self',
  '',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/2qWeR1IUxTNRqPIUp0lO9H',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:38',
  'Roderick Harper',
  'Never Know (Things I''ve Been Through)',
  'Confidence',
  'vocal jazz',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5aCkhoQhh00KcRvDTcSSOA',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:46',
  'Saodaj',
  'Somin Granbwa',
  'Loder la vi',
  'maloya',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0OvoNwgXgEoFVMKsquj1Vr',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-08',
  '23:52',
  'Hurja Halla',
  'Virvatuli',
  'Surma hiihti',
  'traditional folk',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0TkaN3M8hUzIBBwJHAhVPR',
  'found',
  100,
  '2026-03-09 06:16:25'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-09';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
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
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:05',
  'James Booker',
  'Black Night',
  'New Orleans Piano Wizard: Live!',
  'boogie-woogie, cajun, ragtime',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7ulVsqbqiS5AFWMNjYiNkG',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:10',
  'Cousin Joe',
  'Broken Man Blues',
  'From New Orleans',
  'new orleans bounce, blues, boogie-woogie',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0YSKbiW6QI6I2FzlCZX0g9',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:13',
  'Sonny Boy Williamson II',
  'City of New Orleans',
  'I Ain''t Beggin'' Nobody',
  'blues, classic blues, country blues',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4rmUdsZx3XWHK1LsYaJIDA',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:15',
  'Dr. John',
  'Bruha Bembe',
  'Creole Moon',
  'cajun, zydeco',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4Ly6eT1aLoB2FbIW5Tyg7y',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:20',
  'Oscar Peterson Trio',
  'Fly Me to the Moon',
  'Tristeza on Piano',
  'jazz, cool jazz, jazz ballads',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3PJfLReoJPOCi3stJnFXKj',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:25',
  'Black Pumas',
  'Black Moon Rising',
  NULL,
  'retro soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2LTah3NcoIJI9WHJW3VIlC',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:29',
  'Herbie Mann',
  'Cajun Moon',
  'Surprises',
  'afro-cuban jazz, latin jazz, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/76AqgNyZJ8O7xNTK47v6RI',
  'found',
  71.8,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:35',
  'Lianne La Havas',
  'Midnight',
  'Blood',
  'alternative r&b, soul, pop soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6c3S2wem7E9jyD69Tm3VfE',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:39',
  'Sonia Sanchez',
  'I Have Walked a Long Time',
  NULL,
  'spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2PVcdGipf2Zrsm8HvSWoyc',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:43',
  'Bill Frisell',
  'Give Peace a Chance',
  NULL,
  'jazz, free jazz, jazz fusion',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/05fWBDXgmuVb9NNFftCfaX',
  'found',
  100,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:47',
  'Aurora Nealand & Tom McDermott',
  'The City of New Orleans',
  'Live at Luthjen''s',
  'free jazz, swing music, ragtime',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/4l27VufhS8MCX6f0jsPFkZ',
  'found',
  94.6,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:47',
  'Blackdaylight & Cornel West w/James Baldwin',
  'Sugar and Fire',
  'Existential Crisis',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:52',
  'Carmela Rappazzo',
  'Do Wrong Shoes',
  'The Girl Who Dreams Out Loud',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-09 06:16:25'
);