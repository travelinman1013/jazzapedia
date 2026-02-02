-- WWOZ Database Export
-- Generated: 2026-02-02T07:50:32.993Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-01 10:30:10
-- Days: 4
-- Tracks: 567

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-30',
  'https://open.spotify.com/playlist/4iEyRzHsVncmwDjDPGOyFk',
  '{"totalTracks":208,"successfullyFound":135,"notFound":73,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-01-30 07:22:02',
  '2026-02-02 07:50:28'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-31',
  'https://open.spotify.com/playlist/1cbtPuB2YVFakcD9bLP1Nk',
  '{"totalTracks":165,"successfullyFound":91,"notFound":74,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-01 07:34:19',
  '2026-02-02 07:50:28'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-01',
  'https://open.spotify.com/playlist/0QxrsPnIOswp6vf1rwIPSX',
  '{"totalTracks":158,"successfullyFound":98,"notFound":60,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-01 10:30:06',
  '2026-02-02 07:50:28'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-02',
  NULL,
  '{"totalTracks":19,"successfullyFound":13,"notFound":6,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-02 07:50:28',
  '2026-02-02 07:50:28'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-01-30';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:00',
  'The Funkees',
  'Akula Owu Onyeara',
  'Dancing Time',
  'afrobeat, highlife',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/5ww9r75Y8JPRgAAc3qJPms',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:05',
  'Galactic',
  'Second and Dryades with Big Chief Monk Boudreaux',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:08',
  'LOUIS ARMSTRONG',
  'SKOKIAAN',
  NULL,
  'jazz, swing music, vocal jazz',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/6vfEUUTFn1d2NM7P95gFYh',
  'found',
  72.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:14',
  'Johannesburg Street Band, Hugh Masakela',
  'Awe Mfana',
  NULL,
  'afrobeat, afro soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/2hEc1rplAykZgCWHPbtS5p',
  'found',
  86,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:19',
  'Nina Simone',
  'Revolution Pt 1 and 2',
  'Forever Young Gifted And Black',
  'vocal jazz, soul jazz, soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/056XUz8cao9mA3TuORDTVh',
  'found',
  89.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:23',
  'Tricicio Circus Band, Son Rompe Pera',
  'Cantilero',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:25',
  'Bandiera Rossa',
  'bella Ciao',
  NULL,
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/5vUoJGjCjjA7bDEV5oUk8J',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:27',
  'Fela Kuti',
  'O.D.O.O.',
  NULL,
  'afrobeat, highlife, afropop',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4mBmp4aYwoHnfxLrTkcuIS',
  'found',
  77.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:36',
  'Ruby Ibarra',
  'Bakunawa',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:42',
  'Rebirth Brass Band',
  'Mexican Special',
  NULL,
  'brass band, zydeco, new orleans bounce',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/5mFyn783ePoPmaVcnglL2P',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:45',
  'Jon Batiste',
  'We Are',
  NULL,
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/7cx51c7voFYPh3MjkocCwD',
  'found',
  70.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '00:50',
  'Dur Dur Band',
  'Ohiyee',
  NULL,
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4sdiyrH1I74GAzSlfhi68L',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:00',
  'Dr. John',
  'Shining as Hard as I Can',
  NULL,
  'cajun, zydeco',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/7onowyolRIWDRYOlrWBTGs',
  'found',
  83.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:05',
  'The Spirit of the Fi Yi Yi',
  'Big Chiefs Meet',
  'The Spirit of the Fi Yi Yi & the Mandingo Warriors',
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/7M2ZTYP3TEKrLZvacgUjda',
  'found',
  81.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:10',
  'The Staple Singers',
  'For What It''s Worth',
  NULL,
  'soul, motown, classic soul',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4la9jiqXYHQlEwbRhqYsd7',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:12',
  'Resistance Revival Chorus, Rhiannon Giddens',
  'All You Fascists Bound to Lose',
  NULL,
  'folk, americana, southern gothic',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/0lYykZNNBNE33o5izvZFrG',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:17',
  'Jon Batiste',
  'American Symphony Theme',
  'Beethoven Blues',
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/12YNZAFHGLIrtzQU7cfnQ6',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:20',
  'Hanoun Brass Band',
  'Ya Zareef / Del''aouna/Wein ''a Ramallah',
  'From New Orleans to Palestine',
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:26',
  'Trendafilka',
  'Kaliora Ne'' Xoun I Elyes',
  'For the Olives',
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:34',
  'Mike Dillon, Brian Haas, Nikki Glaspie',
  'Houser',
  'Run White Boy Run',
  'jam band, cajun, nu jazz',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/0ilY9qK1otuaQpy5LAuk2j',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:36',
  'John Zorn, Kris Davis Quartet',
  'Bagatelle #86',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:39',
  'archie shepp',
  'attica blues',
  'attica blues',
  'free jazz, jazz, avant-garde',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/6VdtTwF9ZW5m9Lct4ep02s',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:40',
  'James Booker',
  'Fur Elise/One Helluva Nerve',
  'Rhapsody In Bronze',
  'boogie-woogie, cajun, ragtime',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/0Yx6ytd4nCdRIacZ4dIvd3',
  'found',
  86,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:45',
  'Greg Schatz',
  'Siren in the Sky',
  'The Sun is Still Going to Shine',
  '',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/6AufoUleHquinpXIBmZTJG',
  'found',
  100,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:48',
  'woody guthrie',
  'tear the fascists down',
  'my dusty road',
  'folk, traditional folk, americana',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/649Zk1kqe5TpkMYSCr0sI6',
  'found',
  88.8,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '01:58',
  'Mardi Gras Indians',
  'Red Whie and Blue got a Golden Band',
  NULL,
  '',
  'Midnight Music',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '06:04',
  'Buddy Rich',
  'Cardin Blue',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '06:24',
  'Larry Coryell',
  'Wrong is right',
  NULL,
  'jazz fusion, smooth jazz, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/2aG4J8PSSJQS2DCEVpaTqG',
  'found',
  98,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '06:43',
  'Brad Allen Williams',
  'satellites are spinning (feat. Fay Victor)',
  'light rivers',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:04',
  'Dave Stryker',
  '2 Blue Fire',
  'Blue Fire',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:04',
  'Marques Carroll',
  'The March On Montgomery',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:23',
  'Anika Nilles',
  'Radiate',
  'False Truth',
  'jazz fusion, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/03e1HJGTY4u6aeRCMkjQY2',
  'found',
  100,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:31',
  'Lafayette Harris, Jr.',
  'We Are One in the Spirit',
  'All in Good Time',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/6NclZfQcE4dBcvQt6iQra5',
  'found',
  100,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '07:38',
  'Bill Laurance & WDR Big Band',
  'Golden Hour (Live)',
  'Live at the Philharmonie, Cologne (Live)',
  'jazz fusion, nu jazz, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/3ERGmWeUJn2Vt7GRyhXY8s',
  'found',
  98,
  '2026-01-30 14:46:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:13',
  'John Scofield & Dave Holland',
  'Mine Are Blues',
  'Memories of Home',
  'jazz fusion, jazz, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/31ddIeqh5m0Lupl9qigYb5',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:13',
  'Jon Batiste',
  'Saint James Infirmary Blues',
  'The New Americana Collection',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5jzF5gswFsruIjQIDNyZYt',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:23',
  'James Booker',
  'Tico Tico',
  'Behind The Iron Curtain Plus...',
  'boogie-woogie, cajun, ragtime',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4P5mQQcRvLu6rwGwaTTjfK',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:36',
  'Lettuce',
  '7 Tribes',
  'Cook',
  'jam band, funk, jazz funk',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/638G7bULDh52AOZyZTBTTa',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'James Fernando',
  'The Parisian',
  'Philly 3',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Mark Christian Miller',
  'Strange Meadowlark/Skylark',
  'Strange Meadowlark',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Melissa Aldana',
  'Dime Si Eres TÃº',
  'Filin',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Something Blue',
  'Like Miles',
  'In The Beginning',
  'hard bop',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4S9yePAA9wSOg0C2nOMXFO',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:45',
  'Wynton Marsalis & Lincoln Center Jazz Orchestra',
  'Hammer Head',
  'The Music Of Wayne Shorter',
  'latin jazz, big band, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0CJf84KdLVygefOqDX4ajr',
  'found',
  84.3,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '08:53',
  'Brian Blade',
  'Perceptual',
  'Perceptual',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4rIdBCDVxxiAeKRXT5E610',
  'found',
  78.8,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:03',
  'Sidney Bechet',
  'I''ve Found a New Baby',
  NULL,
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:07',
  'Fats Waller',
  'I Got Rhythm',
  'The Savory Collection 1935-1940',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/64ERJk46NhMNvT4ypIZsB0',
  'found',
  72.6,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:09',
  'Chick Webb',
  'Spinnin` The Webb',
  'Spinnin` The Webb',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/54X3ZM1XTaB7trXHImAjXI',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:12',
  'Fletcher Henderson',
  'Tidal Wave',
  'Tidal Wave',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5oBCfB5iCnF4sGuIQFJ0Js',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:15',
  'Fats Waller And His Rhythm',
  'Spreadin` Rhythm Around',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:17',
  'Fletcher Henderson',
  'I''m Crazy ''Bout My Baby (And My',
  'Tidal Wave',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4VjaGlNheSkWiMoQLKr7xB',
  'found',
  92.3,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:21',
  'Sidney Bechet',
  'Crazy Rhythm',
  'Jazz At Storyville',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5D3C37EYRLqYYPnygVYuJ6',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:26',
  'Fats Waller And His Rhythm',
  'When Somebody Thinks You`re Wond',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:30',
  'Chick Webb',
  'Heebie Jeebies',
  'Spinnin` The Webb',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5KmDrWz3wSCeDRfogd3K7Q',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:33',
  'Fletcher Henderson',
  'Limehouse Blues',
  'Tidal Wave',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6ULcIs4B2Ds0OyHlIv8zrA',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:36',
  'Fats Waller',
  'I Hate To Talk About Myself',
  'I`m Gonna Sit Right Down- The Ea',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:39',
  'Sidney Bechet',
  'Sweetie Dear',
  NULL,
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6p4wvBOU7A4vdw0qQI9TvZ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:42',
  'Oscar Papa Celestin-Sam Morgan',
  'Careless Love',
  'The Complete Recordings In Chron',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:45',
  'Preservation Hall Jazz Band',
  'Blue Skies',
  'Preservation- An Album To Benefi',
  'folk, traditional folk, americana',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2A8Rn3D3L1YT1EqSvGyzsY',
  'found',
  85,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:50',
  'Preservation Hall Jazz Band',
  'Red Wing',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:55',
  'Oscar Papa Celestin-Sam Morgan',
  'Short Dress Gal',
  'The Complete Recordings In Chron',
  'ragtime, brass band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3YXw0zqm7GOoQtQ0MYeTpC',
  'found',
  91.6,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '09:58',
  'Preservation Hall Jazz Band',
  'Ti-Pi Ti-Pi Tin',
  'Songs Of New Orleans (CD01)',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2SgV7N4g0ra1Jecg4ifRoG',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:08',
  'Lars Edegran',
  'Alice Blue Gown',
  'Lars Edegran Presents Lionel Fer',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:11',
  'Pfister Sisters',
  'It`s The Girl',
  'Change In The Weather',
  'boogie-woogie',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5cmEHjqlzCXHaaDm8Dtu3A',
  'found',
  84,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:15',
  'Lars Edegran',
  'Shout Sister Shout',
  'Shout Sister Shout- Edegran Orch',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:19',
  'Billie And DeDe Pierce',
  'Careless Love',
  'New Orleans- The Living Legends',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2ZmqdtV74YSpFptVuwsqFQ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:22',
  'Pfister Sisters',
  'There`ll Be Some Changes Made',
  'Change In The Weather',
  'boogie-woogie',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4ACdhAJUfQjL6Z2FrNcf98',
  'found',
  84,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:26',
  'Billie And DeDe Pierce',
  'Get A Working Man',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2UtoxMiITEc70DHUA4r4Og',
  'found',
  83.2,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:30',
  'George Lewis',
  'My Old Kentucky Home',
  'Ice Cream',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4zfx3qwTZ85jvV3rqvHsP6',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:34',
  'Colossus Brass Band',
  'By and By',
  'Sing On',
  'brass band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0REXDReqM7YDt8DYqHwxee',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:42',
  'George Lewis',
  'Burgundy Street Blues',
  'The Beverly Caverns Sessions',
  'ragtime, swing music, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6rMN3NP34S3PghhruNd0tc',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:46',
  'Preservation Hall Jazz Band',
  'Back Porch',
  'Shake That Thing',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3SCxDbi9R2s8Fb7azvbCbZ',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:54',
  'Louis Cottrell, Jr',
  'Runnin` Wild',
  'New Orleans- The Living Legends',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '10:58',
  'Excelsior Brass Band',
  'Didn`t He Ramble',
  'Jolly Reeds & Steamin` Horns',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:05',
  'Electric Yat Quartet',
  'Buona Sera',
  'Stringin'' with Some BBQ',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0hlXz1BYcijr42zWodJDye',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:07',
  'little queenie',
  'My Darlin New Orleans',
  'purple heart',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0SoOlkZ09atUsYgubWBcKh',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:12',
  'Viper Mad Trio',
  '8 9 & 10',
  'Buddy Bolden''s Blues',
  'ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6LuFG0hYjBycWbSyqs6Ow1',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:16',
  'Meschiya Lake & Tom McDermott',
  'I`m Gonna Live The Life I Sing',
  'Live At Chickie Wah Wah',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:19',
  'Gal Holiday',
  'Don`t Think Twice',
  'Set Two',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:25',
  'Daria & the Hip Drops',
  'Battleship',
  'Hipnotic',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4u9tti5abFTH3L9cHJjTvd',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:29',
  'Serabee',
  'Bayou Baby',
  'Humminbird Tea',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6C6dSgv2kuYZ9sZGqLhow4',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:39',
  'Electric Ramble',
  'Let It Roll',
  'Let It Roll',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1y84O1wXWJbLuMNI3vWrGD',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:46',
  'John Boutte',
  'Accentuate the Positive (Live at Auditorium Stravinski 2007)',
  'John Boutte',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:49',
  'Paul Sanchez',
  'Stew Called New Orleans',
  'Reclamation of the pie-eyed Piper',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/626Yrsu3w80kMFLawEkvq4',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '11:52',
  'Doreen Ketchens',
  'Cabaret',
  'New Orleans The Band! The Band!',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:03',
  'Dr John',
  'Let''s Make A Better World',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1pQDCxe6aZCXyYBuRHlpIQ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:07',
  'Ella Fitzgerald & Louis Armstron',
  'Moonlight In Vermont',
  'Ella And Louis',
  'vocal jazz, jazz, swing music',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2JLmmgIwdkc197jV0rvaVd',
  'found',
  83.2,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:12',
  'Chip Wilson',
  'How High The Moon',
  'Live in studio 2/19/99',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:16',
  'Phil Melancon',
  'Left on Tulane Avenue',
  'Alive at La Pavilion',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:17',
  'Kermit Ruffins With The Rebirth',
  'It`s Later Than You Think',
  'Throwback',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:23',
  'Aaron Neville',
  'Stompin` Ground',
  'Apache',
  'classic soul',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/58Bjt0GyKR4t9ESw43QFZN',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:38',
  'Corey Henry & the Treme Funket',
  'Slip Into Darkness/Hey Pockey Way',
  'Live at Vaughan''s',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:48',
  'Preservation Brass & the Preservation Hall Jazz Band',
  'Medley',
  'For Fat Man',
  'brass band, ragtime, swing music',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4aipRw6veKbnuc1zcTKOhE',
  'found',
  93,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '12:52',
  'Kyle Roussel feat. George Porter, Jr. & Charlie Gabriel',
  'African Gumbo',
  'Church of New Orleans',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:04',
  'eLECTRIC yAT qUARTET',
  'Blue Rondo a La Turk',
  'Stringin'' with some BBQ',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/3dJutXNcy3ss6TEPzf2iYe',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:08',
  'sullivan fortier',
  'Southern Nights',
  'southern nights',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:13',
  'Kenny Wayne Shepard & Bobby Rush',
  'Who Was That',
  'Young Fashioned Ways',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:18',
  'Samantha Fish',
  'Paper Doll',
  'Paper Doll',
  'modern blues, blues, blues rock',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7lwkSZbanDg3mFgaG0Uf9B',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:20',
  'Jon Batiste & Randy Newman',
  'Lonely Avenue',
  'BIG MONEY',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/43fnovfvtK8e3PFuiYx2Wt',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:31',
  'shannon mcnally, keith frank, and molly tuttle',
  'Tout le temps en temps',
  'A tribute to the king of zydeco',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:32',
  'Marcia Ball & Geno Delafolse',
  'It May Be Wrong',
  'A Tribute to the King of Zydeco',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:37',
  'Bonerama',
  'Ohio',
  'so much love',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:43',
  'Trombone Shorty and New Breed Brass Band',
  'Line Em Up',
  'Line Em Up',
  'brass band, jazz funk, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0pt4dmsmMSmJVokF5H9HqL',
  'found',
  94,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:47',
  'Center of the River',
  'Little Milton',
  'Americana Art Music From the Mississippi',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:52',
  'Big Chief Romeo Bougere ft Dawn Richard',
  'I''m Feelin Good!',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '13:59',
  'Dr. John',
  'Going Back to New Orleans',
  'Going BAck to New Orleans',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1Pm466s6uewgUglATVbZgN',
  'found',
  80.5,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:02',
  'Bobby BLue Bland',
  'Its My Life Baby',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6Rdwl4NM4XoT0RimoZRp93',
  'found',
  86,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:05',
  'Elmore JAmes',
  'Take Me Where You Go',
  'VeeJay 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3yFuCaud8nTAotpM2kMyCm',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:07',
  'Bobby Blue Bland',
  'You DId Me Wrong',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2WdzgF9zhiCzolYgVffA5O',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:10',
  'Snooks Ford Eaglin',
  'Im SLippin In',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:13',
  'Bobby Blue Bland',
  'Honey Child',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4X8vayDYHMlOQy3X4GMdHO',
  'found',
  82.6,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:17',
  'Elmore JAmes',
  'Cry For Ma Baby',
  'VeeJay 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:19',
  'Bobby Blue Bland',
  'Bobbys Blues',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2LwHXGwMwukA9ltTB78cAi',
  'found',
  79,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:22',
  'Snooks FOrd Eaglin',
  'My Head Is Spinning',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:25',
  'Elmore JAMes',
  'Coming Home',
  'CHIEF 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0ZHYqt8DQZAc88LwceuAOY',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:26',
  'Bobby Blue Bland',
  'Farther Up The Road',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2hPyG7NMpHAmOrmlSziAx2',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:32',
  'George Perkins',
  'Crying In The STreets',
  'GOLDEN RECORDS 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:35',
  'Bobby BLue Bland',
  'I Dont Believe',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1WIuy2j0Ry5ieI5EYINBVs',
  'found',
  83.2,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:41',
  'Elmore JAmes',
  'Everyday I Have The Blues',
  'ENJOY 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3buTinCR9WQ22qfUJcJuoa',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:41',
  'Ford Eaglin',
  'By The Water',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:44',
  'Bobby Blue Bland',
  'I Smell Trouble',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5ITYKbMfPny7XZ4sTwljhk',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:48',
  'Elmore JAmes',
  'Held My Baby LAst Night',
  'FIRE 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/48Z6oiZm3tuDkp3NOm6wcV',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:51',
  'Bobby Blue Bland',
  'Wishing Well',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0AOLGRtIPWVip9D342PLgP',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:54',
  'Roscoe Gordon',
  'Lets Get High',
  'SUN 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '14:57',
  'Elmore JAmes',
  'Stranger Blues',
  'FIRE 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1rJ4QXyMDbqPEIFwoZq5bw',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:00',
  'Bobby Blue Bland',
  'Loan A Helping HAnd',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0GcU9jQ8L0Z8jDCTZ8SRvb',
  'found',
  93.4,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:07',
  'Elmore JAmes',
  'The 12 Year Old Boy',
  'CHIEF 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5sfAXKq9HHiXxADpMIGIOr',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:11',
  'Bobby Blue Bland',
  'Woke Up Screaming',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/215ppZm5eMd1fZXashHx6h',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:13',
  'Ford Eaglin',
  'Yours Truly',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:16',
  'Elmore JAmes',
  'No LOve In My Heart',
  'FLAIR 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0liGqYyiUPj6iiyvbjEL5q',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:19',
  'Bobby BLue Bland',
  'Shoes',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4UCqGjORleQ0uz6lFzESlf',
  'found',
  73.7,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:24',
  'Elmore JMAes',
  'Sunnyland',
  'KENT 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:24',
  'Lee Williams',
  'Im Tore Up',
  'FEDERAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:27',
  'Bobby Blue Bland',
  'Teach Me How To LOve You',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0fFfgUtKAucLY24AZEu7WD',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:31',
  'Aaron Neville',
  'Out Of My Life',
  'MINIT 45',
  'bhangra, classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7cLekQbHdbuOoEKjolvRfY',
  'found',
  93.3,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:31',
  'Ford Eaglin',
  'Travellin Mood',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:36',
  'Bobby Blue Bland',
  'I DOnt Want No Woman',
  'DUKE 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:39',
  'Aaron Neville',
  'Over You',
  'MINIT 45',
  'classic soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0Mw7P0ACIXvrIgLcdV9C5x',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:41',
  'Elmore JAMes',
  'Standing at The Crossroads',
  'KENT 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1e6qkPMUiaWZfVk7WdRByQ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:44',
  'Bobby Blue Bland',
  'Cry Cry Cry',
  'DUKE 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2hP6oI5fZAta0kj8nYn5CK',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '15:46',
  'Ford Eaglin',
  'Nobody Knows',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:00',
  'Eric Alexander',
  'Triste',
  'Like Sugar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4kmmLFlwCNm4L2LSQ25eSU',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:04',
  'James Suggs',
  'Grazing In The Grass',
  'For All We Know',
  'jazz ballads, ragtime, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6y4m01fYdlTRnH62Wb0QfS',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:09',
  'Roy Hargrove',
  'Lada',
  'Public Eye',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:16',
  'Steve Masokowski',
  'Things I Like',
  'Things I Like',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:25',
  'Wynton Marsalis',
  'Stardust',
  'Stardards and Ballads',
  'jazz, latin jazz, big band',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1mtyrNHJMM3UGgFlQWGQoI',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:29',
  'Donald Harrison',
  'Watermelon Man (Short Version)',
  'SINGLE',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:37',
  'JD Allen',
  'Don''t Go To Strangers',
  'Love Letters (The Ballad Sessions)',
  'hard bop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2b9qr9lAmrTJOe2mOC2b3D',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:41',
  'Steve Rosenbloom Big Band',
  'San Francisco 1948',
  'San Francisco 1948',
  'big band',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6a9x2PiSeyXnJBmidWevum',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:49',
  'Kenny Barron f/Tyreke McDole-vocal',
  'Marie LaVeau',
  'Song Book',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '16:55',
  'Ron Carter',
  'Caravan',
  'Ron Carters Great Big Band',
  'jazz, hard bop, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7sLjmXVuBBa7aefT9NG52E',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:05',
  'Herbie Hancock',
  'Maiden Voyage',
  'Maiden Voyage',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4RWugQDZAShxVwaEceKXHi',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:11',
  'Donald Byrd',
  'Love`s So Far Away',
  'Blue Breakbeats (1967-1976)',
  'hard bop, jazz funk, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2bSEu2bC76Wyj9hszTTFrh',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:20',
  'Nick Finzer',
  'Say When',
  'The Jazz Orchestra Volume 1',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5rrHwrjJBIEY3feIND6U4F',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:24',
  'Ledisi',
  'This Bitter Earth',
  'For Dinah',
  'neo soul',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4iyJ286IupiSTKMXE2ejPr',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:28',
  'Johnny Griffin & Eddie Lockjaw Davis',
  'Sophisticated Lady',
  'Live At The Penthouse',
  'hard bop, soul jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4LykiwYPUGgbgzu7S99oeS',
  'found',
  89.8,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:36',
  'Brandon Sanders',
  'Soul Eyes',
  'Lasting Impressions',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5BVYyDmIeBMcVPJHWRZZcT',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:39',
  'Dave Brubeck Quartet',
  'Bluette',
  'Time Further Out',
  'jazz, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0io8Uq8AO7qiFaF3eaPXr2',
  'found',
  88.1,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:46',
  'Hank Mobley Lee Morgan',
  'High And Flighty',
  'Peckin Time',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:51',
  'Nat Adderley Jr',
  'Superstar',
  'Took So Long',
  'smooth jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4iRaxdnypUZZlRbxhz6MY0',
  'found',
  86.5,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '17:58',
  'Dave Brubeck Quartet',
  'It''s A Raggy Waltz',
  'Time Further Out',
  'jazz, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1LH3R7OkZFtlALGtmpGXPb',
  'found',
  88.1,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:01',
  'Ellis Marsalis',
  'Brown Georgia',
  'On The Second Occasion',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/43KNjs9VKI77UO23t3zxdZ',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:07',
  'Mike LeDonne',
  'After The Love Has Gone',
  'The Anniversary Quartet Live At The Cellar',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2i4dJyDNZnSP6kBAypOfmW',
  'found',
  73.5,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:21',
  'Gregory Lewis',
  'Who Knows',
  'Monk Going Home',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4gCGks65z6WVRfd19M0QCk',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:26',
  'Dr Lonnie Smith',
  'Three Blind Mice',
  'Think',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/04QEpeQdYBCOPrhSpmQLLd',
  'found',
  75.9,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:38',
  'Dee Dee Bridgewater & Bill Charlap',
  'In The Still Of The Night',
  'Elemental',
  'vocal jazz, french jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5jSeACw2qskkLiVFgxh2FL',
  'found',
  98,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:46',
  'Thelonius Monk Quartet w/John Coltrane',
  'Evidence',
  'At Carnegie Hall',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:54',
  'Kyle Roussel',
  'African Gumbo',
  'Church of New Orleans',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '18:57',
  'Ellis Marsalis',
  'Chapter Two',
  'Heart Of Gold',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:09',
  'rory gallagher',
  'do you read me',
  NULL,
  'blues rock, blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5vJhT8eiyvNbFzbRnkabE8',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:18',
  'dock boggs',
  'country blues',
  NULL,
  'bluegrass, traditional folk, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2srxx9rYIYBDWYIwwcwC9T',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:18',
  'walter trout',
  'Bleed',
  NULL,
  'blues, blues rock, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6o6XBDZv0mCRRnQbtYnynE',
  'found',
  75.7,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:24',
  'ken manyard',
  'the lone star trail',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:27',
  'bertha henderson',
  'black bordered letter',
  NULL,
  'ragtime, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7o4XaVi86bKiZgufkzjV6O',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:27',
  'janis joplin',
  'down on me',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:33',
  'deacon leon davis',
  'everybody''s down on me',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/59bIbksy9b6bPUth8HbzZu',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:37',
  'walter ''sandman'' howard',
  'cuttin'' out',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:39',
  'jerry lee lewis',
  'hold on i''m coming',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:45',
  'big mama thornton',
  'ball n chain',
  NULL,
  'blues, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0D1S1rK4M8D3kJDFN50u0G',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:50',
  'west, bruce & laing',
  'Pleasure',
  NULL,
  'blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0fwCJatj2Du69qhjwQnDVp',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:51',
  'swamp cabbage',
  'Dixieland',
  NULL,
  'blues rock, cajun, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3WiC3cIMGxCgGqcoSDZmL7',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '19:56',
  'Buddy Guy',
  'Where U At',
  'Ain''t Done With the Blues',
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:08',
  'CW Stoneking',
  'jungle lullaby',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:08',
  'chuck E Weiss',
  'no hep cats',
  NULL,
  'blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2mm5vuiIBRAUWhuHTMohi9',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:12',
  'leon russell & tedschi trucks band',
  'dixie lullaby',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:16',
  'R.L. Burnside',
  'Come On In',
  NULL,
  'blues, country blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4zUM42SUS7DITeLBZ1ULre',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:18',
  'tav falco',
  'Prologue',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:22',
  'woody guthrie',
  'talking fishing blues',
  NULL,
  'folk, traditional folk, americana',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5uRZQacQqmhdRwoAMbYnlW',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:25',
  'otis taylor',
  'black''s mandolin boogie',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:29',
  'sheryl crow & jason isbell',
  'everything is broken',
  NULL,
  'alt country, americana, roots rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5EZzpwaya04PRQIxtkTkeY',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:34',
  'radiators',
  'City Of Refuge',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:39',
  'blind willie johnson',
  'I''m gonna run to the city of refuge',
  NULL,
  'blues, country blues, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0zn0NvZ9QZGthU5r6sc3Sr',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:45',
  'alvin youngblood hart',
  'shoot me grin',
  NULL,
  'blues, modern blues, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2qb1fUyn6HaEn7OZYePnlh',
  'found',
  92,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:50',
  'double trouble wih charlie sexton & doyle bramhall II',
  'skyscraper',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:58',
  'jay hooks',
  'evinrude boat motor',
  NULL,
  'blues rock, roots rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6Y3Ea43RAuNuCoGcAQY7be',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '20:58',
  'roky erickson',
  'it''s a cold night for alligators',
  NULL,
  'proto-punk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7bK0jdbUtkkOj4utqmFkKN',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:05',
  'barbara dane',
  'way behind the sun',
  NULL,
  'folk, traditional folk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4EXJ7ObB2LwJMNZ9eJ6i4p',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:11',
  'wailin'' jennys',
  'motherless child',
  NULL,
  'bluegrass, newgrass, folk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/75vOE38gusG7TvHwHoR1Cs',
  'found',
  83,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:14',
  'springsteen',
  'streets of minneapolis',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6AtgHxdvghUjcjdPX1VhWN',
  'found',
  73,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:17',
  'john butler trio',
  'zebra',
  NULL,
  'jam band',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/1tUuMjAJR9vBu2vNWvlYmy',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:21',
  'eddie turner',
  'pomade',
  NULL,
  'blues rock, modern blues, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4LdTYtWHfNkIBmmPT609KI',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:29',
  'pops staples',
  'nobody''s fault but mine',
  NULL,
  'blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4Xuqm38Td7iop6a12gBh3J',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:30',
  'JJ Grey & mofro',
  'harp & drums',
  NULL,
  'modern blues, jam band, southern rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3zKMiNs3Aw42bvN8hL05P2',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:36',
  'guadalupe plata',
  'la ciguena',
  NULL,
  'space rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/69CfdRaA0VmQm17Dx7dPy4',
  'found',
  74.9,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:37',
  'marty stuart',
  'all the pretty horses',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'Dr. John',
  'Keep That Music Simple',
  NULL,
  'cajun, zydeco',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3W3yvXMl1LXzl90Cd7Xoeb',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'THE METERS',
  'GIVE IT WHAT YOU CAN',
  NULL,
  'funk, soul, jazz funk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6A30ZmNYud0lLeakiTag7X',
  'found',
  100,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'Tommy Ridgely',
  'Double Eyed Whammy',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-01-31 07:11:36'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-30',
  '21:38',
  'allen toussaint & bonnie raitt',
  'what is success',
  NULL,
  'cajun, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5TKBT9Yhh7cAOmbzmR17rf',
  'found',
  100,
  '2026-01-31 07:11:36'
);

DELETE FROM wwoz_tracks WHERE date = '2026-01-31';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '05:29',
  'Brass A Holics',
  'Mardi Gras In New Orleans',
  NULL,
  '',
  'Overnight Music - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:01',
  'Dan Levinson''s Roof Garden Jass Band',
  'India (Oriental Intermezzo)',
  'Echoes in the Wax',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/55d6BqKbSlEObyeuQqu06k',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:03',
  'Dan Levinson''s Roof Garden Jass Band',
  'Fidgety Feet',
  'Echoes in the Wax',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3wjWkd7kpBMsMFI1L1Y5YD',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:06',
  'Combo Royale',
  'Baby Won''t You Please Come Home',
  'Follow Them Footsteps',
  'swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0QVmuFr3jIDUhIR69I0I18',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:09',
  'Combo Royale',
  'Follow Them Footsteps',
  'Follow Them Footsteps',
  'swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/54vZa9x5snmJJK5Y0wDzuY',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:12',
  'Boswell Sisters',
  'Down Among the Sheltering Palms',
  'The Boswell Sisters Shout, Sister, Shout - Their 52 Finest 1931',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6OfPMFSZYQtG05w2stqlRy',
  'found',
  84.4,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:15',
  'Boswell Sisters',
  'It Don''t Mean a Thing If It Ain''t Got That Swing!',
  'The Boswell Sisters Shout, Sister, Shout - Their 52 Finest 1931',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/473cqWlrSgnC2KKBzICkGl',
  'found',
  84.4,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:18',
  'Jazz O'' Maniacs',
  'Sweet Mumtaz',
  'Sweet Mumtaz',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/552ppYYG88eyB5DCtTcnnX',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:22',
  'Jazz O'' Maniacs',
  'Gully Low Blues',
  'Have You Ever Felt That Way?',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2qze5tba8SveoFkUENaeyt',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:29',
  'New Orleans Rhythm Kings',
  'That''s A Plenty',
  'This was the Jazz Age - CD04',
  'ragtime, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/29fT9aKhYpfgNcVr6WV1jl',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:32',
  'New Orleans Rhythm Kings',
  'Maple Leaf Rag',
  'This was the Jazz Age - CD05',
  'ragtime, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3CJt8lRFFvoASOnULBR54B',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:34',
  'Georgia Grinders',
  'Kentucky Blues',
  'A Tribute to Roy Palmer - Stomp Off 1068',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:38',
  'Georgia Grinders',
  'Endurance Stomp',
  'A Tribute to Roy Palmer - Stomp Off 1068',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:42',
  'International Jazz & Ragtime All Stars',
  'The Cascades Rag',
  'Live at the Elkhart Jazz Festival',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:45',
  'International Jazz & Ragtime All Stars',
  'Grandpa''s Spells',
  'Live at the Elkhart Jazz Festival',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/7q7ynfn0tvsjB8PSs6Leuu',
  'found',
  70.1,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:48',
  'Jungle Crawlers',
  'Golden Lily',
  'Stompin'' On Down - Stomp Off 1084',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:51',
  'Jungle Crawlers',
  'Nervous Tension',
  'Stompin'' On Down - Stomp Off 1084',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '08:55',
  'Evan Christopher',
  'Sweet Baby Doll',
  'Clarinet Road Volume 1 The Road to New Orleans',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/044UVBfkKNMhqqE0pf3ycK',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:03',
  'Evan Christopher',
  'Struttin'' With Some BBQ',
  'Clarinet Road Volume 1 The Road to New Orleans',
  'ragtime',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/3EIzX2osNOVzAji1nwvIp8',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:06',
  'Clarence Williams'' Jazz Kings',
  'I''m Goin'' Back to Bottomland',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 024',
  'ragtime, swing music, boogie-woogie',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1pbk4UZBWLMos0ZwJHJ4HJ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:09',
  'Clarence Williams'' Jazz Kings',
  'The Keyboard Express',
  'The Encyclopedia Of Jazz. Classic Jazz. Volume 035',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:13',
  'Duke Ellington',
  'East St. Louis Toodle-Oo',
  'The Chronological Duke Ellington and his Orchestra 1927-1928',
  'jazz, big band, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0ABTqcd9WpR4LRrW6DHBwa',
  'found',
  88.6,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:17',
  'Duke Ellington',
  'Red Hot Band',
  'The Chronological Duke Ellington and his Orchestra 1927-1928',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:20',
  'Nat Gonella',
  'Shoot the Likker To Me, John Boy',
  'The Very Best of Nat Gonella',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/757i0igdKpvHx9J31itsQM',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:23',
  'Nat Gonella',
  'The Skeleton in the Cupboard',
  'The Very Best of Nat Gonella',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6fTwMHDOiEGKpPTX2ABkPq',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:27',
  'Louis Prima''s New Orleans Gang',
  'Put On An Old Pair Of Shoes',
  'Mosaic #217 Complete Brunswick & Vocalion Recordings',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:30',
  'Louis Prima''s New Orleans Gang',
  'Swing Me With Rhythm',
  'Mosaic #217 Complete Brunswick & Vocalion Recordings',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:32',
  'New Orleans Roof Jazzmen',
  'Pretty Doll - Ugly Child',
  'The New Orleans Roof Jazzmen Meet Lionel Ferbos in New Orleans',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:36',
  'New Orleans Roof Jazzmen',
  'When The Moon Comes Over The Mountain',
  'The New Orleans Roof Jazzmen Meet Lionel Ferbos in New Orleans',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:42',
  'Sidney Bechet',
  'Characteristic Blues',
  'Chant In The Night',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:45',
  'Sidney Bechet',
  'When the Sun Sets Down South [Southern Sunset]',
  'Chant In The Night',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:48',
  'Ted Des Plantes'' Washboard Wizards',
  'If You Like Me Like I Like You',
  'Shout, Sister, Shout!',
  'ambient jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4bXmtHjPVD0iEQMTI4mIU1',
  'found',
  75.3,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:52',
  'Bix Beiderbecke',
  'Sorry',
  'Bix Beiderbecke, Vol. 2- At The',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2nall2sBK0Mx5D2F5wEjrp',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:55',
  'Bix Beiderbecke',
  'Our Bungalow Of Dreams',
  'Bix Beiderbecke, Vol. 2- At The',
  'ragtime, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0CoDZQlACfcUlKkKnTOtMn',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '09:58',
  'Bix Beiderbecke',
  'Rhythm King',
  '1924-1930',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0cNUW5MpzZw8XfGwGgijpP',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:04',
  'Leroy Jones',
  'When My Dreamboat Comes Home',
  'Mo` Cream From The Crop',
  'brass band, ragtime',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/6hkPavPwg2nh4DkND4egec',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:34',
  'lucien barbarin',
  'Girl Of My Dreams',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:40',
  'Lucien Barbarin',
  'Ballin The Jack',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:40',
  'lucien barbarin',
  'Its good to be home',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:43',
  'lucien barbarin',
  'luciens blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:44',
  'paul barbarin',
  'give it up',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:47',
  'Mark Braud',
  'Fidgety Feet',
  'Shake It And Break It',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:49',
  'Thais Clark',
  'Wild Women Don''t Have The Blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '10:54',
  'Harry Connick Jr Featuring Lucien Barbarin',
  'Lucious',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:15',
  'lucien barbarin',
  'just a little while to stay here',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:21',
  'lucien barbarin',
  'just a closer walk with htee',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:28',
  'Lucien barbarin',
  'Bye And Bye',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:35',
  'Albert Papa French',
  'Tailgate Ramble',
  'Original Tuxedo Jazz BAnd',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:40',
  'frog joseph',
  'Wabash Blues',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:41',
  'louis armstrong/duke ellington',
  'Mood Indigo',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/1Fo98RNzO78WnMtkZKZXMW',
  'found',
  79.6,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:49',
  'Paul barbarin',
  'too late',
  NULL,
  'ragtime',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/6XlZ9N5kbzaSMhwrlUrjoE',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:53',
  'Lucien barbarin',
  'Cowboys',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '11:55',
  'lucien barbarin',
  'Home',
  NULL,
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:06',
  'Omara Portuondo',
  'Ausencia',
  'The Music of NuneNegra',
  'son cubano, bolero, latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/04JQNsArGNFn5ZKy1WZRhY',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:08',
  'Vieja Trova Santuiera',
  'El Tren',
  'The Music of NubeNegra',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:10',
  'Maria Salgado',
  'Mirandote',
  'The Music of NubeNegra',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:19',
  'Frank Emilio Flynn',
  'Rico Melao',
  'Ancestral Reflections',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:21',
  'Frank Emilio Flynn',
  'Bilongo',
  'Ancestral FReflections',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:23',
  'Frank Emilio Flynn',
  'Juventud de Pueblo Nuevo',
  'Ancestral Reflections',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:31',
  'The Mambo All Stars Orchestra',
  'Patricia',
  '50 Years of Mambo',
  'cha cha cha, mambo, latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3zg5CC8Njjv51gU9BkyeJj',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:33',
  'The Mambo All Stars Orchestra',
  'Mambo en Sax',
  NULL,
  'cha cha cha, mambo, latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3bgItdWfQfkG8xE1OEBIQm',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:38',
  'The Mambo All Stars Orchestra5:01',
  'Mambo No. 5',
  '50 Years of Mambo',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:42',
  'Mark Braud',
  'Shake It And Break It',
  'Shake It And Break It',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:57',
  'Estrellas de La Bahia',
  'El Espiritu del Mambo',
  'Salsa de La Bahia',
  'latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3HWzTEHvWYZbdx6sG8RgpO',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '12:59',
  'Orquesta La Moderna Tradiciion',
  'En El Tiempo de La Colonia',
  'Salsa de La Bahia Vol. 2',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '13:02',
  'Estrellas de La Bahia',
  'Rumba Para Paul',
  'Salsa de La Bahia Vol..1',
  'latin jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3o5Hpy3l688E7gJ51yvfhQ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '13:13',
  'Spanish Harlem Orchestra',
  'Como Baila mi Mulata',
  'Viva La Tradicion',
  'latin jazz, salsa, cha cha cha',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/317kfYv0kfY8YQUBW6kglx',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '13:14',
  'Spanish Harlem Orchestra',
  'Ruma Urbana',
  'Viva La Tradicion',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '13:26',
  'Spanish Harlem Orchestra',
  'El Negro Tiene Tumbao',
  'Viva La Tradicion',
  'latin jazz, salsa, cha cha cha',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1sceZZcdLI8T4EDhUeKZkh',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '13:28',
  'Eddie Palmieri',
  'Vamonos Pa''L Monte',
  'Grandes Super Exitos',
  'latin jazz, salsa, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/0bhcj7kqhc8A0JaktZPKwz',
  'found',
  89.7,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '13:29',
  'Eddie Palmieri',
  'Azucar',
  'Grandes Super Exitos',
  'latin jazz, salsa, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3qNWSbR08CBN1nzs2t8eqo',
  'found',
  98,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '13:33',
  'Eddie Palmieri',
  'Ajiaco Caliente',
  'Grandes Super Exitos',
  'latin jazz, salsa, afro-cuban jazz',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/4y7wGroHN7LwPQ5lsABZWZ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:01',
  'Dionne Warwick',
  'Brazil',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2XjMHxLalcSC1avlfugSe8',
  'found',
  75.3,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:05',
  'Analu Sampaio w/Roberto Menescal',
  'Voce',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:08',
  'Thamires Tannous',
  'Gramatica do Mar',
  'Acoustic World by Putumayo',
  'new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5orSBIcOc9niir34riFIDJ',
  'found',
  83.2,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:11',
  'Zanna',
  'Reflexo',
  NULL,
  'brazilian jazz, new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/02ICq5qNysWnQbZfNLKl3M',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:14',
  'Marisa Monte w/Jorge Drexler',
  'Vento Sardo',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:19',
  'Kenny Barron & Dave Holland Trio',
  'Porto Alegre',
  'Without Deception',
  'jazz, hard bop, cool jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/3mU7s6KdXhNslMHdFV4gk5',
  'found',
  86.9,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:24',
  'Gilberto Gil',
  'A Luz e a Escuridao',
  NULL,
  'mpb, bossa nova, forró tradicional',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/1VPEO6Orqs8c3ytZdQ9zJv',
  'found',
  86,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:27',
  'Terra Brazilis',
  'Em Cima de Hora',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:35',
  'Bianca Cardoso',
  'E o Povo na Rua Cantando e Feito uma Reza um Ritual',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:35',
  'Mart''nalia',
  'Boto Meu Povo Na Rua',
  'Em Berlim ao Vivo',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:40',
  'Preta Rara& Mel Duarte',
  'Nao Desiste',
  'Audacia',
  'brazilian hip hop, new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/1mUavaWL034hhpB6meE6nm',
  'found',
  77.7,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:43',
  'Marcelo Hilgenberg',
  'Nunca Desistir',
  'Ko''Ape',
  'brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5tsZvYDccaQOR3DGK81LLY',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:47',
  'Caetano Veloso',
  'O Heroi',
  'Ce',
  'mpb, bossa nova, samba',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/625Vj5NWd1CjkFpqSyNsD4',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:47',
  'Victor Batista',
  'A Peleja de Aninha Contra o Reino de Tirania',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4ZWkK08z7ubL9Wy6oE1HDf',
  'found',
  96.9,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:51',
  'Vince Guaraldi Trio',
  'Samba de Orpheus',
  'Jazz Impressions of Black Orpheus',
  'christmas',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/7fdONIttJGWGAc2HU3oiPt',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:56',
  'Caterina Valente',
  'Samba de Uma Nota So',
  NULL,
  'schlager, bossa nova',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5hyauOmPY8USNexuMuo3nC',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '14:59',
  'Orquestra Nova',
  'Retrato em Branco e Preto',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:04',
  'Rastrelli Cello Quartet',
  'Samba de Uma Nota So',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:06',
  'Tom Jobim',
  'Ela e Carioca',
  'Tom Canta Vinicius',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/3SsLp6TJ1UFjxA3FyCjSKs',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:07',
  'Cassandra Wilson',
  'Waters of March',
  'Belly of the Sun',
  'vocal jazz, jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/74lmvssWZ5mlz157oFIqEZ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:12',
  'Antonio Carlos Jobim & Elis Regina',
  'Fotografia',
  NULL,
  'mpb, bossa nova, brazilian jazz',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4O2tMlIxlgRwmNQDElwIq4',
  'found',
  82,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:16',
  'Antonio Carlos Jobim',
  'Samba de Maria Luiza',
  'Antonio Brasileiro',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:16',
  'Maria Luiza Jobim & Otto',
  'Farol',
  NULL,
  'new mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5lo4mjD8ZWj7jYQPpoQ4SN',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:19',
  'SF Jazz Collective',
  'Waters of March',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:24',
  'Fernanda Abreu',
  'Jack Soul Brasileiro',
  'Raio X',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:29',
  'Banda Eva',
  'Carnaval de Salvador',
  NULL,
  'axé, pagode baiano',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2DfMKrCsXDaQFLPCjVttM0',
  'found',
  85,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:33',
  'Maracatu Arrasta Ilha',
  'Pernambuco/Santa Catarina',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4cjjzS400EDUfoewX7Zqex',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:37',
  'Aricia Mess',
  'Batuque e Reza Forte',
  'Putumayo Presents Brazil',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2T2UkcCACHAv7AfxHIGiPi',
  'found',
  93,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:42',
  'Os Tres Bohemios',
  'Menina Nova',
  'Capelinha de Melao',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:44',
  'Jacob do Bandolim',
  'Cadencia',
  NULL,
  'samba, brazilian jazz, seresta',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4QN7WwvAXCY4QUN1bv2RoS',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:48',
  'Fred Hersch',
  'Brigas Nunca Mais',
  NULL,
  'jazz, jazz ballads',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5UnMKni1yc3MeSpnsw5rAl',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:51',
  'Charlie Dennard',
  'Quando o Galo Cantar',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:55',
  'Tom McDermott w/Chloe Feoranzo & Michael Skinkus',
  'Curvilineo',
  'Zeppelins Made to Order',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '15:57',
  'Tom McDermott w/Eduardo Tozzatto & Michael Skinkus',
  'Conversa de Botequim',
  'New Orleans Duets',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:05',
  'ile aiye',
  'me leva amor',
  '25 anos',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:05',
  'los indios tabajaras',
  'bali ha''i',
  'song of the islands',
  'latin folklore',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/34WftnDz6kAeG8tt2mCUeC',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:06',
  'piqsiq',
  'tutaliit: mermaids',
  'legends',
  'native american music',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2oLy3pKF5ksV2YNDfRh5Nr',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:08',
  'rebolu',
  'bullerengue rico',
  'abriendo caminos',
  'cumbia sonidera',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0rwdxGTPQ2b4gpOzOSqT2u',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:12',
  'anga',
  'dracula simon',
  'echu mingua',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:15',
  'personagens',
  'no corpo a coisa pega',
  'the rough guide to brazilian hip-hop',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:16',
  'mc nadinho & mc beth',
  'tapinha',
  'rio baile funk',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:17',
  'paty',
  'cavalo de pau',
  'rio baile funk',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:20',
  'os tchutchucos',
  'chapa quente',
  'rio baile funk: favela booty beats',
  'funk melody, brazilian funk, funk carioca',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0qBB8sVZ2eif2mzgDymB6c',
  'found',
  70,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:26',
  'anga',
  'conga carnaval',
  'echu mingua',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:31',
  'residente feat. ibeyi',
  'this is not america',
  'this is not america',
  'latin hip hop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/7d8LusdMBU3yWUSWBpETjG',
  'found',
  83,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:35',
  'ife',
  'higher love',
  'IIII+IIII',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '16:47',
  'los fabulosos cadillacs',
  'el matador',
  'vasos vacios',
  'rock en español, latin rock, ska',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3EsjrObXPhXA79Cr4QixY8',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:01',
  'tambores de bejucal',
  'oferere/oh felicidad/chango y ochun',
  '50 son 50',
  'timba, son cubano',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1xZz6JCDW1tclbsvAktBOF',
  'found',
  83.5,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:02',
  'ram',
  'ram se pa saw te di kanaval 2014',
  NULL,
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:03',
  'instituto & sabotage',
  'dama tereza',
  'the rough guide to brazilian hip-hop',
  'brazilian hip hop, boom bap',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/6sHXD7dvz0fEPw25hoetsZ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:11',
  'rebolu',
  'el viejo jose',
  'abriendo caminos',
  'cumbia sonidera',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3qnl0kJBuD8IeVQ5rRNqoV',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:15',
  'omon engoma',
  'curumin',
  'bahia de todos os ritmos',
  '',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/57s9ngWL6p70dtKDnyklfK',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:16',
  'xis',
  'us mano e as mina (profmix)',
  'the rough guide to brazilian hip-hop',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:19',
  'garifuna baruda',
  'tagarigu nanigi (pain of my heart)',
  'garifuna music',
  'punta, gnawa, traditional music',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0yIzX5BPZaweCHUi10pvnd',
  'found',
  83,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:24',
  'grupo ofa, maeana & preta gil',
  'o doce do mar - iyalode iya, iyalode iya o!',
  'iya agba sire',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:25',
  'maracatu group',
  'oxum',
  'maracatu',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:29',
  'ile aiye',
  'mae preta',
  'canto negro',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:35',
  'los fabulosos cadillacs',
  'strawberry fields forever',
  'rey azucar',
  'rock en español, latin rock, ska',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/62Chy6UjYOxsUO87aCUamR',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:36',
  'bonde de tigrao',
  'o baile todo',
  'rio baile funk',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:39',
  'yoskar sarante',
  'vivi',
  'vivi',
  'bachata, merengue',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3t6q9dafSsyqRuxAtgszRc',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:49',
  'los mirlos',
  'sonido amazonico',
  'the roots of chicha',
  'chicha, cumbia, cumbia sonidera',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/2Zcv2Vk65xi37T7AT2qcDJ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:50',
  'omon engoma',
  'marabaiao',
  'bahia de todos os ritmos',
  '',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4YkhIXCdDcbfKnqS6HRSKJ',
  'found',
  70.3,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:50',
  'piqsiq',
  'nuliajuk: goddess of the sea',
  'legends',
  'native american music',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/5gsxoOo3sHqqBUCtmuetjo',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '17:57',
  'cubanismo! feat. john boutte & michael skinkus',
  'shallow water suite',
  'mardi gras mambo',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
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
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:02',
  'Kool & the Gang',
  'Music is the Message',
  'Music is the Message',
  'disco, funk',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/4MJyaqLd0NN40OhsSjVxZq',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:07',
  'The Meters',
  'Disco is the Thing Today',
  '12 inch single',
  'funk, soul, jazz funk',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/1kZFs3rDbzx72c55PSu2jQ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:14',
  'Zingara',
  'I Surrender',
  'Zingara',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:19',
  'Locksmith',
  'Far Beyond',
  'Unlock the Funk',
  'post-disco',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5zaIS9ZcseJrgTBVUttgtR',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:23',
  'Seawind',
  'You Gotta Be Willin'' to Lose (Pt. II)',
  'Seawind',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:27',
  'Crystal Winds',
  'Lovers Holiday',
  'First Flight',
  '',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/3Jrqp2ZO3l7neg76Dqq97n',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:31',
  'J.O.B. Band',
  'Keep on Smiling',
  'Live at the Point After - Tulsa, Oklahoma',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:43',
  'GQ',
  'Spirit',
  'Disco Nights',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:49',
  'Arthur Foy',
  'Get Up and Dance',
  '45 single',
  '',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/7LfHne7BBUZhIGi67o3TMJ',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '20:52',
  'Bohannon',
  'Cut Loose',
  'Cut Loose',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:03',
  'Institutional Radio Choir of Brooklyn',
  'And Have His Grace to Stand',
  'Say Something for the Lord',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:18',
  'UNAC 5 Choir, soloist Dorinda Clark-Cole',
  'Got to Hold On',
  'UNAC 5 Live Live at Miami Beach Convention Center',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:28',
  'Southeast Inspirational Choir',
  'My Liberty',
  '10th Annual Praise & Rededication Concert',
  'traditional gospel',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/0AO4K7phStudNJ1tGB9tz2',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:33',
  'Supreme Jubilees',
  'Thank You Lord',
  'It''ll Be All Over',
  'funk gospel, classic soul',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/2e3mkpr0hWjKIezAv0Q2U0',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:38',
  'Soul Searchers',
  'Blow Your Whistle',
  'Salt of the Earth',
  'go-go, breakbeat',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/1BdnjzOewCENCEnuDmNaqj',
  'found',
  84.4,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:41',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:47',
  'James Brown',
  'There It Is Pt. 1',
  '45 single',
  'funk, soul, motown',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/7qSUIl4cYbqfVSdqLVW0tx',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '21:51',
  'Wild Tchouupitoulas feat. Neville Brothers',
  'Brother John ....',
  'New Orleans ''77',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:03',
  'The Persuasions & Friends',
  'One More Saturday Night',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1U3uJWOygf6EQSgodrh0OD',
  'found',
  89.5,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:10',
  'AJ Lee',
  'Ripple',
  NULL,
  'bluegrass, newgrass',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/59iU5HDzeYLF3BmHcKL1fL',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:13',
  'Robert Plant',
  'Morning Dew',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/6KGPlaNoOYOedEYfnsK6Un',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:18',
  'Molly Tuttle & Golden Highway',
  'Dire Wolf',
  NULL,
  'bluegrass, newgrass, americana',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7JMZ6bCzD1nENedrV3njJi',
  'found',
  80.4,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:25',
  'Joan Baez',
  'Jackaroe',
  NULL,
  'folk, folk rock, singer-songwriter',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/4UvV1cu1C1dMt341339rtI',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:29',
  'Marty Robbins',
  'El Paso',
  NULL,
  'classic country, outlaw country',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/4f8hBeMXMvssn6HtFAtblo',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:33',
  'John Denver',
  'Me & My Uncle (Live)',
  NULL,
  'folk',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/4neWUPqNRhxTyuuUm2Dsni',
  'found',
  91.6,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:37',
  'Grace Potter, Bob Weir',
  'Friend Of The Devil',
  NULL,
  'jam band',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/2XS72Ytulx1blpU6gSIQ0l',
  'found',
  94.4,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:46',
  'Courtney Barnett',
  'New Speedway Boogie',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7rlH5IVzRc5eCMiURVoUrI',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '22:53',
  'Cris Jacobs',
  'Black Peter',
  NULL,
  'newgrass, bluegrass',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/25Pcr7q7HVnCZ5F9TIjMpq',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:01',
  'The Cowboy Junkies',
  'To Lay Me Down',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:02',
  'Levon Helm',
  'Tennessee Jed',
  NULL,
  'americana, roots rock, folk',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1UR7rr3oZgM8TeuWJfLa64',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:08',
  'Greensky Bluegrass',
  'Cassidy (Live)',
  NULL,
  'newgrass, bluegrass, jam band',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/6ALu14Zl8e3gr0CDHT9BNe',
  'found',
  98,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:17',
  'Trampled By Turtles',
  'Brown Eyed Women',
  NULL,
  'bluegrass, newgrass, americana',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1fE4yrhQZdRzlMS0Ve0m18',
  'found',
  90.2,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:25',
  'Willie Nelson',
  'The Harder They Come',
  NULL,
  'outlaw country, classic country, country',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/24M6G0st2RKeqWlwCMac6r',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:28',
  'Hopeton Lewis',
  'The Mighty Quinn',
  NULL,
  'rocksteady, reggae, ska',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3Zj21tKRcgFkDb0gOBCbDf',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:32',
  'The Band, The Crickets',
  'Not Fade Away',
  NULL,
  'folk rock, roots rock, southern rock',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/6YemzqX5yXh1JSl9ZTQorM',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:35',
  'Bruce Springsteen',
  'Good Lovin (Live In Hyde Park)',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:42',
  'Siouxsie & The Banshees',
  'Dear Prudence',
  NULL,
  'gothic rock, post-punk, darkwave',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/34tFidHrETMAjsiK87WVVW',
  'found',
  88.1,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:46',
  'The Belle Stars',
  'Iko Iko',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/4ely2ZTvNaMOcwZUJHtfYt',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:49',
  'Sisters Love',
  'Turn On Your Lovelight',
  NULL,
  'northern soul, motown',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/703QWXEk7h5dYuH9eVfrho',
  'found',
  100,
  '2026-02-01 07:34:20'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-31',
  '23:55',
  'Aaron Neville',
  'I Bid You Goodnight',
  NULL,
  'classic soul',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3CB0KuzswH69i3p7MaxlX9',
  'found',
  100,
  '2026-02-01 07:34:20'
);

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