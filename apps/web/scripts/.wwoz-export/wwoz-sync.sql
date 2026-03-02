-- WWOZ Database Export
-- Generated: 2026-03-02T07:16:55.810Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-01 10:30:04
-- Days: 4
-- Tracks: 463

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-27',
  'https://open.spotify.com/playlist/3elM6ENm02exk2K8ocBy5f',
  '{"totalTracks":170,"successfullyFound":102,"notFound":68,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-27 07:39:37',
  '2026-03-02 07:16:54'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-28',
  'https://open.spotify.com/playlist/69JMbwXrIAmhtfq7ZFyD3H',
  '{"totalTracks":111,"successfullyFound":56,"notFound":55,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-01 08:03:39',
  '2026-03-02 07:16:54'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-01',
  'https://open.spotify.com/playlist/28ExMZ47SjPQhsNtBKCxU8',
  '{"totalTracks":161,"successfullyFound":100,"notFound":61,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-02 07:16:54',
  '2026-03-02 07:16:54'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-02',
  NULL,
  '{"totalTracks":12,"successfullyFound":12,"notFound":0,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-02 07:16:54',
  '2026-03-02 07:16:54'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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

DELETE FROM wwoz_tracks WHERE date = '2026-02-28';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:01',
  'Seva Venet',
  'My Memphis Baby',
  'New Orleans Banjo Vol 1',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2BkfReHfBJc9Hej9wlMNwe',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:04',
  'Seva Venet',
  'Ain''t Gonna Rain No More',
  'New Orleans Banjo Vol 1',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:07',
  'South Frisco Jazz Band',
  'Sweet Lotus Blossom',
  'Hot Tamale Man',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3e1jLaABVwUYbEob7tGqJz',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:11',
  'South Frisco Jazz Band',
  'The Hot Tamale Man',
  'Hot Tamale Man',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1n6KqnBDxOBaq4quFh86EP',
  'found',
  87.7,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:18',
  'S.S. Leviathan Orchestra',
  'The Little Wooden Whistle Wouldn''t Whistle',
  'Library of Congress National Jukebox',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:21',
  'S.S. Leviathan Orchestra',
  'Arabianna',
  'Library of Congress National Jukebox',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:24',
  'Paul Whiteman',
  'Mr. Radio Man (Tell My Mammy To Come Back Home)',
  'Library of Congress National Jukebox',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:27',
  'Paul Whiteman',
  'Why Did I Kiss That Girl',
  'Library of Congress National Jukebox',
  'ragtime, big band, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3NjZsHKbomLDhPu5Qiuzsm',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:32',
  'Jack Teagarden',
  'Class Will Tell',
  'Chronological 1934-1939',
  'big band, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3Y95jYMq2XX5mtJABh8TjP',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:34',
  'Jack Teagarden',
  'Yankee Doodle',
  'Chronological 1934-1939',
  'big band, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6kUJuYZ1RSl4UnBce27knC',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:39',
  'Charquet & Co',
  'Streamline Gal',
  'Crazy Quilt',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:44',
  'Charquet & Co',
  'Candy Lips',
  'Crazy Quilt',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:48',
  'Boswell Sisters',
  'I Found a Million Dollar Baby',
  'The Boswell Sisters Shout, Sister, Shout - Their 52 Finest 1931',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6T5IvkXD8V8ex0rFfRGLQp',
  'found',
  84.4,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:51',
  'Boswell Sisters',
  'Shuffle off to Buffalo',
  'The Boswell Sisters Shout, Sister, Shout - Their 52 Finest 1931',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/37vaFpQgwPysn3WuwV8NJg',
  'found',
  84.4,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:54',
  'Count Basie',
  'If I Didn''t Care',
  'Chronological 1939, Vol. 2 - Classics 533',
  'big band, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2YHC8OXUbcgoXy3MF9DIIz',
  'found',
  87.1,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '08:57',
  'Count Basie',
  'Between the Devil and the Deep Blue Sea',
  'Chronological 1939, Vol. 2 - Classics 533',
  'big band, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2wCs6osWbP8n12wIoSwzUF',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:05',
  'John Williams and his Memphis Stompers',
  'Sumpin'' Slow and Low',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 071',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:08',
  'John Williams and his Memphis Stompers',
  'Lotta Sax Appeal',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 071',
  'swing music, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/7BpQ9dPw5gtnwswRLCwwsm',
  'found',
  82.3,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:10',
  'Marquet-Persson Melody Boys',
  'Because My Baby Don''t Mean ''Maybe'' Now',
  'New Orleans Hop Scop Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:15',
  'Marquet-Persson Melody Boys',
  'Mahogany Hall Stomp',
  'New Orleans Hop Scop Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:21',
  'Muggsy Spanier',
  'Memphis Blues',
  'Muggsy Spanier - 1944',
  'ragtime, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/645pJLgL9aC16BgZsHcM5i',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:25',
  'Muggsy Spanier',
  'That''s A Plenty',
  'Muggsy Spanier - 1944',
  'ragtime, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1Xo2o9EXD2rQRZtoRS1fzI',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:30',
  'Louisiana Washboard Five',
  'Gravier Street Blues',
  'Professor Hot Stuff',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3vIvnzuEdMMJImn47E1OyB',
  'found',
  76.2,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:33',
  'Louisiana Washboard Five',
  'Parkway Stomp',
  'Professor Hot Stuff',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4TWg7wU1Cmi4aTFOVXDWgS',
  'found',
  76.2,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:37',
  'Left Bank Bearcats',
  'Lonesome Railroad Blues',
  'Dixieland',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5FxqighKlcVJM1wLwvfXWn',
  'found',
  88.1,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:41',
  'Left Bank Bearcats',
  'Oh, Them Golden Slippers',
  'Dixieland',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:43',
  'Glenn Miller',
  'But It Don''t Mean A Thing',
  'The Complete Glenn Miller 1938-1942 Disc 01',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:46',
  'Glenn Miller',
  'Runnin'' Wild',
  'The Complete Glenn Miller 1938-1942 Disc 01',
  'big band, swing music, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4wGZJmLp4GQHaf2U9iKSw4',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:49',
  'Mills Brothers',
  'Daddy''s Little Girl',
  'Best of the Decca Years',
  'big band, adult standards, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3mJ4KsaqFTOZuOt005fBiv',
  'found',
  86,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:49',
  'New Orleans Gentlemen of Jazz',
  'Basin Street Blues',
  'Struttin'' With Some Satchmo',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:52',
  'Bix Beiderbecke',
  'At The Jazz Band Ball',
  'Bix Beiderbecke, Vol. 2- At The',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3YYDlIXMlPmalb7fNzAyBl',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:55',
  'Bix Beiderbecke',
  'Why Do I Love You',
  'Bix Beiderbecke, Vol. 2- At The',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '09:58',
  'Bix Beiderbecke',
  'Way Down Yonder In New Orleans',
  'Volume I - Singing The Blues',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0kcYhUfAlMlvx6xiZg2CQa',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '10:07',
  'Sydney bechet',
  'deadman blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '10:08',
  'Johnny dodds',
  'Oriental Man',
  NULL,
  'ragtime, jazz, swing music',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/0ZVJLRqOkgQBlJoFc6YpFP',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '10:09',
  'sydney bechet',
  'Nobody knows the trouble I''ve seen this morning',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '10:21',
  'papa celestin',
  'High Society',
  NULL,
  'ragtime, brass band',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/4mtEp7o8WjXS7fRe75owwh',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '10:42',
  'sydney bechet',
  'I KNOW THAT YOU KNOW',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '10:42',
  'sydney bechet',
  'egytian fantasy',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '10:44',
  'sydney becet',
  'Petite Fleur',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:06',
  'Willie Colon',
  '+Lo que es de Juan',
  'Especial No. 5',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:09',
  'Willie Colon',
  'Preguntan por ahi',
  'Especial No. 5',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:10',
  'Willie Colon',
  'Especial No. 5',
  'Especial No. 5',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:20',
  'Willie Colon',
  'Aguijon',
  'Willie Colon',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:23',
  'Willie Colon',
  'Divino Maestro',
  'Willie Colon',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:24',
  'Willie Colon',
  'El Gran Varon',
  'Willie Colon',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:25',
  'Willie Coon',
  'Idilio',
  'Willie Colon',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:32',
  'Willie Coon',
  'Bailando Asi',
  'Especial No. 5',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:42',
  'Willie Colon',
  'Manana Amor',
  'Especial No. 5',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:44',
  'Willie Colon',
  'Contrabando',
  'Especial No. 5',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:52',
  'The Cuba n Master Ensemble',
  'Danzon para Ochun',
  'Del Pasado Al Presente',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:54',
  'The Cuban Masters Ensemble',
  'Una Sorpresa Guajira',
  'Del Psado Al Presente',
  'afro-cuban jazz, son cubano, latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/5Tar87tHANFwyC02KAh1xd',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '12:57',
  'The Cuban Masters Ensemble',
  'Suave Cha-Cha-Cha',
  'Del Pasado Al Presente',
  'afro-cuban jazz, son cubano, latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4nFWCpmV2kEiVVn0hL998V',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:18',
  'Polo Montanez',
  'El Rincon de mis nsias',
  'Guitarra Mia',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:22',
  'Polo Montanez',
  'Yo tengo mi Babalao',
  'Guitarra Mia',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:23',
  'Polo Montanez',
  'itarra Mia',
  'Guitarra Mia',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:31',
  'Xiomara Laugart',
  'Las Perlas de tu boca',
  'Tears and Rumba',
  'nueva trova, latin folk, trova',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/7754h2QqgxlEjFUPi9e0bi',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:35',
  'Xiomara Laugart',
  'Sitiera',
  'Tears and Rumba',
  'nueva trova, latin folk, trova',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3petmLm3zCmi5DV8IrJzMV',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:36',
  'Xiomara Laugart',
  'Veinte Anos',
  'Tears and Rumba',
  'nueva trova, latin folk, trova',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/0UV8nBtPDQZ7FgjTdpWTln',
  'found',
  79,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:47',
  'Eliades Ochoa',
  'Beso Discto',
  'CubaCuba',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '13:50',
  'Elliades Ochoa',
  'Cuidadito, Compay Gato',
  'CubaCuba',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:01',
  'Leslie Odom, Jr.,',
  'Aquarela do Brasil',
  NULL,
  'musicals',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2udlT2jW6nbuMsrexj5wS5',
  'found',
  92.1,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:04',
  'Clarice Assad',
  'Patuscada de Ghandi',
  NULL,
  'contemporary classical, brazilian jazz, chamber music',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/7aPSgmCzRElIwRQ21X3NxA',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:05',
  'Fernando Falcao',
  'Ladeira dos Inocentes',
  'Memoria das Aguas',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:11',
  'Nocao Rasta',
  'Guerras Nunca Mais',
  'Musica Que Vem de Alma',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:14',
  'Daniela Mercury & Vania Abreu',
  'Sua Estupidez',
  NULL,
  'axé, pagode baiano, mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4gRdX93QfQb3HYXcgrego5',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:18',
  'Luiz Avellar',
  'Bye Bye Brasil',
  NULL,
  'brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5cV2qece1g1rnWkOCWLAhd',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:23',
  'Stan Getz & Joao Gilberto',
  'Aguas de Marco',
  'Getz/Gilberto ''76 (Live)',
  'bossa nova, jazz, brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6Em28wwn7AX6lYclbRBcQs',
  'found',
  79,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:30',
  'Marisa Monte w/David Byrne',
  'Waters of March',
  NULL,
  'mpb, new mpb, art rock',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/1NBYnSivYVaYRWcATQaGaN',
  'found',
  90.4,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:33',
  'Chico Cesar',
  'Papo Cabeca',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:38',
  'Trio Mocoto',
  'Kriola',
  NULL,
  'samba, brazilian jazz, bossa nova',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4X9vNawKOThDVf7MqxLsAJ',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:43',
  'Adrian Younge & Ali Shaheed Muhammad',
  'Os Ancestrais',
  NULL,
  'jazz, jazz funk, brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2UKujG1SaUTb764EXjATRt',
  'found',
  86.9,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:47',
  'Dom Salvador & Abolicao',
  'Som, Sangue e Raca',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:50',
  'Hydlon',
  'Sabado e Domingo',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:55',
  'Wanda Sa & Joao Donato',
  'A Ra',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '14:56',
  'Marcos Valle',
  'Glue Trip',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:03',
  'Yo-Yo Ma w/Egberto Gismonti',
  'Salvador',
  'Obrigado Brazil',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:11',
  'Ladama',
  'Cumbia Brasileira',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4vSpIIx2f4eLQCECJ7pBvJ',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:12',
  'Pela Contrario',
  'Preta Rara',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:15',
  'Grupo Batuque',
  'Berimbal Capoeira',
  NULL,
  'brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6pv9RvcaynRaOa2cDGGDrk',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:18',
  'Ha-Ono-Beko',
  'Menininho do Pe Pequeno',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:21',
  'Vanessa da Mata',
  'Fiu Fiu',
  NULL,
  'mpb, new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6rheb5XFvkazgG8P9Xaake',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:25',
  'Nicola Conte',
  'Crepusculo',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:29',
  'John Boutte',
  'Black Orpheus',
  'At the Foot of Canal Street',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:36',
  'Luisa Maita',
  'Fulaninha',
  NULL,
  'new mpb, forró',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2zmWTjrQORUwD7Ng3uasCk',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:40',
  'Edson Oliveira',
  'Ecologia',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4J7KDSTWqSSadvCzdKuoBb',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:44',
  'Cassandra Wilson',
  'Waters of March',
  NULL,
  'vocal jazz, jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/74lmvssWZ5mlz157oFIqEZ',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:48',
  'Laurindo Almeida',
  'Naked City',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:50',
  'Curumin',
  'You Haven''t Done Nothing',
  NULL,
  'new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4lu8FXpmH9hPkvS9IWCvcD',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:54',
  'Gilberto Gil & Jorge Ben',
  'Essa E Pra Tocar No Radio',
  'Gil/Jorge',
  'mpb, bossa nova, forró tradicional',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2GYVxuXTVXfD5PKJn0rwAG',
  'found',
  77.6,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '15:58',
  'los indios tabajaras',
  'bali ha''i',
  'song of the islands',
  'latin folklore',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/34WftnDz6kAeG8tt2mCUeC',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:04',
  'camaron de la isla',
  'como el agua',
  'como el agua',
  'flamenco, flamenco pop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0e1BgqqWIvxqQrFTabaVG5',
  'found',
  72.7,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:08',
  'manolo sanlucar',
  'oripando',
  'candela',
  'flamenco',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1E1hD7GILVwnkD2kL02MAT',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:16',
  'lole y manuel',
  'la plazuela y el tardon',
  'nuevo dia',
  'flamenco, flamenco pop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1CIyjYMrNPaSd3cqcqsJUM',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:21',
  'nina pastori',
  'tu me camelas (tangos)',
  'entre dos puertos',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:23',
  'raul rodriguez, chano dominguez & martirio',
  'en esta tarde gris',
  'flor de piel',
  'flamenco, latin jazz, bolero',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/6QLMwPzna66p3kuJbWQMJ4',
  'found',
  72,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:29',
  'jose merce',
  'aire (buleria)',
  'aire',
  'flamenco, flamenco pop, villancicos',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0pReTxCFNKoa4qxjmPB9kJ',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:41',
  'manolo sanlucar',
  'mi farruca',
  'mundo y formas de la guitarra, vol. 2',
  'flamenco',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2en0Za1Kgv92z4TQC22mQy',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:42',
  'el pele & vicente amigo',
  'acontecio (seguirilla)',
  'canto',
  'flamenco, flamenco pop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4t9OiVNBd58uGqsLvNkVwX',
  'found',
  98,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:46',
  'el barrio',
  'orgullo',
  'la voz de mi silencio',
  'flamenco, flamenco pop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4xD3uniBa4chEGsQm1cjJL',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:53',
  'los rebujitos',
  'todos los besos',
  'tras la mascara',
  'flamenco, flamenco pop, flamenco urbano',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/5Tqzffefo3Ua5G9ScLAnBe',
  'found',
  100,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '16:59',
  'pedrito martinez',
  'solo vivo pa'' quererte',
  'rumba de la isla',
  'latin jazz, timba, afro-cuban jazz',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/7HPGzZZpyDFb9wmL8kDPIy',
  'found',
  86,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:17',
  'raul rodriguez',
  'el negro curro',
  'razon de son',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:20',
  'el pele',
  'bulerias a manuel',
  'peleando',
  'flamenco, flamenco pop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/03Tsh90iULggYzKHeg05tq',
  'found',
  82.1,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:21',
  'paco de lucia',
  'quiroga por bulerias',
  'cancion andaluza',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:26',
  'chano dominguez, rubem dantas & hamilton de holanda',
  'zyryab',
  'zyryab',
  'latin jazz, flamenco, brazilian jazz',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1kFl2t62qRDS2oF3n9W3Pr',
  'found',
  98,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:37',
  'estartit, fernando bazan & jesus corbacho',
  'los automatas',
  'los automatas',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:40',
  'javier limon & frank maza',
  'sosega',
  'sosega',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:51',
  'jesus corbacho',
  'guajira',
  'los flamencos cantan a pencho',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:55',
  'rosalia, estrella morente & silvia perez cruz',
  'la rumba del perdon',
  'LUX',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-28',
  '17:57',
  'juanfe perez & angeles toledano feat. david sancho & marc pinyol',
  'la plata y los corazones',
  'la plata y los corazones',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-03-01 08:03:39'
);

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