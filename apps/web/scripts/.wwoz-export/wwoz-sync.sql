-- WWOZ Database Export
-- Generated: 2026-03-11T09:30:07.980Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-11 06:57:18
-- Days: 3
-- Tracks: 384

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-08',
  'https://open.spotify.com/playlist/1j2FAj1xokfNZNVKGfA0OI',
  '{"totalTracks":96,"successfullyFound":59,"notFound":37,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-09 06:16:24',
  '2026-03-11 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-09',
  'https://open.spotify.com/playlist/2S4VGaACfUfGYUQutJPDCa',
  '{"totalTracks":183,"successfullyFound":128,"notFound":55,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-09 06:16:24',
  '2026-03-11 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-10',
  'https://open.spotify.com/playlist/5YNZA10L7jbNr5taOez22k',
  '{"totalTracks":82,"successfullyFound":57,"notFound":25,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-10 09:30:09',
  '2026-03-11 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:55',
  'Monica Zetterlund',
  'I Love New York (Take Five)',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '00:58',
  'Tony Bennett',
  'Are You Having Any Fun',
  NULL,
  'vocal jazz, christmas, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7J15xzJsmb6ikExnnMO7MP',
  'found',
  71.5,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:00',
  'James Evans Trio',
  'Shooting Star',
  'The Divine Array of Possibilities',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:07',
  'Marco Benevento, Bobby Previte, Mike Dillon, Joe Russo',
  'Gimme Some Lovin''',
  'Live at Tonic',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:13',
  'Tony Dagradi w/Stanton Moore',
  'Shooting Star',
  'Down Time',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:18',
  'Wayne Alpern',
  'She''s Not There',
  'Standard Deviation',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6KxHlJPq3pZkFsEz0dMFlM',
  'found',
  98,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:26',
  'Miles Davis',
  'Ali (Take 3)',
  'The Complete Jack Johnson Sessions',
  'jazz, cool jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0d4QW5QcYqEKJinWypB5O6',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:37',
  'Bill Bruford w/AllanHoldsworth & Jeff Berlin',
  'Joe Frazier',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:38',
  'Malachi Thompson',
  'The Ali Shuffle',
  'Timeline',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3gPFrcVE8NX1m7BHEKe86l',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:45',
  'Orions Belte',
  'Joe Frazier',
  NULL,
  'neo-psychedelic, psychedelic rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3IKFx0cgHXVduOLANq3wtz',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:50',
  'Muhammad Ali',
  'Ali''s Dream',
  NULL,
  'ghazal, qawwali, sufi',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2tUyHWNMVpJ6IA7GpyYhnB',
  'found',
  90.8,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:54',
  'Michael Sloan',
  'Fight of the Century',
  NULL,
  'traditional music',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2QZWoTMbDiVmH4WTfjTAOo',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '01:56',
  'Jimmy Smith',
  'The Fight',
  NULL,
  'hard bop, soul jazz, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7kNPbbdlCN7ayQqro4vmGT',
  'found',
  85.7,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:02',
  'Friends & Neighbors',
  'Jaguar',
  'What''s Wrong?',
  'free jazz, budots',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6IELvbPIPHLZy7GOG81rZ7',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:07',
  'Thunderclap Newman & Mick O''Toole',
  'Something in the Air',
  'Live at the Queens Head',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1wPylf4r3s0AptIJs9cgqP',
  'found',
  71.6,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:11',
  'Sabrina Malheiros',
  'New Morning',
  NULL,
  'brazilian jazz, bossa nova, latin jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3HxrvcZqWYiCjym2hFesje',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:17',
  'Kate Hamann',
  'Songs We Used to Sing',
  'Momentary Beauty',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/54m5wWh1CEqsBxYyjhCvP5',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:19',
  'Doug Hammond',
  'Spaces and Things (Lopin''/Meno Mosso)',
  NULL,
  'free jazz, soul jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5zeQnvGgLAC12eWigmaWFU',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:25',
  'Ingrid Lucia & the Flying Neutrinos',
  'New Orleans',
  'Don''t Stop',
  'swing music, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3OQZ1Mms8GYAqD2vdWdplk',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:28',
  'King Pleasure',
  'Tomorrow Is Another Day',
  'Golden Days',
  'vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0UUSh4F2ATtHYKYEfpD6Il',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:33',
  'Gabriel Espinosa',
  'Adoro',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0yJaya4HLgtheqw3vPmbA1',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:37',
  'Roy Haynes',
  'Cymbalism',
  'Just Us',
  'bebop, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0NPgZXP10mZg7HctZ1PB3D',
  'found',
  74.2,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:45',
  'Louis Jordan',
  'You Run Your Mouth and I''ll Run My Business',
  NULL,
  'swing music, classic blues, boogie-woogie',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6fymSsJTryaXdTJz316OXs',
  'found',
  97.2,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:48',
  'James Booker',
  'Something Stupid',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3Aciz02ipXPbSuq5McI8l3',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:50',
  'Bobby Previte and The New Bump',
  'Set the Alarm for Monday',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '02:55',
  'Taj Mahal',
  'Cakewalk Into Town',
  'Like Never Before',
  'blues, classic blues, country blues',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0UzLWwxmh27AzrYm3NsKXA',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
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
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '06:05',
  'Rupa',
  'East West Shuffle',
  'Disco Jazz',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6fHoh7hLbVNdeRebfOIbyh',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '06:08',
  'Idris Muhammed',
  'Could Heaven Ever Be Like This',
  'Turn This Mutha Out',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '06:17',
  'Charles Bradley',
  'I''ll Slip Away',
  'Single',
  'soul, retro soul, funk',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3th2F4tCtQT8LaLEYMUOdj',
  'found',
  70.9,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '06:30',
  'Dr. John',
  'Mama Roux',
  NULL,
  'cajun, zydeco',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1RMa7sVQua8dMiqixX2bYM',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '06:33',
  'Isaac Hayes',
  'Hung up on my baby',
  NULL,
  'soul, classic soul, funk',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7wEGeUzpPNnHKfOtSgYjG4',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '06:48',
  'Marcos Valle',
  'Estrelar',
  NULL,
  'bossa nova, brazilian jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2koS4fD3kzizdnzWzyrxyT',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '06:54',
  'Bobby Charles',
  'Small Town Talk',
  'Bobby Charles',
  'cajun, zydeco',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4QVdu4NSri0nezLXOGJsHF',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '07:10',
  'Idris Muhammad',
  'Express Yourself',
  'Black Rhythm Revolution!',
  'jazz funk, soul jazz',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1M3idZnb5BpVhSlLxigjSd',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '07:16',
  'Shuggie Otis',
  'Inspiration Information',
  'Inspiration Information',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3q8AgabNzK1mPJdI8egIcn',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '07:28',
  'The Ink Spots',
  'We Three (My Echo, My Shadow and Me)',
  'The Anthology',
  'adult standards',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/43a4zqUZL1vHH93EKBFkLj',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '07:31',
  'The Gap Band',
  'Outstanding',
  NULL,
  'funk, quiet storm',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/2yd0XI7g0BhAgY9GkpPClU',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '07:46',
  'Herb Alpert''s Tijuana Brass',
  'Love Potion No.9',
  'Whipped Cream and Other Delights',
  'adult standards, easy listening',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/3LZyfMYRFfpv8F4RlCAIq7',
  'found',
  86,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '07:48',
  'Masayoshi Takanaka',
  'BREEZIN''',
  'On Guitar',
  'jazz fusion, city pop, jazz funk',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/7hgTD3nmWLbF58Rsugc27d',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '08:03',
  'Lonnie Liston Smith and the Cosmic Echoes',
  'Cosmic Funk',
  'Cosmic Funk',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '08:08',
  'Quintron, Miss Pussycat',
  'Ring The Alarm',
  'Sucre Du Sauvage',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '08:20',
  'Irma Thomas',
  'Time Is On My Side',
  'Wish Someone Would Care',
  'classic soul',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/6IpxLzChgCbFSJwso2Q84D',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '08:24',
  'Maddy Kirgo',
  'Try Harder',
  'Shadow On My Light',
  '',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/1K1KYwt4P3FwtkNAGjxiPF',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '08:34',
  'Keith Frank',
  'Casanova',
  'Loved.Feared.Respected',
  '',
  'The Morning Set',
  'Stuart Hall',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '08:39',
  'Gwen McCrae',
  'Keep The Fire Burning',
  'On My Way',
  'post-disco, disco, funk',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/4rS4K30qVDExdjeU4feF4c',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '08:52',
  'Aaron Neville',
  'Hercules',
  'Ultimate Collection',
  'classic soul',
  'The Morning Set',
  'Stuart Hall',
  'https://open.spotify.com/track/0wRejfFXjZa1TGeJ7kDPCT',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '09:14',
  'Louis Armstrong',
  'pretty Little Missy',
  NULL,
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/6QP1xJ31W8vuS4VHogWlNC',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '09:30',
  'sydney bechet',
  'limhouse blues',
  NULL,
  '',
  'Traditional Jazz',
  'Dan Meyer',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '10:01',
  'louis prima',
  'Pennies From Heaven',
  NULL,
  'swing music, big band',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/4YFczV2yFMNhIuRFiGVdtZ',
  'found',
  91.4,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '10:01',
  'olympia brass band',
  'down by the riverside',
  NULL,
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/6Erhozn8ac6VwaV9HHZ4Zn',
  'found',
  80.8,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '10:20',
  'louis armstrong',
  'buckets got a hole in it',
  NULL,
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/5FjkMv0yP4Ob2UpgxyHK5G',
  'found',
  84.6,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '10:23',
  'pete fountain',
  'south rampart street parade',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/06X3ReMX2uSCs9iXrSVbvX',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '10:37',
  'olympia brass band',
  'I Got A woman',
  NULL,
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Dan Meyer',
  'https://open.spotify.com/track/35B18HHY3D3htIYgWC5Zdj',
  'found',
  79.2,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '10:54',
  'Dave BArtholomew',
  'high society blues',
  NULL,
  '',
  'Traditional Jazz',
  'Dan Meyer',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '10:58',
  'all that',
  'wolfs remedy',
  NULL,
  '',
  'Traditional Jazz',
  'Dan Meyer',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '11:15',
  'Dr. John',
  'Sweet Home New Orleans',
  'The Best Of The Parlophone Years',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6qFUn74CAPq9P9syPi3M5v',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '11:20',
  'Free Agents Brass Band',
  'We Made It Through That Water',
  'Treme- Music From The HBO Origin',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5ogb0lHotOjwE1LhA8WpYJ',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '11:32',
  'Dirty Dozen Brass Band',
  'Ain`t Nothin` But A Party',
  'Medicated Magic',
  'brass band, jam band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/25mkHWcpdViKPnOph1ic69',
  'found',
  90.3,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '11:38',
  'Lee Dorsey',
  'Love Lots Of Lovin` (With Betty',
  'Ride Your Pony',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '11:47',
  'Funk Monkey',
  'Break in The Road',
  'Pre-Roll',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/7jYKCBjzTH48S5LrDLltr5',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '11:51',
  'Jon Batiste',
  'Freedom',
  'We Are (Deluxe)',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2QOB5UiRKggr2j9uMD3GYK',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:03',
  'Sally Baby''s Silver Dollars',
  'Down in New Orleans',
  'Sally Baby''s Silver Dollars',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:06',
  'Leroy Jones',
  'Parlor For The Crawlers',
  'Back To My Roots',
  'brass band, ragtime',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0FYuW8LE7kY6wzqwWvQJp4',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:19',
  'Corey Henry',
  'If 6 Was 9',
  'Lapeitah',
  'brass band, funk rock',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1uRUpA6DvTD6Ns6A6cCIQJ',
  'found',
  81.1,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:23',
  'Billy Iuso',
  'What''s Gonna Set You Free',
  '52Hz',
  'cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5QFX9uMMw75LjfJyD7LtOZ',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:37',
  'Cyril Neville',
  'Shake Your Gumbo',
  'Brand New Blues',
  'jazz funk',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6ZRBnzxsgqpbbXg2TnbSDz',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:46',
  'Tonya-boyd Cannon',
  'In New Orleans',
  'In New Orleans',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/04wQwiPNeHrSosZfSuhtI5',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:54',
  'Soul Rebels',
  'Down for My City',
  'Poetry in Motion',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '12:58',
  'Art Neville',
  'Cha Dooky-Doo',
  'His Specialty Recordings',
  'blues',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6KqLvOllfbozKTDb9IH4nf',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:11',
  'Neville Brothers',
  'Fire And Brimstone',
  'Yellow Moon',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4boyWEMjsHg51QHgEVtjqm',
  'found',
  86,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:15',
  'Papa Grows Funk',
  'Make It Right Now',
  'Needle In The Groove',
  'funk, funk rock, jazz funk',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0ogGgF6uTo2Y0Kq7vXj9RI',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:28',
  'Earl King',
  'Mama & Papa',
  'Street Parade',
  'classic blues, new orleans bounce, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/61rD694oEG3cRMtwSZ8i0Y',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:31',
  'Shamarr Allen',
  'Dance With Me',
  'SINGLE',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4Gv57iJK8tmMkDbbeyIMEa',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:35',
  'Trombone Shorty & The New Breed',
  '6th Ward',
  'Second Line Sunday',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:46',
  'Ndea Davenport',
  'Getaway',
  'Getaway',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:49',
  'Bonerama',
  'My Girls Oh So Fine',
  'So Much Love',
  'brass band, cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4KSH4IsLR18UdKbcKGuBNu',
  'found',
  88,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '13:58',
  'Kelly Love Jones And Deezle',
  'Surrender(Til The End Of Time)',
  'Surrender',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:07',
  'j geils band',
  'whammer jammer',
  'full house',
  'classic rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6ED55VLiJwnaWEuo45f6MF',
  'found',
  86.7,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:08',
  'John Lee Hooker',
  'I Need Some Money',
  'RIVERSIDE 45',
  'blues, classic blues, blues rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6vKjJqK3XRQsRn91dsUWAY',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:09',
  'SLIM HARPO',
  'GOT LOVE IF YOU WANT IT',
  'best of slim harpo',
  'classic blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4QP6fT7KwPmocWYMrRGG35',
  'found',
  96,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:12',
  'LLOYD PRICE',
  'WHERE YOU AT?',
  'LAWDY!',
  'doo-wop',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/08XD1mCtrCaN2S2a4SlciD',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:19',
  'Calactic & Irma Thomas',
  'Where I Belong',
  'Where I Belong',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:22',
  'LAURA LEE',
  'WOMAN''S LOVE RIGHTS',
  'WOMAN''S LOVE RIGHTS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:27',
  'HOWLIN WOLF',
  'STAY HERE TIL MY BABY COMES BALK',
  'RARE WOLF',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:37',
  'JIMMY WALKER',
  'SOUTH SIDE IMPRESSIONS',
  'SMALL TOWN BABY',
  'rockabilly, boogie-woogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2qzR93rwgAceUUYCVzNZEj',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:38',
  'FURRY LEWIS',
  'TURN YOUR MONEY GREEN',
  'MEMPHIS BLUES',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7oaKh85mAIN6sgeLB03FP3',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:42',
  'L.C. WILLIAMS',
  'YOU CAN TAKE IT WITH YOU BABY',
  'TEXAS BLUES',
  'classic blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0KfN1jeBU16kz9oYKDUZgs',
  'found',
  94.4,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:45',
  'OTIS REDDING',
  'I Can''t Turn You Loose',
  'IN PERSON AT THE WHISKEY A GO-GO',
  'motown, soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2iaWwsOKvHhi9j3H7Qdizm',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:50',
  'elmore james',
  'hawaiian boogie',
  'classic early recordings',
  'blues, classic blues, blues rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3CogIcNNu1RwcVvSAszsSE',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:53',
  'RED DEVILS',
  'GOIN'' TO THE CHURCH',
  'KING KING',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '14:57',
  'Little Walter',
  'Mellow Down Easy',
  'Blues with a Feeling',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2ZEzJC5b9H6BrDfavP3Sr9',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:12',
  'LOS LOBOS',
  'SHAKIN'' SHAKIN'' SHAKES',
  'BY THE LIGHT OF THE MOON',
  'roots rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0sFHYyAlJL0KffCEobuftY',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:13',
  'GARRY BURNSIDE',
  'BAD LUCK CITY',
  'IT''S MY TIME NOW',
  'modern blues, country blues, footwork',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3sAylmVrKGZ3RNa0NJHKyy',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:16',
  'Elmore James',
  'Cry For Me Baby',
  'KING OF THE SLIDE GUITAR',
  'blues, classic blues, blues rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6FFgsh7OcF7iLWBunCDiXu',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:18',
  'DUSTY BROWN',
  'RUSTY DUSTY',
  'HAND ME DOWN BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:25',
  'Eldridge Holmes',
  'The Book',
  'DEESU 45',
  'northern soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2bpUbPNDVNdrm9oHOkeU9D',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:29',
  'BIG BOY MYLES',
  'JUST TO HOLD YOUR HAND',
  'THE SPECIALTY STORY',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:29',
  'BOOGIE JAKE',
  'LOADED DOWN',
  'MR. JOE''S JAMBALAYA',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:40',
  'little freddie king',
  'tough frog to swallow',
  'YOU MAKE MY NIGHT',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6UFFAZohSJh8Ayt1BXboer',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:43',
  'JR KIMBROUGH',
  'Nobody But You',
  'MEET ME IN THE CITY',
  'blues, country blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/19JoVCP0cFtqhWymoLLsgx',
  'found',
  70.5,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '15:53',
  'RL BURNSIDE',
  'SHAKE EM ON DOWN',
  'BURNSIDE ON BURNSIDE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
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
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '16:06',
  'John Coltrane',
  'Blue Train (Alternate Take)',
  'Blue Train',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/6MDu4rxAE3aBxtiZdlTYeB',
  'found',
  98,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '16:25',
  'DAVE BODE',
  'HAPPY PEOPLE',
  'GOOD HANG',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '16:41',
  'ROBERT GLASPER EXPERIMENT',
  'AH YEAH',
  'BLACK RADIO',
  'neo soul, r&b, quiet storm',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4n7RpVem2Zeg2Mziae4ePn',
  'found',
  71.5,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '16:46',
  'Delfeayo Marsalis & The Uptown Jazz Orchestra',
  'SIDEWALK SIZZLE',
  'CRESCENT CITY BLUES',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '17:00',
  'Joe Farnsworth',
  'PRIME TIME',
  'The Big Room',
  'jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5DWFWAtKcbj67ZtxgC5JiA',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '17:12',
  'CHARLIE APICELLA & IRON CITY',
  'OYE COMO VA',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2ntcjDeUxMcgbaVxClvhpp',
  'found',
  90.6,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '17:25',
  'BETTY SHIRLEY',
  'SUGAR IN MY BOWL',
  'SUMAYY',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '17:41',
  'DEVON LAMARR ORGAN TRIO',
  'AL GREENERY',
  'CLOSE BUT NO CIGAR',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '17:45',
  'Delvon Lamarr Organ Trio',
  'Raymond Brings the Greens',
  'CLOSE BUT NO CIGAR',
  'jazz funk, funk',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4sz0bpjd8MsvGJl4ebUFXq',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '17:54',
  'GENE AMMONS QUINTET & ALL-STAR GROUP',
  'BLUE GREENS ''N'' BEANS',
  'THREE CLASSIC ALBUMS PLUS - CD TWO',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '18:06',
  'GENE HARRIS',
  'THINGS AIN''T WHAT THEY USED TO BE',
  'GENE HARRIS SUPER BAND (DISC 1) LIVE AT TOWN HALL NYC 1989',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '18:07',
  'KAMASI WASHINGTON',
  'SHOW US THE WAY',
  'HEAVEN AND EARTH (DISC 2)',
  'jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/163UL3FUpcwpgxKsYAWxqS',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '18:21',
  'MAX ROACH',
  'LANDS END',
  'THE COMPLETE MAX ROACH 1953-1958 (DISC 2)',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7HoEMWpEOPqweeVuAJoeHC',
  'found',
  70.6,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '18:32',
  'AVERY SHARP',
  'THE GOOD SAMARITAN',
  'I AM MY NEIGHBOR''S KEEPER',
  'hard bop, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/26TKqlSpeSgLreXdmS1Nhy',
  'found',
  72,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '18:45',
  'TOPSY CHAPMAN & SOLID HARMONY',
  'FEVER',
  '3 IN 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '18:58',
  'JAZZMEIA HORN',
  'NO MORE',
  'LOVE & LIBERATION',
  'vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/1Q3beHCWkwiSvM3vUuBl6L',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:05',
  'Earl King',
  'Mama and Papa',
  'LISTENING POST 45',
  'classic blues, new orleans bounce, cajun',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/50087oSVYAWpwqCZhBqYMi',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:08',
  'Tony Fox',
  'Ive Been Searching',
  'Tri-Spin 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:10',
  'JJ Malone',
  'Its a Shame',
  'GALAXY 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:19',
  'Lonesome SUndown',
  'Im A Mojo Man',
  'EXCELLO 45',
  'classic blues, blues, cajun',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3Cd4UrTr2H4pYIBLngY6Ba',
  'found',
  86,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:22',
  'Mighty Golden Bells',
  'Sometimes',
  'LEWIS 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:24',
  'Bobby Powell',
  'They Dont Know',
  'WHIT 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2hxbutGCMie4AdMtJAowcq',
  'found',
  83.2,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:27',
  'JJ BArnes',
  'Chains Of Love',
  'GROOVESVILLE 45',
  'northern soul, motown, soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2NqGrQKJJVlf0Kma8mGYwB',
  'found',
  72,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:36',
  'Howlin Wolf',
  'My Life',
  'CHESS 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/37Fl9OjgYmt8G6nuH9nhJc',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:39',
  'Little Johnny TAylor',
  'Sometimey Woman',
  'GALAXY 45',
  'soul blues, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/14SkFd5gCblYNW9oy9GhQe',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:41',
  'Mary Jane Hooper',
  'Ive Got Reasons',
  'POWER PAC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7Gmb33nmkxVETieoPSiukO',
  'found',
  83.2,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:44',
  'Rueben Bell',
  'Leave My Kitten Alone',
  'DELUXE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:59',
  'DK Harrell',
  'A Little TAste',
  'TALKIN HEAVY',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '19:59',
  'Smiley Lewis',
  'Down the Road',
  'IMPERIAL 45',
  'boogie-woogie, doo-wop, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5fuxlB0kQTjzJGp4U1WXMb',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:00',
  'Sunnyland Slim',
  'Shake It baby',
  'AIRWAY 45',
  'blues, classic blues, boogie-woogie',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3BLr9g9a3eDys3TqqSk7RD',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:04',
  'Syl Johnson',
  'We Do It Together',
  'TWINIGHT 45',
  'soul, northern soul, soul blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5DImrtDXcvgV0au4cV7jaO',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:16',
  'Sister Ropsetta Tharpe',
  'Thats All',
  'VERVE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:18',
  'Mercy Dee',
  'Romp and Stomp Blues',
  'FLAIR 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:21',
  'Brownie McGhee',
  'Anna Mae',
  'SAVOY 45',
  'blues, country blues, classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1bDF6wOtDsNLvbTVa84QGZ',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:23',
  'Young Jessie',
  'Hit Git and SPlit',
  'MODERN 45',
  'rockabilly, boogie-woogie, doo-wop',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0jAIqlpPlAJPzWfkLFG8eq',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:37',
  'Lee BAtes',
  'International Playboy',
  'INSTANT 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0VHwKEMrNKmCL9EnuDmPn1',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:40',
  'Mighty Joe Young',
  'LAdies Man',
  'CELTEX 45',
  'blues, classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/3HwvseXmrvCEy2O5uXyLzO',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:42',
  'Rev Charlie JAckson',
  'WRaped Up In Jesus',
  'JACKSON 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '20:47',
  'Jessie MAe hemphill',
  'Streamline train',
  'FEELIN GOOD',
  'country blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6btdKf3vII1SkADhY6XgS3',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:02',
  'Elizabeth King',
  'I Got A Love',
  'I Got A Love',
  'soul blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0CZ7zBRZUQmgUhuJBSlBMd',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:08',
  'AC Reed',
  'Boogaloo Tramp',
  'NIKE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:11',
  'Piney Brown',
  'Everything But You',
  'DEEP GROOVE 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:20',
  'Otis Rush',
  'Keep On Loving Me baby',
  'COBRA 45',
  'classic blues, blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0oTNn9AHFRa7dSgFuvHRv1',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:23',
  'Howard Tate',
  'Stop',
  'VERVE 45',
  'classic soul, soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/76gntP6fUkwUokmxWcASok',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:26',
  'Bo Diddley',
  'Pretty Thing',
  'CHECKER 45',
  'blues, classic blues, rock and roll',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2rW9GxH8MrqLNVAWyUhF6h',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:29',
  'James brown',
  'Think',
  'FEDERAL 45',
  'funk, soul, motown',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6zPLD2eBwO1otREZESL0Iq',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:37',
  'Little Walter',
  'I Got zTo Find my baby',
  'CHECKER 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:40',
  'BB King',
  'Jump With You Baby',
  'RPM 45',
  'blues, classic blues, soul blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4P7bwILBOawvVJk95jnlCt',
  'found',
  72,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:43',
  'Jimmie Preacher Ellis',
  'Im Gonna Do It By Myself',
  'JEWEL 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:44',
  'Little Ann',
  'Going Down a One Way Street',
  'RIC TIC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '21:58',
  'Sade',
  'Paradise',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4tReFKumS5bcFahdXDiM1b',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:03',
  'Aretha Franklin',
  'What A Fool Believes',
  NULL,
  'soul, motown, classic soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0noO8i5ufVZwJHpuAPK475',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:09',
  'Ella Fitzgerald',
  'A House is not A Home',
  NULL,
  'jazz, vocal jazz, swing music',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7G9KpYL4QgrQwtetBNgAZc',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:13',
  'Meshel Ndgeocello',
  'Don''t Disturb This Groove',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:18',
  'Erica Falls',
  'Dreams',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2vE9M20zKUDHEw9LkCUiRd',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:22',
  'Eperanza Spaulding/ Joe lavano',
  'Can''t Help It',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:28',
  'Robert Glasper/ Erykah Badu',
  'Afro Blue',
  'Royal',
  'neo soul, jazz rap, r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7e0j6jReCfN5KJkDNLHyHQ',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:33',
  'Jill Scott/ Trombone Shorty',
  'Be Great',
  NULL,
  'neo soul, quiet storm, brass band',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7m0BjjrhALq85l5X8QfH05',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:36',
  'Sault',
  'Why Why Why Why Why',
  '5',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4zwq3QUKgMNk0NSLl7fpbP',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:43',
  'Sienna Spiro',
  'You Stole The Show',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/23ZdNaFSfH7VdSVU4U0Agb',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:47',
  'Amy Whinehouse',
  'There is No Greater Love',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:50',
  'Erykah Badu',
  'Orange Moon',
  NULL,
  'neo soul, r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5dlfvkyZOuBCFP1KbzRHUx',
  'found',
  98,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '22:57',
  'Mya',
  'Sophisticated Lady',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:01',
  'Gwen Stefani/ Andre 3000',
  'Long Way to Go',
  'Long Way to Go',
  'ambient jazz',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3ZLmAoJb6ZHlgbakKFDAyk',
  'found',
  83.2,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:05',
  'Dungeon Family',
  'ROLLIN''',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:09',
  'doja cat',
  'Boss Bitch',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/78qd8dvwea0Gosb6Fe6j3k',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:12',
  'Janet Jackson',
  'Someone to call my lover',
  NULL,
  'new jack swing',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/43zr9kKkeiQrshvYuvNtfM',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:17',
  'Minnie Ripperton',
  'Les Fleurs',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4XCGfHpGVq8xw800o5cwWs',
  'found',
  72,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:20',
  'KATSEYE',
  'Mean Girls',
  NULL,
  'k-pop',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6oDFDGaAayXd8HXmynsgPv',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:24',
  'Bea Miller',
  'S.L.U.T.',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6h3lMAmmpQDFqoHk9F99IR',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:27',
  'Nina Simone',
  'take Care of business',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/2YwjSPeznyCvkUYvqKbXa9',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:30',
  'Carole King',
  '(You make me feel like) A natural woman',
  NULL,
  'singer-songwriter, folk rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0LXljhKMUgoLv8tLwZ1hmf',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:34',
  'Olivia Dean',
  'Lady Lady',
  NULL,
  'pop soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1XwbJNPOcLuSRTQNR9zz4r',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:37',
  'Stevie Wonder',
  'Summer Soft',
  NULL,
  'motown, classic soul, soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0eGpcLG96GWVCG4Ix3qLCp',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:41',
  'Snoop Dogg/ Pharrell',
  'beautiful',
  NULL,
  'g-funk, west coast hip hop, gangster rap',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7FrJV8tydWEv1Mxu2mIQrm',
  'found',
  74.5,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:46',
  'James Martin/ Erica Falls',
  'Ear To Ear',
  NULL,
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0Jt2goLL6DMZ3bAXS0Mh1E',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:50',
  'The Cars',
  'Drive',
  NULL,
  'power pop, new wave, classic rock',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3wfujdbamR3Z46F4xav7LM',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-09',
  '23:55',
  'Free Agents Brass Band',
  'made it Through That Water',
  NULL,
  'brass band, cajun',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6si31BtScA1g2utXSoA44x',
  'found',
  100,
  '2026-03-10 09:30:09'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-10';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:01',
  'Bobby Caldwell',
  'What You Won''t Do for Love',
  'Bobby Caldwell',
  'yacht rock',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6Dk5fHTvH897XrVzCO64Mx',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:07',
  'Vicky Sometani',
  'Keep Coming Back To You',
  'Keep Coming Back To You - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/55uA56TpLi1Xu0OBb95RTN',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:10',
  'Daryl Hall',
  'Eyes for You (Ain''t No Doubt About It)',
  'Laughing Down Crying',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2Xbt5zWc4itSIr44ScmbVl',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:16',
  'ELIZA',
  'Pleasure Boy',
  'The Darkening Green',
  'alternative r&b, neo soul, uk r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6D3XgKK1nqJykoZ5UDcPVp',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:20',
  'Nightmares On Wax',
  'Typical (feat. Jordan Rakei) [Little Dragon''s Rick Ride Remix]',
  'Typical Remixes (feat. Jordan Rakei) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:22',
  'Gnarls Barkley',
  'Tomorrow Died Today',
  'Atlanta',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:28',
  'Nina Kraviz',
  'Ghetto Kraviz',
  'Nina Kraviz',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:31',
  'Santigold',
  'Disparate Youth',
  'Master of My Make-Believe',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0t2QiRkpag0fAgs9zuCPlH',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:36',
  'The Knife',
  'Pass This On',
  'Deep Cuts',
  'electroclash',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0aWhxzFrP2Yyz3CetJe0xE',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:40',
  'Thievery Corporation',
  'Vampires',
  'Radio Retaliation',
  'trip hop, downtempo, acid jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/23kJ8ePy6lHBbls56e4Jv1',
  'found',
  100,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:45',
  'Femi Kuti',
  'Walk on the Right Side',
  'Fight to Win',
  'afrobeat',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/65A6s945fhDy0mj4seQwll',
  'found',
  79.1,
  '2026-03-10 09:30:09'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:52',
  'Amadou & Mariam',
  'Sabali',
  'Welcome to Mali',
  'afropop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0jHZ5yXOZNKvtwPGSgL0gX',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '00:55',
  'Aquarius Heaven',
  'Universe',
  '7 Days - EP',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/79fH0w9zPSMC7Grs8DLOi0',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:02',
  'Ross from Friends',
  'Don''t Wake Dad',
  'Aphelion - EP',
  'lo-fi house',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5KKVhzIrTwCOkGq8mfb8Ne',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:08',
  'Jacques Greene',
  'Another Girl',
  'Another Girl - EP',
  'idm',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1tsoKfM2I3a1VGpkjhzFTw',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:15',
  'Four Tet',
  'Loved',
  'Loved',
  'idm, electronica',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6fUo4GlD0FbvXNTylA4o68',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:22',
  'Gorillaz',
  'The Empty Dream Machine',
  'The Mountain',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:26',
  'Owelu Dreamhouse',
  'Kellen',
  'Owelu Dreamhouse',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5JF3jaiN4x6PK15HYnOSc9',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:31',
  'Funny Weather and Little Dragon',
  'Been Thinking',
  'Been Thinking - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:35',
  'Arlo Parks and War Child Records',
  'Nothing I Could Hide',
  'Help(2)',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:38',
  'Ekiti Sound',
  'Lagos Lullaby (ES Edit)',
  'Abeg No Vex',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2QhN06sUNqOxMn91kFfEtJ',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:44',
  'Massive Attack',
  'Paradise Circus',
  'Heligoland',
  'trip hop, downtempo',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2BndJYJQ17UcEeUFJP5JmY',
  'found',
  72.2,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:49',
  'Chet Faker and Flume',
  'What About Us',
  'Lockjaw - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '01:54',
  'Everything Is Recorded, Florence + The Machine, and Sampha',
  'Never Felt Better',
  'Richard Russell Is Temporary',
  'indie soul, baroque pop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4fxzJneKp90ru93KfMGmcv',
  'found',
  94.7,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '05:59',
  'Wynton Marsalis',
  'Morning Song',
  'Unforgivable Blackness- The Rise',
  'jazz, latin jazz, big band',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/3aTJJfBuyEX3QPTcqo7zw8',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '06:01',
  'Louis Armstrong',
  'Weather Bird',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2hlOBnSPiXLTigIMlxyvt0',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '06:09',
  'Jelly Roll Morton',
  'Tia Juana',
  '1923-1924 [Milestone]',
  'ragtime, jazz, swing music',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/56kvJU7n0NSGyOJ8uizh3P',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '06:12',
  'Pete Fountain',
  'I`ve Found A New Baby',
  'Do You Know What It Means To Mis',
  'big band, ragtime, swing music',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3h41mgBsrb9nd3IwmTeINR',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '06:22',
  'Alvin Batiste',
  'Bumps',
  'Marsalis Music Honors Alvin Bati',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6Ut26Y8c7Xns1FTOzioDKR',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '06:36',
  'Idris Muhammad',
  'New Orleans Gumbo',
  'Right Now',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '06:49',
  'The Troy Andrews Quintet',
  'Congo Square',
  'The End of The Beginning',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '07:03',
  'Ellis Marsalis',
  'Mozart-In''',
  'Twelve''s It',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '07:12',
  'Branford Marsalis Quartet',
  'Long As You Know You re Living',
  'Belonging',
  'jazz, jazz ballads, cool jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/53BIMABrBFMit1BUprSHnB',
  'found',
  94.1,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '07:29',
  'Wynton Marsalis',
  'Sister Cheryl',
  'Wynton Marsalis',
  'jazz, latin jazz, big band',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0C85pnGNzVvIQHc5vMbPJm',
  'found',
  98,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '07:36',
  'Delfeayo Marsalis',
  'Lady Mac',
  'Sweet Thunder',
  'big band, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0nC0W4QKwJAFwK3eNeIGu4',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '07:44',
  'Jason Marsalis Vibes Quartets',
  'Closing Credits',
  'In A World of Mallets',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '08:02',
  'Donald Harrison',
  'The Magic Touch (smooth jazz)',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '08:07',
  'Nicholas Payton',
  'the sound of one hand',
  'notes from the zen gangster',
  'jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3A6Rb5jQ6zbAaYhMHYsNNU',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '08:20',
  'Terence Blanchard',
  'I Dare You',
  'Absence',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '08:35',
  'Herlin Riley',
  'The Big Banana',
  'New Direction',
  'jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/38j30LHLPxefE2YsGlkxxF',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '08:47',
  'Christian Scott',
  'Spy Boy-Flag Boy',
  'Christian Atunde Adjuah (CD01)',
  'jazz, nu jazz, experimental jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3GFLwo5n6k14ncYyTvjr2w',
  'found',
  73.9,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '08:57',
  'Johnny Vidacovich',
  'Gentilly Lilly',
  'Mystery Street',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '09:04',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '09:16',
  'Pete Fountain',
  'That Da Da Strain',
  'Do You Know What It Means To Mis',
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1AN4T5j7bwwguOb60J5EC7',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '09:30',
  'Al Hirt',
  'Royal Garden Blues',
  'Pete Fountain Presents The Best',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7rTC3CadVjUQzQwM0QckgX',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '09:49',
  'Shotgun Jazz Band',
  'Creole Song',
  'Don''t Give Up the Ship',
  'swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2UeqUl2uSI2NCR1VqK1CZg',
  'found',
  77,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '10:08',
  'Louis Prima and Gia Maione',
  'Goody Goody',
  NULL,
  'swing music, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3rm6LVV4W39VUtOf9OVwOX',
  'found',
  71.7,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '10:09',
  'Pete Fountain',
  'Tiger Rag',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3a0CAiZjmQFbWGCVpsZLz8',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '10:13',
  'kermit ruffins',
  'drop me off in new orleans',
  NULL,
  'brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/5PPG6S0didC96fCXpwtIDY',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '10:25',
  'Paul Sanchez',
  'Ce Meme Vieux Soleil Couchant',
  NULL,
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/5xsKrT7QSvwAZnnp5VVgio',
  'found',
  88,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '10:28',
  'Fats Waller',
  'The Viper`s Drag',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7itDgUveD8ISEzy4tvRHRa',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '10:43',
  'New Orleans Jazz Vipers',
  'Crazy Rhythm',
  'Live On Frenchmen Street',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '10:48',
  'Preservation Hall Jazz Band',
  'Tootie Ma',
  'St. Peter & 57th St',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7kb4JC3yre1nvvBUmYiqHj',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '11:00',
  'Allen Toussaint',
  'Yes We Can',
  'NOJHF Jazz Fest (D2)',
  'cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7jyquSccpyQ25wPgmP1ehU',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '11:49',
  'John Boutte',
  'Treme Song',
  'Jambalaya',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3SQ5xQgBSC13MvSQulomua',
  'found',
  70,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '13:19',
  'Big Sam''s Funky Nation',
  'LOVEYOU',
  'SINGLE',
  'brass band, jazz funk, funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2IyW3KFndLT6cIu4zhlAnT',
  'found',
  84.8,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '13:51',
  'Jon Batiste',
  'Freedom',
  'We Are (Deluxe)',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2QOB5UiRKggr2j9uMD3GYK',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '13:57',
  'Trumpet Black',
  'Trumpet Not Guns',
  'The New Beginning',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '14:10',
  'Jimmy Mooney and John Thackery',
  'Oh Louise',
  'Sideways In Paradise',
  '',
  'Soul Serenade',
  'Marc Stone',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '14:13',
  'Johnny Adams',
  'Stand By Me',
  'Best of New Orleans Rhythm & Blu',
  'soul blues, blues',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/2crP1VTWwiMCh0pJvoHtxN',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '14:31',
  'Sally Baby''s Silver Dollars',
  'Down in New Orleans',
  'Sally Baby''s Silver Dollars',
  '',
  'Soul Serenade',
  'Marc Stone',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '14:32',
  'Marlena Shaw',
  'Woman Of The Ghetto',
  'The Spice of Life',
  'northern soul, soul',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/4kfQerxbqsZgi4uWreRjZS',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '14:44',
  'Wolfe Johns',
  'Hoodoo Ya Luv',
  'Hoodoo Ya Luv',
  '',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/5yv4ehzfGz4bNnnuazNp0z',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '14:50',
  'Olu Dara',
  'Herbman',
  'Neighborhoods',
  '',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/7mA9oEcWsCZnvljNWxV4XU',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '15:06',
  'Cher',
  'I Walk On Gilded Splinters',
  '3614 Jackson Highway',
  '',
  'Soul Serenade',
  'Marc Stone',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '15:12',
  'Sharon Jones And the Dap -Kings',
  'Midnight Rider',
  'Midnight Rider',
  'retro soul, soul, funk',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/2AqbEQUDhuT2r1flcPuRRx',
  'found',
  93,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '15:22',
  'Robert Finley',
  'on the battlefield',
  'Hallelujah! Don;t Let The Devil Fool Ya',
  'blues, soul blues, modern blues',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/4s1zfuvwHuHaFtPQ1iB5PW',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '15:29',
  'DAn Auerbach',
  'Cherrybomb',
  'Waiting On A Song',
  'blues rock',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/7ejVezMnmqGT84etM4IEmH',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '15:42',
  'Buddy Red',
  'Sold His Soul',
  'Sold His Soul',
  '',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/4A2QKkpChgMmvA3ZDryzLf',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '15:45',
  'Jimi Hendrix',
  'Up from the Skies',
  'Axis: Bold As Love',
  'psychedelic rock, classic rock, acid rock',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/4oarDDCWsSnX2WOIRKuQo1',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '15:59',
  'Galactic - Irma Thomas',
  'Lady Liberty',
  NULL,
  'jam band, jazz funk, funk rock',
  'Soul Serenade',
  'Marc Stone',
  'https://open.spotify.com/track/1SKe4wKuS1BoSLi7oTemWF',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '16:08',
  'sun ra',
  'plutonians nights',
  'angles and demons at play',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '16:27',
  'dave douglas',
  'just another murder',
  'keystone',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:09',
  'Art Ensemble of Chicago',
  'Bush Magic',
  'Urban Bushman',
  'free jazz, experimental jazz, avant-garde',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/0Z8FRCwbrQgEVAtPRvixbt',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:09',
  'Art Ensemble of Chicago',
  'Promenade: Cote Bamako 1',
  'Urban Bushman',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:11',
  'Art Ensemble of Chicago',
  'Sun Precondition Two/Theme for Sco',
  'Urban Bushman',
  'free jazz, experimental jazz, avant-garde',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2GzgGpbLh7srLkSMI2Fj5l',
  'found',
  98,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:12',
  'Art Ensemble of Chicago',
  'New York is Full of Lonely People',
  'Urban Bushman',
  'free jazz, experimental jazz, avant-garde',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/4IGAxHU1J5gW4eFaMOiYTm',
  'found',
  98,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:13',
  'Art Ensemble of Chicago',
  'Ancentral Meditation',
  'Urban Bushmen',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:14',
  'Art Ensemble of Chicago',
  'Uncle',
  'Urban Bushmen',
  'free jazz, experimental jazz, avant-garde',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1jEaJsbHnAhFti30mh1wRy',
  'found',
  98,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:14',
  'Art Ensemble of Chicago',
  'Uncle Bud',
  'Urban Bushmen',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:16',
  'Art Ensemble of Chicago',
  'Promenade Cote Bamako II',
  'Urban Bushmen',
  'free jazz, experimental jazz, avant-garde',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1mD7SsCt6v3YsWviVjtd6C',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:41',
  'Art Ensemble of Chicago',
  'Peter and Judith',
  'Urban Bushman',
  'free jazz, experimental jazz, avant-garde',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/5t3Xmvlm6Vnf9gSO4fAqOE',
  'found',
  100,
  '2026-03-11 06:56:22'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-10',
  '23:50',
  'Ballister/Dave Rempis',
  'Smash',
  'Smash and Grab',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-03-11 06:56:22'
);