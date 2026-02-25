-- WWOZ Database Export
-- Generated: 2026-02-25T08:06:40.211Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-25 08:05:35
-- Days: 3
-- Tracks: 519

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-22',
  'https://open.spotify.com/playlist/6SF1dt8PNV2TalVU5Bl0lF',
  '{"totalTracks":146,"successfullyFound":89,"notFound":57,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-23 09:10:59',
  '2026-02-25 08:06:39'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-23',
  'https://open.spotify.com/playlist/73L6vyCWlXt1L31CThAZet',
  '{"totalTracks":218,"successfullyFound":148,"notFound":70,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-23 09:10:59',
  '2026-02-25 08:06:39'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-24',
  'https://open.spotify.com/playlist/2hEjvN8nPjUiyOAIsH8Tmq',
  '{"totalTracks":140,"successfullyFound":93,"notFound":47,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-24 07:50:20',
  '2026-02-25 08:06:39'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '04:29',
  'Allen Toussaint',
  'Bond',
  'New Orleans',
  '',
  'Overnight Music - Monday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '05:30',
  'Lee Dorsey',
  'Ride Your Pony',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Overnight Music - Monday',
  NULL,
  'https://open.spotify.com/track/5xsXzVOEA83GlDZ14Q74yh',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:03',
  'Bill Evans',
  'Peace Piece',
  'Everybody Digs Bill Evans',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/58yFroDNbzHpYzvicaC0de',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:03',
  'Morphine',
  'Bo''s Veranda',
  'b sides and otherwise 1993',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5zF1TVhvYSxwr0euTCCHy4',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:11',
  'Harold Budd',
  'Bismillahi ''Rrahmani'' Rrahim',
  'The Pavillion of Dreams',
  'ambient, minimalism, shoegaze',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5oTnjavcEz8hENl2nlYmdx',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:28',
  'Norah Jones',
  'Sunrise',
  'Feels Like Home',
  'jazz pop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7zkLpY72g6lKQbiHDqri1S',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:31',
  'Thelonius Monk',
  'Blue Monk',
  'Live at the It Club',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:40',
  'Roland Kirk',
  'Many Blessings',
  'The Inflated Tear',
  'free jazz, hard bop, jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2OWp0pgwSBGYxksIRjAljM',
  'found',
  82.7,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:46',
  'The Ink Spots',
  'I Don''t Want To Set The World On Fire',
  NULL,
  'adult standards',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/777zXDJpBufzttU4AJ2dGO',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:48',
  'Duke Ellington',
  'Lotus Blossom',
  '...And His Mother Called Him Bill',
  'jazz, big band, swing music',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/38HJAmGAl3oJc9umq0awe3',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '06:52',
  'Eric Dolphy',
  'God Bless The Child',
  'Copenhagen Concert',
  'free jazz, jazz, hard bop',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1umTCrxgqEBJGTS85GIYUe',
  'found',
  76.2,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:16',
  'Southern University Jazz Ensemble',
  'Samba Dee',
  'Goes to Africa With Love',
  'free jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5mb4db7hmJ6ZeLz6qkIeZN',
  'found',
  89.8,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:21',
  'Nicholas Payton',
  'Relaxin'' With Nick',
  'Relaxin'' With Nick',
  'jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/11QqXPoYDC1wLjBrVUJ6AU',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:26',
  'Herb Alpert & The Tijuana Brass',
  'Ladyfingers',
  'Whipped Cream & Other Delights',
  'adult standards, exotica',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7ubd6wvhN4TKMwQUy6hR69',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:29',
  'Ellis Marsalis w/Jason Marsalis',
  'A Groove For Bags',
  'For All We Know',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:35',
  'Jason Marsalis Vibes Quartet',
  'Big Earl''s Last Ride',
  'In A World of Mallets',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/52b3ydaIVUEZvIP6i7Lkrl',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:39',
  'Max Roach',
  'Absolutions',
  'Members Don''t Git Weary',
  'hard bop, bebop, jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2C3gN84NVsPpFyJOSpdSTX',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:44',
  'True Loves, Nigel Hall',
  'Dopus No. 1',
  'Dopus No. 1',
  'jazz funk, funk, retro soul',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2uBbWlPLVLVhqLfuEbMNy3',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:49',
  'Idris Muhammad',
  'By The Red Sea',
  'Black Rhythm Revolution',
  'jazz funk, soul jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6vEpEQnqR3O03HzCpVQnU3',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '07:58',
  'Mort Garson',
  'Plantasia',
  'Mother Earth''s Plantasia',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2XV5CUyw7gPVi18d718D4f',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:01',
  'Brian Blade and the Fellowship Band',
  'Duality',
  NULL,
  'jazz, ambient jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/27YLzmcjtwz0NJv5pamptZ',
  'found',
  91.1,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:10',
  'Hiatus Kaiyote',
  'Mobius Streak',
  'Tawk Tomahawk',
  'neo soul, indie soul, alternative r&b',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/40l4Z2pYvnoXD2PTl3T26Z',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:16',
  'Flea',
  'Thinkin Bout You',
  'Single',
  'funk rock',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4LiSdLjUXbS4daVzBJCTwH',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:20',
  'David Axelrod',
  'The Warnings Pt. II',
  'Earth Rot',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:25',
  'Willie Colon',
  'Idilio',
  'Hencho En Puerto Rico',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:31',
  'Ella Fitzgerald, Louis Armstrong',
  'Can''t We Be Friends',
  'Ella and Louis',
  'jazz, vocal jazz, swing music',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/22MsyWQ5WFGv8GXP7qmzDP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:34',
  'Lonnie Liston Smith',
  'Footprints',
  'Cosmic Funk',
  'jazz funk, jazz fusion, acid jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2ijh40c203ZcgsujvVxb7j',
  'found',
  77.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:41',
  'Kassa Overall',
  'REBIRTH OF SLICK (COOL LIKE DAT)',
  'CREAM',
  'jazz rap, nu jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3h1DfQK2IVd5DYJZ0MYGgc',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:44',
  'The Heliocentrics',
  'Space Cake',
  'Telemetric Sounds',
  'ethiopian jazz, afrobeat, nu jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5pfnhUPw89ZAh0pf8yomZ7',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:48',
  'Josh Johnson',
  'Who Happens If',
  'Unusual Object',
  'ambient jazz, experimental jazz, indie jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6Pzse6lWkAcycBgo9cuDtF',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '08:50',
  'Pino Palladino, Blake Mills',
  'Contour',
  'That Wasn''t A Dream',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/5vpmH8LoHRnNh0wF0ma5y0',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
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
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:04',
  'George French Band',
  'Mr. Magic',
  'It''s A Beginning',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:16',
  'John Boutte',
  'I''m A Cowboy',
  'john Boutte & Uptoen Okra',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:19',
  'Dean Zucchero',
  'Biting Through',
  'Siing For The Sinners',
  'modern blues, blues rock, blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5ywcVg3x6BIPM81Hel5i0G',
  'found',
  73.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:28',
  'Dean Zucchero',
  'Fowl Play',
  'Song For The Sinners',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:35',
  'Jump Hounds',
  'Please SEnd Me Someone To Love',
  'Southern Comfort',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:42',
  'Percy Mayfield',
  'Louisiana',
  'My Heart',
  'blues, classic blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5fixhXm5otdxLmMbcfOZ4I',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:47',
  'Johnny Adams',
  'Come Rain Or Come Shine',
  'Good Morning Heartache',
  'soul blues, blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5pZ731IL3aHbXAXmI4dr3y',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:47',
  'Marva Wright',
  'Nothing Takes The Place Of You',
  'Heartbrakin`',
  'zydeco, blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5s4Xset2zhmHONFwBwDG8S',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:54',
  'Lonnie Johnson',
  'Tomorrow Night',
  'Rhythm & Blues 1945-1951 - Music Sampler Vol. 1',
  'blues, country blues, classic blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2eXgdiB8q1M5hWR1BOdSVk',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '11:54',
  'Preservation Hall Jazz Band',
  'Little Liza Jane',
  'Shake That Thing',
  'brass band, swing music, ragtime',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5Jwl55LA6UGFTFpBwqU0D5',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:07',
  'Ronell Johnson',
  'Banana Split For My Baby',
  'Instgant Roo',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/73NZRUV1kffjUoDBtlz4kq',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:42',
  'Shannon Powell',
  'Lord, Lord, Lord',
  'Powell`s Place',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:46',
  'Yoshitaka',
  'Fire Waltz',
  'HappyHour',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '12:53',
  'John Papa Gros',
  'Yes We Can',
  'Giants',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:08',
  'Dr. John',
  'Right Place, Wrong Time',
  'Mos` Scocious- Anthology (CD02)',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0I2ELF6uHlL4ABu9aFiou7',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:13',
  'Down',
  'Right Place Wrong Time',
  'Single',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:14',
  'Sally Baby''s Silver Dollars',
  'Down in New Orleans',
  'Sally Baby''s Silver Dollars',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:15',
  'Irma Thomas',
  'Back Water Blues',
  '50th Anniversary Celebration',
  'classic soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0JjxpW2i161phUkLc3zTxh',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:18',
  'Dusky Waters',
  'House On King Street',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1RDP6hcIhMtBgei7jT6vtx',
  'found',
  93.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:23',
  'Kelly Love Jones And Deezle',
  'Surrender(Til The End Of Time)',
  'Surrender',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:26',
  'Bonerama',
  'My Girls Oh So Fine',
  'So Much Love',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4KSH4IsLR18UdKbcKGuBNu',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:31',
  'Corey Henry & The Treme Funkte',
  'Slip Into Darkness/HeyPockeyWa',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:38',
  'Slugger',
  'Suwanee',
  'Bangers',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:42',
  'Funk Monkey',
  'Mojo HAnnah',
  'Pre-Roll',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2D9x5BXmaEpgkOSMdmsbR1',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:46',
  'Trombone Shorty & The New Breed',
  'Street Music',
  'Second Line Sunday',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:51',
  'Orlando Gilbert',
  'New Orleans Party',
  'A Crescent City Connection',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1oEbb4BJpcx3SrzLyq056z',
  'found',
  74.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '13:57',
  'Joe Krown Organ Combo',
  'The Royal Boogie',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:06',
  'maceo parker',
  'CHICKEN',
  'mo roots',
  'jazz funk, funk, soul jazz',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1RTnm3X7m7ugfVYIDIlAho',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:09',
  'MAGIC SAM',
  'My Love Will never Die',
  'WEST SIDE SOUL',
  'classic blues, blues, soul blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5vPsp9dDUgXfHRccXDuNow',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:09',
  'Magic Sam',
  'LOOKIN'' GOOD',
  'THE LEGACY OF MAGIC SAM',
  'classic blues, blues, soul blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6Y3Ux6BIub9qkkIDvGvilL',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:12',
  'CALVIN FRAZIER',
  'SHE''S A DOUBLE CROSSING WOMAN',
  'I''M IN THE HIGHWAY MAN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:15',
  'KOKOMO ARNOLD',
  'Back to the Woods',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER VOL.1 1930-35',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/58c7PrEn0nJ4LcoWIOukgv',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:17',
  'NAT MYERS',
  '75-71',
  'YELLOW PERIL',
  'blues, southern gothic, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1Kpl4t6FsojBlqRctw58DD',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:21',
  'JOHNNY WINTER',
  'ICE CUBE',
  'GANGSTER OF LOVE: THE ESSENTIAL EARLY YEARS',
  'blues, blues rock, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0tP25WztqIT2JJqhC0xvMs',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:26',
  'FATS DOMINO',
  'My girl Josephine',
  'MILLION SELLERS BY FATS',
  'rock and roll, doo-wop, rockabilly',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0CIc4SaHV9RaQvXscSlVFH',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:27',
  'JOHNNY CASH',
  'GET RHYTHM',
  'BALLAD OF A TEENAGE QUEEN',
  'classic country, outlaw country, country',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2jM8e3L9UA08hfIjlVRrpW',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:31',
  'Johnny Cash',
  'Rowboat',
  'Unchained',
  'classic country, outlaw country, country',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6PSQXLJ32A7Ra9kfKP4q3M',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:33',
  'RHIANNON GIDDENS FEAT. JASON ISBELL',
  'YET TO BE',
  'YOU''RE THE ONE',
  'folk, americana, southern gothic',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6iHor3auKtisM4nmBmyGpE',
  'found',
  89.3,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:37',
  'IRMA THOMAS',
  'THE HURT''S ALL GONE',
  'SWEET SOUL QUEEN OF NEW ORLEANS',
  'classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1tNQKGllGVHWAW8pHsn3F2',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:41',
  'GARY CLARK JR',
  'DON''T OWE YOU A THING',
  'BRIGHT LIGHTS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:46',
  'SUPER CHIKAN',
  'EL CAMINO',
  'WHAT YOU SEE',
  'blues, footwork, modern blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0GwmbmFV1nbHARENlBLX4B',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:49',
  'GEORGE THOROGOOD',
  'RIDE ON JOSEPHINE',
  'GEORGE THOROGOOD AND THE DESTROYERS',
  'classic rock, blues rock, southern rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5mnuD2SFnzrD6P0H7unGpe',
  'found',
  75.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:51',
  'charles shefield',
  'it''s your voodoo working',
  'LOUISIANA SWAMP BLUES',
  'northern soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3iDQAwkv5diO0iQef1wBT2',
  'found',
  72,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:54',
  'R.S. RANKIN',
  'YOU DON''T KNOW WHAT YOUR DOING',
  'TEXAS GUITAR: FROM DALLAS TO L.A.',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5keZThtkVWCZ30NAWpJMK4',
  'found',
  92.2,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:55',
  'LEROY WASHINGTON',
  'BE KIND',
  'LOUISIANA SWAMP BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:58',
  'DRIFTIN'' SLIM',
  'MY LITTLE MACHINE',
  'THE TRAVELING RECORD MAN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '14:59',
  'JIMMY YANCEY',
  'THE FIVES',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER VOL.1',
  'boogie-woogie, ragtime, boogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0Hi6S4QUZTaLVlXvP2sfXJ',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:06',
  'Ralph Stanley',
  'O Death',
  'O BROTHER, WHERE ART THOU',
  'bluegrass, christian bluegrass, country christian',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/16jWQYb9YpzdaOLG8DeHOB',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:08',
  'Nina Simone',
  'Martin Luther King Suite- Missis',
  'Forever Young, Gifted & Black- S',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:18',
  'Leyla McCalla',
  'The Capitalist Blues',
  'The Capitalist Blues',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7LPxn9YKOA8K1U6wMzhfc6',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:22',
  'CHARLEY PATTON',
  'JESUS IS A DYING BEDMAKER',
  NULL,
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:23',
  'COREY HARRIS',
  'HIGH FEVER BLUES',
  'FISH AIN''T BITIN''',
  'blues, modern blues, country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7LoBaWG28WhlDyYVvwKcjN',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:28',
  'king floyd',
  'i feel like dynamite',
  'CHOICE CUTS',
  'classic soul, motown',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3icEt2TCIsw0kPZvGRyA5K',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:29',
  'BILL DOGGETT',
  'MATCHES',
  'THE BEST OF BILL DOGGETT',
  'soul jazz',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7BbstyNOEUlkZosY3mVcPw',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:32',
  'THE VELVET UNDERGROUND',
  'HEAD HELD HIGH',
  'LOADED',
  'proto-punk, art rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0EZyF8mKrbXdzGJRPzDD1g',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:36',
  'THR ROLLING STONES',
  'Sway',
  'STICKY FINGERS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:38',
  'Ernie K-Doe',
  'Here Come The Girls',
  'Here Come The Girls- A History 1',
  'classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5PaXa6xCZFTDRpx4FYZo6b',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:42',
  'ANDREW BROWN',
  'YOU MADE ME SUFFER',
  'LIGHT: ON THE SOUTH SIDE',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/139wOxRmWtascxqTYAuoJg',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:47',
  'LITTLE FREDDIE KING',
  'GOIN'' UPSTAIRS',
  'MESSIN'' ROUND THE HOUSE',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/59v5XhsV1cKzAKxRzjmVQ0',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:51',
  'LITTLE JOE WASHINGTON',
  'LAST TEAR',
  'HOUSTON GUITAR BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '15:56',
  'SCRAPPER BLACKWELL',
  'KOKOMO BLUES',
  'THE VIRTUOSO OF SLIDE GUITAR',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6c7TBts8ChIOfVyI266fkA',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
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
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:03',
  'PHAROAH SANDERS',
  'UPPER EGYPT AND LOWER EGYPT',
  'THE IMPULSE STORY',
  'free jazz, ambient jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5xur0NcwuiICOfRdiEZXnx',
  'found',
  93.6,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:18',
  'John Coltrane',
  'Spiritual',
  'Complete 1961 Village Vanguard R',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2f6ePNBYDxzzwygxGXa0sb',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:34',
  'Alice Coltrane',
  'Lovely Sky Boat (Album Version)',
  'The Impulse Story',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:41',
  'DAVID FATHEAD NEWMAN & THE TILDEN WEBB TRIO',
  'CRISTO RENDENTOR',
  'CELLAR GROOVE',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:52',
  'WAYNE ESCOFFERY',
  'RAPTURE',
  'ALONE',
  'jazz, vocal jazz, hard bop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3Ws1BOppgWGn7buMaVb3d0',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '16:59',
  'NINA SIMONE',
  'I WISH I KNEW HOW IT WOULD FEEL TO BE FREE',
  'SILK AND SOUL',
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5CKHhg31HcYYhwUeeGqvhq',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:06',
  'DAVE STRYKER',
  'BLUE FIRE',
  'BLUE FIRE (THE VAN GELDER SESSION)',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:12',
  'Idris Muhammad',
  'Peace And Rhythm Suite- Rhythm',
  'Legends Of Acid Jazz',
  'jazz funk, soul jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5RMA7BjdZoJz5iyKdNdBJO',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:20',
  'CHARLIE APICELLA & IRON CITY',
  'IDRIS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7m6ulA2cguNBmsi3dM43Xg',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:25',
  'CHARLIE APICELLA & IRON CITY',
  '64 CADILLAC',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0LihKpwQJE2aFNzhFXM6Ks',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:31',
  'Harold Land',
  'Triplin` the Groove [Live]',
  'Westward Bound! (Live)',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:43',
  'Betty Shirley',
  'Gulf Coast Blues',
  'SuMayy',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:47',
  'DAVID ''FATHEAD'' NEWMAN',
  'MAMA-LOU',
  'DIAMONDHEAD',
  'hard bop, bebop, soul jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6EKnjNQetkNaWER2jY39vC',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '17:53',
  'Dexter Gordon',
  'Daddy Plays The Horn',
  'Daddy Plays The Horn',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7fKXDTmB9VE66d0AJQSwWe',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:04',
  'NINA SIMONE',
  'SINNERMAN',
  'PASTEL BLUES/ LET IT ALL OUT',
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5xRP5iyVdGglqlY4Vcjhkx',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:13',
  'Jimmy Smith',
  '''Round Midnight',
  'Jazz `Round Midnight- Jimmy Smit',
  'hard bop, soul jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5jmbNgAZVjI1qFFh3nneu5',
  'found',
  88.1,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:24',
  'DR. LONNIE SMITH',
  'SIMONE',
  'JUNGLE SOUL',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0t9IFNt5OWilKr9C2D0h1h',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:29',
  'Art Blakey',
  'Cubano Chant',
  'Drum Suite [Bonus Tracks]',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5WL091Ipi4bGgRsWiqBvx3',
  'found',
  74.7,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:43',
  'LEE MORGAN',
  'DOMINGO',
  'THE COMPLETE BLUE NOTE LEE MORGAN FIFTIES SESSIONS',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:44',
  'Betty Carter',
  'Jazz (Ain`t Nothin` But Soul)',
  'I Can`t Help It',
  'vocal jazz, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5Q4JJ0pK8zEF0oWJxygGAm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '18:46',
  'Miles Davis & John Coltrane',
  '2-07 On Green Dolphin Street [Li',
  'The Final Tour The Bootleg Serie',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:09',
  'CL Blast',
  'Whayt Can I Do',
  'UNITED 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:09',
  'Ernie K Doe',
  'Hey Hey Hey',
  'MINIT 45',
  'doo-wop, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0ZUoolciKxAxF5Lqq0gA2M',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:15',
  'Little Juniors Blue Flames',
  'Fussin and Fighting Blues',
  'SUN 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:16',
  'LAzy Lester',
  'They Call Me Lazy',
  'EXCELLO 45',
  'blues, classic blues, modern blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3TOsd8X5C6RVGtTeZTcE4N',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:16',
  'Silas Hoigan',
  'Im In Love WIth YOu Baby',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:21',
  'Irma Thomas',
  'Dont Mess With My MAn',
  'RON 45',
  'classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5fAWSK7rw20ilX3N1XmZjP',
  'found',
  79,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:24',
  'Ernie K Doe',
  'Gotta PAck Myt BAg',
  'DUKE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:25',
  'The Stepter Four',
  'Dont Play With God',
  'The D Vine Story Vol 3',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2i6qfjukkT8GxuI2y6i1ez',
  'found',
  79,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:28',
  'DEE DEE GArtrell',
  'Second Hand Love',
  'MAVERICK 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:32',
  'James Brown',
  'It Was You',
  'FEDERAl 45',
  'funk, soul, motown',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6WXRW8TTDsmalBQ8gZP76V',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:38',
  'Johnny Guitar Watson',
  'Hot Little Mama',
  'RPM 45',
  'blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5UWA1cwkp3pCKYsmuFwfZp',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:38',
  'The 5 Royales',
  '30 Second Lover',
  'KING 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:42',
  'Ernie k Doe',
  'A Little Bit Of Everything',
  'DUKE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:45',
  'Lee Bates',
  'I do things COme naturally',
  'INSTANT 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:47',
  'Tarheel Slim and Little Ann',
  'Forever Ill Be Yours',
  'FIRE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5F2JAi6redQCX5zyJzOcUu',
  'found',
  81.6,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:51',
  'OV Wright',
  'Lets STraighten It Out',
  'The Bottom Line',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:54',
  'Mighty Joe Young',
  'Suffering Soul',
  'WEBCOR 45',
  'blues, classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6i2DEMeAYUKkpb31DDSfhX',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '19:59',
  'Ernie K Doe',
  'A Certain Girl',
  'MINIT 45',
  'doo-wop, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5VkOlvkvY7OGO5nobVRDLV',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:00',
  'The Golden Crowns',
  'My Precious Lord',
  'SU ANN 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:03',
  'Tal Miller',
  'BABY',
  'HOLLY WOOD 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:07',
  'Cedric Burnside',
  'i Be Tryin',
  'I Be Tryin',
  'blues, modern blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2lwVx23dtmqVZvjf1sLsah',
  'found',
  84.7,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:12',
  'Diamond Joe',
  'Moaning and Screaming pt 1',
  'MINIT 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:14',
  'Sabine McCalla',
  'Sunshine Kisses',
  'Dont Call Me Baby',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2M98LYO5rEMZg0xr4eFfPb',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:17',
  'Champion Jack Dupree',
  'Shake Baby Shake',
  'RED ROBIN 45',
  'blues, classic blues, boogie-woogie',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6dEesyWW1SeKzHNi1JrLqm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:24',
  'Ernie K Doe',
  'Do Baby Do',
  'SPECIALTY 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:24',
  'Miss Lavell',
  'Run To You',
  'DUKE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:25',
  'OV Wright',
  'Working YOur GAme',
  'BACK BEAt 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:27',
  'Barbara Lynn',
  'Im A One Man Woman',
  'ATLANTIC 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3AMy1Ukan4Iord87v2kLbn',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:30',
  'Otis Redding',
  'You Dont Miss Your Water',
  'VOLT 45',
  'motown, soul, classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2gwWkMsSzKIQShoi3P6rjt',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:34',
  'Jerry McCain',
  'Bad Credit',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5GI7rc8gBrgsM3eYT9SDoi',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:38',
  'Otis Rush',
  'Keep On Loving Me Baby',
  'COBRA 45',
  'classic blues, blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5jL4Ww7ssT7Jtww5WCxemg',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:40',
  'The Holy Wonders',
  'Ive Got A Home',
  'REVELATION 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:43',
  'Delores Johnson',
  'Give Me Your Love',
  'BOBBIN 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:46',
  'Little Danny',
  'Mind On Loving',
  'SHARP 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5TBXPB1ZnkFeoYhNFeN7qN',
  'found',
  90.8,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '20:49',
  'Willie West',
  'Dont Be Ashamed To cry',
  'FRISCO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:03',
  'Rev John Wilkins',
  'Trouble',
  'Trouble',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6Kb4y1Dgh26fo9ubdvMOqh',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:04',
  'HArmonica Fats',
  'My Baby Didnt Come Home',
  'DOT 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/40l50avPw7O9CoLCUfmx5G',
  'found',
  88,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:06',
  'Betty and Jay',
  'Love Is To Blame',
  'DRA 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:10',
  'Earl King',
  'The Things I Used To Do',
  'IMPERIAL 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:13',
  'Gospel SOng Birds',
  'Do You Ever Call Jesus',
  'NASHBORO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:13',
  'Guitar Jr',
  'i Got It Made',
  'GOLDBAND 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:19',
  'Ernie K Doe',
  'Talking Out Of My Head',
  'INSTANT 45',
  'doo-wop, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6zRnvA0GtZHkS1zwelzkXm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:23',
  'Eldridge Holmes',
  'Wait For Me Baby',
  'SANSU 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2BZOPVNcIjQFCdkbYtc9Ci',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:24',
  'Irma Thomas',
  'Good To Me',
  'CHESS 45',
  'classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5DAWBCuEUbhJQgqp424IU9',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:27',
  'Etta JAmes',
  'Baby What You Want Me To DO',
  'ARGO 45',
  'soul, soul blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/53DUNiLcyYOs9OuSAOIU7I',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:29',
  'Morris Pejoe',
  'Maybe Blues',
  'ABCO 45',
  'classic blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/46DZ0qAeCIOkTdTAGfph9z',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:37',
  'Frankie Lee Sims',
  'ii Warned You Baby',
  'ACE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:42',
  'Big Lucky',
  'Stop Arguing Over Me',
  'MOC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1GIjw2yC6ZPx3TtSubyK6X',
  'found',
  80.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:43',
  'Big Mac',
  'Thats The Way You Treat TYour Woman',
  'JEWEL 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:44',
  'Mercy Baby',
  'Pleadin',
  'RIC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2jXdGgTtNXRozthlHr96m2',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:52',
  'Al Green',
  'Tomorrows Dreams',
  'Hi 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '21:59',
  'Willie colon',
  'El Gran Veron',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:06',
  'Robert Glasper/ Masego',
  'All masks',
  NULL,
  'neo soul, jazz rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7BaROUi0CXU9OA641Tf5en',
  'found',
  80.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:11',
  'The Jacksons',
  'This Place Hotel',
  NULL,
  'disco, motown, philly soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2eADspwGh5Ad8tDoJ2bHsR',
  'found',
  83.4,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:16',
  'albert king',
  'born under a bad sign',
  'born under a bad sign',
  'blues, classic blues, blues rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0vDn81gdOuRxjbIwcASuiV',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:23',
  'ATLANTIC STARR',
  'TOUCH A FOUR LEAF CLOVER',
  NULL,
  'quiet storm, classic soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4aVzx5DlmdIhTrE3VTosOs',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:29',
  'Doechi, SZA',
  'girl,get up.',
  NULL,
  'r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2igNvPf7RLTZG688Mx8GtU',
  'found',
  72,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:32',
  'Teena Marie',
  'Portuguese Love',
  NULL,
  'quiet storm, post-disco',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1B0y2BGm6uEoDN0YoIx8yR',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:40',
  'Crystal waters',
  'Gypsy Woman',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2jBQYMPjY0UspZAVyYPRUG',
  'found',
  98,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:44',
  'KAYTRANADA, Dawn Richard',
  'hold on',
  NULL,
  'alternative r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2MlwYYIm8JUNrA5807mdLm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:48',
  'Mint Condition',
  'Breakin My heart(Pretty brown eyes)',
  NULL,
  'quiet storm, new jack swing, r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/18sytW2s53Of6NVudQyUlH',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '22:54',
  'Lisa Lisa & Cult Jam/ Full Force',
  'I wonder If I Take You Home',
  NULL,
  'freestyle, funk melody, new jack swing',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3sRCesHh424gmCji7Fz9Gm',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:00',
  'Ruben Blades , Willie Colon',
  'Pedro Navaja',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:08',
  'Myke Towers, Juhn',
  'Bandido',
  NULL,
  'reggaeton, trap latino, urbano latino',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1xK1Gg9SxG8fy2Ya373oqb',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:12',
  'De la soul, Tribe, Jungle bros, Queen latifah, Monie Love',
  'Buddy(Native Tongue decision)',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:19',
  'New Edition',
  'Can You stand the rain',
  NULL,
  'new jack swing, quiet storm',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1vbe9sh7U9vdMceAhitWr2',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:24',
  'Selena',
  'Dreaming Of You',
  NULL,
  'tejano, cumbia, música mexicana',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5EL8hqM8YQJHKKnzGdahly',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:29',
  'Prince',
  'Adore',
  NULL,
  'funk, funk rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2xsTC3V51PvY38QK4QNWN0',
  'found',
  81.5,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:36',
  'J Dilla, Guilty Simpson, Madlib',
  'Baby',
  NULL,
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0wotldYXx2K5HH0CwhzYrX',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:40',
  'Ludacris',
  '44 Bars',
  NULL,
  'southern hip hop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5wCydgDC070Tym8HpjYr75',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:42',
  'Charli xcx',
  'Chains Of Love',
  NULL,
  'hyperpop, art pop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3obedb2fnHaTE8bPlr9TNK',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:46',
  'Freddie Jackson',
  'You are my lady',
  NULL,
  'quiet storm, classic soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5MPxgVGxq79wcoNKtlRaTf',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:50',
  'Eve/ Jo1',
  'Let Me Blow Your Mind',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:52',
  'Clifford Brown and Max Roach',
  'Daahoud',
  'Clifford Brown and Max Roach',
  'hard bop, bebop, jazz',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2sfcdBm7F0ccANkXBfMK5K',
  'found',
  91.6,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-23',
  '23:57',
  'Funk Monkey',
  'So Swell',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1xlLRCanv5W7vVcGZrwoLe',
  'found',
  100,
  '2026-02-24 07:50:21'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-24';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:01',
  'Frank Ocean',
  'Lost',
  'channel ORANGE',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3GZD6HmiNUhxXYf8Gch723',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:06',
  'MF DOOM',
  'Rapp Snitch Knishes (feat. Mr. Fantastik)',
  'Mm..Food',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:08',
  'Jamila Woods',
  'VRY BLK (feat. Noname)',
  'HEAVN',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2EnEj7XoToBRxQ9PRaCEYp',
  'found',
  83,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:11',
  'Mateo Santiago',
  'Running (feat. BADBADNOTGOOD)',
  'Running (feat. BADBADNOTGOOD)',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:13',
  'Wax Tailor',
  'No Dawn To Wake',
  'No Dawn To Wake - Single',
  'trip hop, plunderphonics, nu jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/59Pw5qegy9AcuXeYmkDuJp',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:16',
  'Dua Saleh',
  'Glow (feat. Bon Iver)',
  'Of Earth & Wires',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3Qy4hBI9YBIt3yNYPMXPn8',
  'found',
  71.3,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:18',
  'Jordan Rakei and Tom McFarland',
  'Easy To Love',
  'Easy To Love - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:21',
  'Marco Benevento',
  'Frizzante',
  'Frizzante - Single',
  'jam band',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3j0sbeYDIjP2QBbrwSQvaO',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:26',
  'Holly Walker and Maribou State',
  'Otherside',
  'Hallucinating Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:29',
  'Elder Island',
  'Bamboo',
  'Seeds in Sand - EP',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1pVfS4D24dzoW6rwR7KFES',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:34',
  'Bonobo',
  'Return To Air',
  'Flashlight - Single',
  'trip hop, downtempo, nu jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6CxfaUiVzPPjxtyDwjiH6q',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:40',
  'Jamie xx',
  'KILL DEM',
  'KILL DEM - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5CE0k1VmTXgCtaa5L288LP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:44',
  'MFK and Toprak Baris',
  'No Lie (feat. Aquarius Heaven)',
  'No Lie - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:49',
  'Fiorious and Joe Goddard',
  'Loverboy (Benjamin Frohlich Remix - Edit)',
  'Loverboy Remixes - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:53',
  'Oscar Farrell',
  'Dream Therapy (ft. Sampha) (George FitzGerald remix)',
  'Dream Therapy (ft. Sampha) (George FitzGerald remix) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:57',
  'Ledbyher',
  'YU (feat. Biig Piig)',
  'The Elephant',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:02',
  'Rhye',
  'Feel Your Weight',
  'Blood',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6bRVkUr1fyZVX4XwQ4RpaR',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:05',
  'Yaya Bey',
  'Blue',
  'Fidelity',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1rUWEVR78iRaXXuSHyz6KP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:08',
  'JID and Jill Scott',
  'To B Honest',
  'To Whom This May Concern',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:12',
  'Arlo Parks',
  'Green Eyes',
  'Collapsed in Sunbeams',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5iwTDcZSrVq71HjMjNno5c',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:15',
  'Baby Rose',
  'Fight Club (feat. Georgia Anne Muldrow)',
  'Through and Through',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:20',
  'Martina Topley-Bird and Trick',
  'Christiansands',
  'Pre-Millennium Tension',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:24',
  'Yves Tumor',
  'Licking An Orchid (feat. James K)',
  'Safe in the Hands of Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:28',
  'Young Fathers',
  'I Heard',
  'TAPE TWO',
  'experimental hip hop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3zgptmNsfqy1JscBOebsYJ',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:32',
  'Handsome Boy Modeling School',
  'I''ve Been Thinking (feat. Cat Power)',
  'White People',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:37',
  'Gorillaz',
  'Tomorrow Comes Today',
  'Gorillaz',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3qdDjz9kOvquEFbvXBYOMQ',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:42',
  'Nightmares on Wax',
  'You Wish',
  'In a Space Outta Sound',
  'trip hop, downtempo, acid jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6G6M4fl2I0eqEQnzyTwR8m',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:46',
  'Charlotte Day Wilson',
  'Patchwork',
  'Patchwork',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3n5EsLJkjOwYVpx2yE7k4Y',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:47',
  'Flea',
  'Thinkin Bout You',
  'Honora',
  'funk rock',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4LiSdLjUXbS4daVzBJCTwH',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:52',
  'Sade',
  'Soldier of Love',
  'Soldier of Love',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0bgsj8kz5zWbQ6njk2Oqoz',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:58',
  'James Blake',
  'I Had a Dream She Took My Hand',
  'Trying Times',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2hUOnJj6B7938kFBcPO6l5',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:06',
  'Alabaster DePlume',
  'Not My Ask',
  'To Cy & Lee',
  'ambient jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/52oFxv3QwuMBydy7MU3oWK',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:06',
  'Rotary Connection',
  'Magical World',
  'Aladdin',
  'classic soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/06NKgkCqNpHZjqVyLdXdaI',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:08',
  'Paul Simon',
  'Can''t Run But',
  'In the Blue Light',
  'singer-songwriter',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5gSwQihHUXvC5H4SBCo03D',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:11',
  'Tom Waits',
  'Alice',
  'Alice',
  'singer-songwriter, southern gothic',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6flhPfJHRcQ1jiXojPen9J',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:17',
  'Brandee Younger',
  'Gadabout Season',
  'Gadabout Season',
  'experimental jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5Z4YeqJLy2Ik0NYr0xlfh7',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:20',
  'Makaya McRaven feat. Brandee Younger',
  'So Ubuji',
  'In These Times',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:24',
  'Marvin Pontiac',
  'Small Car',
  'The Legendary Marvin Pontiac',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2Aj0VVWg10s0tDGrZ5bsKr',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:30',
  'Ignacio Cervantes',
  'La Encantadora',
  NULL,
  'classical piano',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4dziTkjuebdZ1CcHiMIF0k',
  'found',
  76.4,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:36',
  'Dusty Springfield',
  'Just a Little Lovin',
  'Dusty in Memphis',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7zpS4UzyAsNGxWz0AyRP3b',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:36',
  'Illinois Jacquet',
  'Port of Rico',
  NULL,
  'swing music, jazz, hard bop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/25wcxxmSx7jlpkQTgqpojg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:37',
  'Barbara Lewis',
  'Snap Your Fingers',
  'Baby, I''m Yours',
  'northern soul, doo-wop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/486DaeZjbBVsY6VWueOCkH',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:40',
  'Barbara Lewis',
  'How Can I Say Goodbye',
  'Baby, I''m Yours',
  'northern soul, doo-wop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7kZ7C3MWAQcyhwgKQX8fzY',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:41',
  'James Brown',
  'Then You Can Tell Me Goodbye',
  'Say It Loud',
  'funk, soul, motown',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4sE5aSHafBivFI9qk2HQMR',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:45',
  'Mose Allison',
  'Lost Mind',
  'Seventh Son',
  'vocal jazz, jazz, cool jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2v6tdM8IUaLpcTxUeyCmEX',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:49',
  'Barbara Acklin',
  'Am I The Same Girl',
  'Greatest Hits',
  'northern soul, classic soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6NVzt2cA5Mgjd3pQjU1xwD',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:53',
  'Eddie Kendricks',
  'If You Let Me',
  'People....Hold On',
  'motown, classic soul, philly soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2dcssVSC1OiONrbqAyUTqb',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:56',
  'Dick Stusso',
  'In Heaven',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1eb2yiCEEOcsH2bBQ1DCBH',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:59',
  'Natural Lateral',
  'Houdini''s Notes',
  'Tapestry of Life',
  'nu jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6vXJbsAo7uobHsnAYJhw7t',
  'found',
  98,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:05',
  'Jack Wilson',
  'Kinta',
  'The Two Sides of Jack Wilson',
  'hard bop, bebop, soul jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2X5oWhFObT3MrSILpN55lT',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:11',
  'Jeff Parker',
  'Get Dressed',
  'the new breed',
  'experimental jazz, ambient jazz, free jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1yaUlIHswoTErFAyLFZcnq',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:12',
  'Nina Simone',
  'Love Me or Leave Me',
  NULL,
  'vocal jazz, soul jazz, soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2XzHou7MZzOBQBqjWw86Nt',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:16',
  'Anna Laura Quinn',
  'Speak Low',
  'Open the Door',
  'vocal jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7v2MRItaDig7GYH8WDTv9H',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:21',
  'Richard Galliano',
  'Spain',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:29',
  'Turtle Island String Quartet',
  'Sidewinder',
  'Metropolis',
  'classical crossover',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7vaF8XNNmJBmY3fh79zDhD',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:34',
  'Los Miticos Del Ritmo',
  'Don''t Stop til You Get Enough',
  NULL,
  'electrocumbia, chicha, cumbia',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/57xHD2Q6xWgwr60WzB72Uw',
  'found',
  84.4,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:37',
  'DIZZY GILLESPIE',
  'MANTECA',
  'MANTECA',
  'bebop, jazz, afro-cuban jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2nH9vhGDkvhsx1BS6d7uec',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:40',
  'Skatalites',
  'Ska-ra-van',
  NULL,
  'ska, rocksteady, reggae',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0KvxZUhJlg0kWGydUzZd7A',
  'found',
  75,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:40',
  'Skatalites',
  'smiling',
  NULL,
  'ska, rocksteady, reggae',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0Qk6jJVBibpstT0BhsRB57',
  'found',
  75,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:45',
  'Bill Landford & The Landfordaires',
  'Run On for a Long Time',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7Abd9YZHgmzHwoMBeNnRmI',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:47',
  'Ze Roberto',
  'Lotus 72 D',
  NULL,
  'bossa nova, brazilian jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/25JrVa0pOZhb4WvuCK1JVk',
  'found',
  72,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:50',
  'Dope Lemon',
  'Home Soon',
  'Hounds Tooth',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7C5Ria90yxc4a0REG1D23U',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:53',
  'Dizzie Gillespie',
  'Unicorn',
  'Free Ride',
  'bebop, jazz, afro-cuban jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2nuD3zk0lrBx1pfJ78jdA1',
  'found',
  70.2,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:03',
  'Khan Jamal',
  'The Known Unknown',
  'Infinity',
  'free jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1Pw1wGb42T6VqRsepROdZP',
  'found',
  98,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:12',
  'Abbey Lincoln',
  'come sunday',
  'Abbey Is Blue',
  'vocal jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3ZTY98dv9uq9oBcX3a4NEB',
  'found',
  88.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:16',
  'Abbey Lincoln',
  'Softly as in a Morning Sunrise',
  'Abbey Is Blue',
  'vocal jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3u4pnjX6xrI1cGlYnxnW1Z',
  'found',
  95.3,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:19',
  'Swan Silvertones',
  'Milky White Way',
  'Amen',
  'traditional gospel, gospel',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3Qcm6p5dARXivwF00iaSZb',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:22',
  'TPOK Jazz',
  'Osili Obebi',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:25',
  'T-Bone Walker',
  'T Bone Shuffle',
  NULL,
  'blues, classic blues',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6bl7UHHcx1OY9tbvvnSssc',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:32',
  'Mighty Blue Kings',
  'Cadillac Boogie',
  'Meet Me Uptown',
  'swing music, boogie-woogie',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5jsuPRZB571DTuXxOkvegv',
  'found',
  89.5,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:35',
  'Gene Chandler',
  'Turn On Your Lovelight',
  NULL,
  'doo-wop, northern soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2JuNUF9aRgKPdWy1VqC2cv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:38',
  'Allen Toussaint',
  'We Are the People',
  NULL,
  'cajun',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2X6Iu5fHHo0qTwJcSZuTiW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:50',
  'Brother Jack McDuff',
  'Can''t Get Satisfied',
  'Tobacco Road',
  'soul jazz, jazz funk, hard bop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4puePsM4A8DRcdCc3RA0ZU',
  'found',
  78.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:54',
  'Young Holt Unlimited',
  'Medley In Crowd, Wade in the Water, Ain''t Nothing Money',
  'On Stage',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:56',
  'Curtis Mayfield',
  'We Got To Have Peace',
  'Roots',
  'classic soul, soul, motown',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1Hqtsr4UAaj495dQxFqdk8',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:08',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:12',
  'Catherine Russell',
  'Aged and Mellow',
  'Bring It Back',
  'vocal jazz, swing music, jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/02cCntRCrtgojL45e9oNnu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:22',
  'Tuba Skinny',
  'Cold Morning Shout',
  'Pyramid Strut',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:26',
  'George Finola',
  'Milenberg Joy',
  'New Orleans After Hours',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:31',
  'Peter Bocage',
  'Mama`s Gone, Goodbye',
  'Peter Bocage With The Creole Ser',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1bh5eiyVvajqpRiqmrYz1N',
  'found',
  90.6,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:40',
  'Baby Dodds Trio',
  'Wolverine Blues',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2lUXRj3pLfvOdKwFOxjYRw',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:46',
  'Seva Venet',
  'I Wanna Dance',
  'The Storyville Stringband Of New',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/4LUKl2xgEOiEfFhL5HpgEg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:49',
  'Louis Armstrong',
  'Honeysuckle Rose',
  'Essential Louis Armstrong 2',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0amJunMZCmdKl30JouAkTd',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:56',
  'Maxine Sullivan, Bob Haggart',
  'Get Out and Get Under the Moon',
  'Enjoy Yourself',
  'vocal jazz, swing music, jazz ballads',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1qTO0HFCBhJEpjkEUxCKOs',
  'found',
  74,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:59',
  'Sidney Bechet',
  'Honeysuckle Rose',
  'Jazz At Storyville',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1Y25339aU2Ae89NOclcS6p',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:06',
  'Preservation Hall Jazz Band',
  'Tootie Ma Is A Big Fine Thing',
  'The 50th Anniversary Collection',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/67NIuRLoNNukVtK98YeyUu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:11',
  'Louis Armstrong',
  'I Can`t Give You Anything But Lo',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7trsX0rP1cLi1RaE1S9LFI',
  'found',
  93.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:15',
  'Bobby Henderson',
  'Blue Turning Grey Over You',
  'A Handful Of Keys',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:19',
  'Topsy Chapman And Magnolia Jazz',
  'Please, Don`t Talk About Me When',
  'Fine And Mellow',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:25',
  'Shotgun Jazz Band',
  'Raining in My Heart',
  'Don''t Give Up the Ship',
  'swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0ZmzIMFoosLFSKM5mza3fJ',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:35',
  'Fats Waller',
  'The Joint Is Jumping',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:36',
  'Fats Waller',
  'THE JITTERBUG WALTZ',
  NULL,
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3IeebgUYCGyhFra2EzUD29',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:40',
  'Fats Waller',
  'Sweet and Slow',
  NULL,
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6ltHNDLRmJKiFPcdv8lNMy',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:44',
  'Danny Barker & New Orleans Rhyth',
  'Bill Bailey Won`t You Please Com',
  'American Griot',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:49',
  'Kermit Ruffins And The Barbecue',
  'I Can`t Give You Anything But Lo',
  '#Imsoneworleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:56',
  'Doyle Cooper Jazz Band',
  'Mahogany Hall Stomp',
  'Yeah You Right',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:05',
  'govt majik',
  'the bass age',
  'bass age',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:09',
  'papa grows funk',
  'i got the blues over you',
  'live at the leaf',
  'funk, funk rock, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1phw4wnW0bLH7BPgllnzkR',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:25',
  'neville brothers',
  'rosa parks',
  'live on planet earth',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:25',
  'rebirth brass band',
  'the law',
  NULL,
  'brass band, zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6lx7tlUggJV4sbDSToYpIU',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:26',
  'dumpstaphunk',
  'justice 2020',
  'where do we go from here',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:30',
  'gravity A',
  'simple man',
  'new beginnings',
  'jam band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4kOt9ogF44F7UNeqIPEtsJ',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:47',
  'dr john',
  'hello god',
  'parlophone years',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4yQ0ivXPldRtlm5p9lsYz2',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:47',
  'sam and the soul machine',
  'gun',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0FxotNOM4kR4HnAJHT72G9',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:51',
  'Fats Domino',
  'I Hear You Knocking',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/13EV66QJMXIHSJS5SHZjRB',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:53',
  'art neville',
  'please don''t leave me',
  'fats domino tribute',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:56',
  'ROBBIE ROBERTSON',
  'GOING TO THE RIVER',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:07',
  'Earl King',
  'Some People',
  'Street Parade, featuring The Meters',
  'classic blues, new orleans bounce, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0DJHEeWHLIExBUqOOz2Gh1',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:08',
  'galactic with Irma Thomas',
  'love''s gonna find a way again',
  'AUDIENCE WITH THE QUEEN',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:11',
  'IRMA THOMAS',
  'TWO WINTERS LONG',
  'STRAIGHT FROM THE SOUL',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6IB3gmytuTAjA1wJWeGXJv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:17',
  'Isaac Eady',
  'Love And Gratitude',
  'Amponsah',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5xcACqvLHi6DXJtxTZreZg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:21',
  'Colin Davis and the Night People',
  'Pathways',
  'Pathways',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:29',
  'quickening',
  'see ya at da pawty',
  'begin again',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4ADkMTDRADi0VPgiFbEdkU',
  'found',
  74.1,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:32',
  'percy J',
  'that feeling',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4t9V6UsTrQwtLJzxynPXHu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:53',
  'henry butler',
  'riders on the storm',
  'the game has just begun',
  'cajun, zydeco, blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4WyMwOsoBzVLPGhvm4sKiv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:58',
  'Art Neville',
  'Cha Dookie Doo',
  'SPECIALTY 45',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:07',
  'Funk Monkey',
  'So Swell',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1xlLRCanv5W7vVcGZrwoLe',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:12',
  'Bonerama',
  'Ohio',
  'so much love',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:18',
  'JOHN',
  'Hurricane',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:31',
  'corey henry',
  'muddy waters',
  'lapeitah',
  'brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7FmNlTPZG8cm4asEql9tEF',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:52',
  'Walter Wolfman Washinton',
  'Blue Moon Risin''',
  'Blue Moon Risin''',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:59',
  'lee dorsey',
  'holy cow',
  NULL,
  'northern soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/58smfvnOg9Wn7koHxsvJ8V',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:07',
  'SLIM',
  'IN THE MIX',
  NULL,
  'go-go',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1Na3VFYU3erIgl3JhpFiwO',
  'found',
  87.5,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:14',
  'AFRIKA BAMBAATAA',
  'SAY IT LOUD',
  'DECADES OF DARKNESS',
  'miami bass, old school hip hop, funk melody',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/5F7JjaY7hlVqkqwBiVXSKW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:19',
  'World Saxophone Quartet',
  'Bluocracy Part 1',
  'Political Blues',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:25',
  'Rahsaan Roland Kirk',
  'Blacknuss',
  'Does Your House Have Lions- The',
  'free jazz, hard bop, jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2Jrxzhhn8bisav40zymdVL',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:31',
  'JAMES BALDWIN',
  'INVENTORY/ON BEING 52',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:39',
  'WILLIAM PARKER QUARTET',
  'O''NEAL''S PORCH',
  'O''NEAL''S PORCH',
  'free jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1mz8cZjPGjkwLj4EazgKK3',
  'found',
  90.7,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:55',
  'JAMES CARTER',
  'NUAGES (CLOUDS)',
  'CHASIN'' THE GYPSY',
  'jazz, hard bop, jazz ballads',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2BMIOcIFmfp5YHvNTDnhah',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:56',
  'SONNY AND LINDA SHARROCK',
  'BLACK WOMAN',
  'BLACK WOMAN',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:08',
  'SONNY AND LINDA SHARROCK',
  'APOLLO',
  'PARADISE',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:08',
  'SONNY AND LINDA SHARROCK',
  'PEACEFUL',
  'PARADISE',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:13',
  'SHIRLEY BASSEY',
  'LIGHT MY FIRE',
  NULL,
  'easy listening',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/3gBL7kYrPRLw12Mgon4vpW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:18',
  'FAIROUZ',
  'BI LAYL WE CHITI',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:20',
  'FAIRUZ',
  'ZAHRAT AL JANOUB',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1aY6HxEK0Kkhc0b5Jcnfwf',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:29',
  'TOM ZE',
  'VOICE INVENTE',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:30',
  'TOM ZE',
  'UI (VOCE INVENTA)',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:32',
  'TOM ZE',
  'UM E UM',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:34',
  'TOM ZE',
  'MENINA AMANHA DE MAMHA',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:37',
  'JORGE BEN',
  'POR CAUSA DE VOCE, MENINA',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/0ygiNW94gn3qPhYrijUiC2',
  'found',
  90.7,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:44',
  'HOLLY COLE',
  'ONION GIRL',
  NULL,
  'vocal jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2eED5bs5upyzSbzHZFBTM1',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:44',
  'JORGE BEN',
  'MEDLEY',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:54',
  'Susannah McCorkle',
  'The Waters of March',
  'Concord Jazz Sampler Vol.2',
  'vocal jazz, jazz, bossa nova',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2HDdFE3LzgZ2ZWVXS0jEQF',
  'found',
  100,
  '2026-02-25 08:05:34'
);