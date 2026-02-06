-- WWOZ Database Export
-- Generated: 2026-02-06T10:30:07.777Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-06 07:14:20
-- Days: 3
-- Tracks: 415

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-03',
  'https://open.spotify.com/playlist/4H7vqO0UyNbCX3dfiwB8hf',
  '{"totalTracks":82,"successfullyFound":45,"notFound":37,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-03 08:13:04',
  '2026-02-06 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-04',
  'https://open.spotify.com/playlist/18Q3xNwZf2bb81IAHt6Txv',
  '{"totalTracks":144,"successfullyFound":70,"notFound":74,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-05 07:51:41',
  '2026-02-06 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-05',
  'https://open.spotify.com/playlist/7LEBy9G9AkZehCKpyDZGqV',
  '{"totalTracks":163,"successfullyFound":133,"notFound":30,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-06 07:13:18',
  '2026-02-06 10:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-03';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:00',
  'Luther Vandross',
  'Never Too Much',
  'Never Too Much',
  'quiet storm, soul, classic soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3nFJbZCHP4d9vduKjJLdBL',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:05',
  'Santana, Lauryn Hill, CeeLo Green',
  'Do You Like the Way',
  'Supernatural',
  'neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7dP57u5hv9TqZnfTlklyrt',
  'found',
  91.9,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:11',
  'Sa-Ra Creative Partners',
  'Lines To Mars',
  'Lines To Mars - Single',
  'neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3aVlSW4D6iH8o3PmqvfQrp',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:15',
  'Janelle Monae',
  'Water Slide',
  'The Age of Pleasure',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:17',
  'Skinshape and Hollie Cook',
  'Lady Sun',
  'Another Side Of Skinshape',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:21',
  'Little Simz and Obongjayar',
  'Point and Kill',
  'Sometimes I Might Be Introvert',
  'alté',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/52y4KhkcAbYcogFg2u7UVP',
  'found',
  88.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:27',
  'Gil Scott-Heron and Jamie xx',
  'I''ll Take Care of U',
  'We''re New Here',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:31',
  'L''Eclair & Erin Kimberly',
  'Ring My Bell',
  'Ring My Bell - Single',
  'afro house',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7tXxiYUl5hLLfoXDsWPSG9',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:38',
  'Channel Tres',
  'Candy Paint (feat. Thundercat)',
  'Head Rush',
  'hip house',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6bM1Syx2wNZ7iYYvaKCQB9',
  'found',
  85.9,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:40',
  'Madvillain',
  'Money Folder (Four Tet Remix)',
  'Mad Villian Remixes: Four Tet - EP',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:45',
  'DRAMA',
  'Oblivian',
  'Platonic Romance',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:48',
  'Maribou State',
  'November Nights',
  'Portraits Outtakes - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7p0G6Wr2Sd8AnVYePdA7Gu',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:53',
  'Tirzah',
  'Make It Up',
  'Make It Up - Single',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2hHXTnhh2mxPiJ5vzk8lOB',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '00:57',
  'Sylvan Esso',
  'Coffee',
  'Sylvan Esso',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:02',
  'John Glacier',
  'Ocean Steppin'' (feat. Sampha)',
  'Like A Ribbon',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:06',
  'Thee Sacred Souls',
  'Live For You',
  'Got a Story to Tell',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2cgHekIPyuKxEEcV72tuy4',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:10',
  'Jill Scott',
  'Pressha',
  'To Whom This May Concern',
  'neo soul, quiet storm',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7KNcY52YH6VFnYYabMgxLM',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:17',
  'Amadou & Mariam and Busy Twist',
  'La vie est belle',
  'La vie est belle',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:18',
  'Barry Can''t Swim',
  'Chala (My Soul Is On A Loop)',
  'Chala (My Soul Is On A Loop) - Single',
  'jazz house, ethiopian jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2TidiXg42kktDIl8WhNPWk',
  'found',
  83.4,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:20',
  'Yaya Bey',
  'chasing the bus',
  'chasing the bus',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1B6LFIVRDyDi0L26PO3kPx',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:26',
  'Ndeh Ntumazah',
  'Something Good',
  'Something Bad/ Something Good',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5tN0cbLw8RGvntLeHCIOPJ',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:29',
  'Liam Benzvi',
  'Other Guys (feat. Blood Orange)',
  '...And His Splash Band',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5GaoGa1hdQojRMPztNzK57',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:32',
  'Leon Bridges',
  'Peaceful Place',
  'Leon',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7g4JvjIMwC4gi6gBPKOqnz',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:36',
  'Durand Jones & The Indications & Aaron Frazer',
  'Let''s Take Our Time',
  'Let''s Take Our Time b/w Flower Moon',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2C5G7y3CVchaQZDmCluKpG',
  'found',
  100,
  '2026-02-03 08:13:04'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:40',
  'Roberta Flack',
  'Feel Like Makin'' Love',
  'Feel Like Makin'' Love',
  'adult standards, classic soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/7gkboYtvhuXNS4EUwmFPcw',
  'found',
  100,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:44',
  'Angie Stone',
  'Stay for a While (feat. Anthony Hamilton)',
  'Stone Love',
  'neo soul, soul, r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5R7wbaxRvAhsSN6d1PxrEm',
  'found',
  73.5,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:48',
  'D''Angelo',
  'Send It On',
  'Voodoo',
  'neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5LIwaG8Wl9LfExcmiRQm7J',
  'found',
  100,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '01:54',
  'Common Saints',
  'Night Light',
  'Night Light - Single',
  'retro soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3AOjvIZEqBkxRiz7oonvnn',
  'found',
  98,
  '2026-02-03 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '04:28',
  'Panorama Jazz Band',
  'Shimmy Like My Sister Kate',
  NULL,
  'brass band',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/0frboUpSgjquvLA2sldbmi',
  'found',
  86,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
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
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
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
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:10',
  'Fats Waller And His Rhythm',
  'I`ve Got My Fingers Crossed',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:13',
  'Fats Waller',
  'The Sheik Of Araby',
  'The Definitive Fats Waller - Vol',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0rRdx9gUGZYa9KPqaPiSNm',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:18',
  'Bob Havens',
  'Digga, Digga, Do',
  'Back Home In New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3mZgDzDuASdNgmIh6kxSs8',
  'found',
  81.3,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:24',
  'Ethel Waters',
  'My Handy Man',
  'Cabin In The Sky [Milan]',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0d7sGmbm560m0SIRaHchcQ',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:27',
  'Louis Armstrong',
  'I`ve Got A Feeling I`m Falling',
  'Satch Plays Fats - A Tribute To',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7MHyRApG9yln6S6xcUY3PA',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:30',
  'Fritzel`s Jazz Band Feat. Jacque',
  'When I Grow Too Old To Dream',
  'Jazz Hit Parade',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:36',
  'Sidney Bechet',
  'I''ve Found a New Baby',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:39',
  'Johnny Dodds',
  'If You Want To Be My Sugar Papa',
  'Great Original Performances 1923',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1xZZXvYJk3jyHkce9NsD2Y',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:42',
  'Ytre Suloen Jazzensemble',
  'Goody Goody',
  'Way Down Yonder In New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:46',
  'Boswell Sisters',
  'Roll On, Mississippi, Roll On',
  'Riverboat Shuffle',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2TKplQR3KJt0UvflZpmXri',
  'found',
  84.4,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:49',
  'Louis Armstrong',
  'I`ve Got A Pocketful Of Dreams',
  'Pocketful Of Dreams, Vol. 3',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7ztKld3OkqIApFoeEpYbug',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '09:52',
  'New Orleans Helsinki Connection',
  'Oh! Didn`t He Ramble',
  'Paradise On Earth',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2j2L83G1Q0gqSGoEDm906R',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:01',
  'Shake''Em Up Jazz Band',
  'Wild Women Don''t Have The Blues',
  'The Boy In The Boat',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:04',
  'Gauthe`s, Jacques Creole Rice Ye',
  'Oh Daddy Blues',
  'Cassoulet Stomp',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:08',
  'Barry Martyn',
  'Undecided',
  'On The Sophisticated Side',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:12',
  'Louis Armstrong',
  'King Of The Zulus',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/5uQ3tTBShkRVfLNyQndzSM',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:17',
  'Storyville Stompers',
  'Old Rugged Cross',
  'Count Your Blessings',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:22',
  'Dr. Michael White',
  'Give It Up (Gypsy Second Line)',
  'Dancing In The Sky',
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3WwoO74AaIeh9aQloQ2NiC',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:29',
  'Fat Babies',
  'Till Times Get Better',
  '18th & Racine',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:34',
  'Troy Andrews & Lionel Ferbos',
  'Dreamboat',
  'Trombone Shorty Meets Lionel F',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:39',
  'Heritage Hall Jazz Band',
  'Up A Lazy River',
  'Cookin`',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:43',
  'George Girard',
  'Sweethearts On Parade',
  'Sounds Of New Orleans Vol. 6',
  'big band, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0grMqktzQfArnqQIyPXc3C',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:47',
  'Sayles Silverleaf Ragtimers',
  'If Ever I Cease To Love',
  'Sayles Silverleaf Ragtimers',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:51',
  'John Rankin',
  'If Ever I Cease To Love',
  'Fess` Mess',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6HvrEk7lHul74FXGsRKTI4',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '10:56',
  'Dave Ferrato',
  'Tchoupazine Triangle',
  'Later, On Decatur',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/34Q6SdHuXm5HjtodhR8w2H',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:11',
  'GALACTIC AND AL CARNIVAL TIME JOHNSON',
  'CARNIVALE TIME',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:11',
  'JON CLEARY',
  'ZULU COCONUTS',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:15',
  'JON CLEARY',
  'SO DAMN GOOD',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1t2KctU7G6O3CRLffn6cSg',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:19',
  'Chubby Carrier & The Bayou Swamp',
  'I Found My Woman Doing The Zyd',
  'Rockin` With Roy',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7u1a15N4t1ljjjCdE3cOuh',
  'found',
  78.3,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:36',
  'The Meters',
  'It Ain''t No Use',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3MaqEiVpKGxqd2JhMH9xR7',
  'found',
  98,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:36',
  'george porter jr',
  'tito''s dumpling machine',
  NULL,
  'soul blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3Hdr3V83E8qOQAWr366NlO',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:40',
  'John Boutte',
  'The Grass Is Greener',
  'All About Everything',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:45',
  'THE SOUL REBELS',
  'SLIDE BACK',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:51',
  'Anders Osborne',
  'Life Don`t Last That Long',
  'Spacedust & Ocean Views',
  'modern blues, jam band, blues rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1FvdIykhNv60ULZWjVIR3U',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:58',
  'ANDERS OSBORNE',
  'THOSE LONELY, LONELY NIGHTS',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '11:59',
  'Shake Em Up Jazz Band',
  'Shake Em Up',
  'Le Donne Mangiano Zucchero',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:02',
  'OMARI NEVILLE AND THE FUEL',
  'NORMAL',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:06',
  'Kyle Roussel',
  'African Gumbo',
  'Church Of New Orleans',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:16',
  'JOHN PAPA GROS',
  'Hurricane',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '12:28',
  'JOHN PAPA GROS',
  'ALL THAT I''VE GOT',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:14',
  'Cyril Neville And The Uptown All',
  'Big Chief Jolly',
  'For The Funk Of It',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:23',
  'D.K. Harrell',
  'What Real Men Do',
  'Talkin Heavy',
  'soul blues, blues, modern blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5AxQGAvMs8LPbwK8mWTFbq',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:27',
  'Susan Cowsill',
  'River of Love',
  'Lighthouse',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:33',
  'Marc Broussard',
  'Let The Music Get Down In Your S',
  'S.O.S.- Save Our Soul',
  'blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1uxLEMVayKkDdVMD4RC82E',
  'found',
  93.8,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:40',
  'Rebirth Brass Band',
  'Chameleon',
  'Take It To The Street',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/07fX8wgn6FMDzEZnlcwcT3',
  'found',
  98,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:51',
  'Corey Henry & The Treme Funkte',
  'Slip Into Darkness/HeyPockeyWa',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '13:56',
  'Trumpet Black',
  'Trumpet Not Guns',
  'The New Beginning',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:02',
  'SUN RA',
  'lOVE IN oUTER SPACE',
  'THE nIGHT OF THE pURPLE mOON',
  'free jazz, experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/0W6Yvblx1EhyHD1UgdtKNa',
  'found',
  100,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:06',
  'ALEX VENDLING',
  'aLL THE THINGS YOU ARE',
  'CONVERSATIONS',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:28',
  'KASSA OVERALL',
  'REBIRTH OF SLICK',
  'Cream',
  'jazz rap, nu jazz, experimental hip hop',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3h1DfQK2IVd5DYJZ0MYGgc',
  'found',
  84.4,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '16:28',
  'jAKOB BRO',
  'pENINSULA',
  'tAKING tURNS',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 02:34:13'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '23:38',
  'Michael Ray & The Cosmic Krewe',
  'Discipline 27',
  'Michael Ray & The Cosmic Krewe',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 07:21:16'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-03',
  '23:44',
  'Michael Ray & The Cosmic Krewe',
  'Watusi',
  'Funk If I Know',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-04 07:21:16'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-04';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
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
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:08',
  'Artemis',
  'Nocturno',
  'Artemis',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5DHU96HUvat8gddLT8IhFO',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:13',
  'David Chesky',
  'Check Point Charlie',
  'Jazz in the New Harmonic: Primal Scream',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:20',
  'Billy Childs',
  'Crystal Silence',
  'The Winds of Change',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3oq6cRHMGo7bHIBl1cMmV1',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:28',
  'Bill Frisell & Fred Hersch',
  'Wave',
  'Songs We Know',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5cRgYlM9XHgdeu8whC4tOx',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:34',
  'Thelonius Monk Septet',
  'Ruby, My Dear',
  'The Complete 1957 Riverside Recordings',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:40',
  'Benny Golson',
  'Night Shade',
  'Horizon Ahead',
  'hard bop, jazz, jazz ballads',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/48eBw4DETehM8hZcAFjzgx',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:46',
  'Steve Masakowski',
  'Lil'' Boy Man',
  'Things I Like',
  'cajun',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1q9knoMgs8qRn6O0DlHR0m',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:52',
  'Tommy Flanagan',
  'West Coast Blues',
  'Something Borrowed, Something Blue',
  'jazz, hard bop, jazz ballads',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5PCuMBiFhrK36wK6QZMph2',
  'found',
  89.8,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '06:55',
  'Wolfgang Muthspiel',
  'Father and Sun',
  'Rising Grace',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:04',
  'Ginger Baker',
  'Mountain Time',
  'Horses & Trees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:16',
  'Leni Stern',
  'Maba',
  'Dance',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:16',
  'Lisa Hilton',
  'Momentary Mystery',
  'Extended Daydream',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5wY3wV1ebmMqUdgKUD10rO',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:22',
  'Edward Simon',
  'Country',
  'Solo Live',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/74riAYmVZbPfuwy6P2i6lx',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:30',
  'John Zorn, George Lewis, Bill Frisell',
  'News for Lulu',
  'News for Lulu',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:34',
  'Joshua Redman',
  'Undertow',
  'RoundAgain',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:41',
  'Ellis Marsalis',
  'Magnolia Triangle',
  'Whistle Stop',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3cZZ0hI1hAXPs79WHscVUi',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:47',
  'Lisa Hilton',
  'Getaway',
  'Getaway',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6mxNrCbQNO64yS8rClyfa7',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:51',
  'Tim Jago',
  'Soil to Sky',
  'Time Shift',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5i2KPMvzpI9rD1LcXROttP',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '07:59',
  'Ginger Baker Trio',
  'Ginger Blues',
  'Going Back Home',
  'jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/59YSP8cWc0n0TbmGfJRar5',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:02',
  'The Bad Plus',
  'Time After Time',
  'It''s Hard',
  'jazz, experimental jazz, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1CdSQrf0mqQkjDRNJ0mXd4',
  'found',
  86.7,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:08',
  'Soul Rebels Brass Band',
  'Sweet Dreams Are Made of This',
  'Unlock Your Mind',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:15',
  'Maceo Parker',
  'Blues for Shorty Bill',
  'Southern Exposure',
  'jazz funk, funk, soul jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0ZwigTmCBUwtVEvjx8RjDd',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:19',
  'Lizz Wright',
  'Old Man',
  'Dreaming Wide Awake',
  'vocal jazz, jazz pop, smooth jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4LFfglOvqgnsN7K6sWCZ7d',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:24',
  'Al Kooper',
  'Just One Smile',
  'Soul of a Man: Al Kooper Live',
  'classic blues, blues, blues rock',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2E5ERJ2BJt7MjK3NJJf5fy',
  'found',
  90.2,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:30',
  'Wayne Horvitz',
  'All Weather Is Yours No Matter How Vulgar (Fairfield)',
  'Some Places Are Forever Afternoon (Ten Places for Richard Hugo)',
  'avant-garde, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5Jflv9TydfFpIpPyPY6eyM',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:44',
  'Johnathan Blake',
  'Can Tomorrow Be Brighter',
  'My Life Matters',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3EtZU03iRFgOhIg9qsbfss',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:44',
  'Shai Maestro',
  'Prayer',
  'Human',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '08:50',
  'Benito Gonzalez',
  'Festival in Bahia',
  'Passion Reverence Transcendence',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:00',
  'GALACTIC AND AL CARNIVAL TIME JOHNSON',
  'CARNIVALE TIME',
  'Carnivale Electricos',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:08',
  'FATS WALLER',
  'I JUST MADE UP WITH THAT OLD GIRL OF MINE',
  'THE COMPLETE FATS WALLER VOLUME IV',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:11',
  'THE BOSWELL SISTERS',
  'IF I HAD A MILLION DOLLARS',
  'CONNIE BOSWELL AND THE BOSWELL SISTERS',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0UgxBrbQcuAZvdxYG6uO6m',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:13',
  'JACK TEAGARDEN AND HIS ORCHESTRA',
  'UR GUESS IS AS GOOD AS MINE',
  'PERSIAN RUG',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:22',
  'JOSEPH ROBICHAUX AND HIS NEW ORLEANS RHYTHM BOYS',
  'STORMY WEATHER',
  'JOSEPH ROBICHAUX AND HIS NEW ORLEANS RHYTHM BOYS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:22',
  'SHARKEY BONANO',
  'WHEN YOIU''RE SMILING',
  'SHARKEY BONANO',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:25',
  'IRVING FAZOLA',
  'MY INSPIRATION',
  'FAZ',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:32',
  'DOT DARE (ANNETTE HANSHAW)',
  'IS THERE ANYTHING WRONG IN THAT?',
  'the rare bg 1927-29',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:32',
  'THE MASON DIXON ORCHESTRA',
  'WHAT A DAY',
  'FRANK TRUMBAUER AND HIS ORCHESTRA VOLUME 1',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/4bjrutVS4t2gYqyAq7XEQn',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:37',
  'CALIFORNIA RAMBLERS',
  'lazy weather',
  'buffalo rhythm',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7fD9LVoAr0eEvjGoTJ3svU',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:48',
  'BLUE LU BARKER',
  'NEW ORLEANS BLUES',
  'BLUE LU BARKER 1938-39',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '09:48',
  'LOUIS ARMSTRONG AND HIS ORCHESTRA',
  'SUN SHOWERS',
  'LOUIS ARMSTRONG 1937-38',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/4Qzmcgz66Em0NnbP7RlgbQ',
  'found',
  70.3,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:00',
  'COON-SANDERS ORIGINAL NIGHTHAWK ORCHESTRA',
  'MY BABY KNOWS HOW',
  'CARLTON COON - JOE SANDERS COON-SANDERS ORIGINAL NIGHTHAWK ORCHE',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:00',
  'HENRY ALLEN AND HIS ORCHESTRA',
  'I WAS BORN TO SWING',
  'HENRY',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:00',
  'TED WALLACE AND HIS ORCHESTRA',
  'CHANGES',
  'THE GOOFUS FIVE AND TED WALLACE',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:06',
  'JOE VENUTI AND HIS ORCHESTRA',
  'MY MAN FROM CAROLINE',
  'WHITE HOT JAZZ',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:15',
  'HAL KEMP AND HIS ORCHESTRA',
  'LIMEHOUSE BLUES, BLACK BOTTOM, HALLELUJAH',
  'THE BIG BROADCAST VOLUME 5',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:17',
  'LIL HADIN ARMSTRONG AND HER SWING ORCHESTRA',
  'LET''S GET HAPPY TOGETHER',
  'LIL HADIN ARMSTRONG 1936-40',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:30',
  'BENNIE MOTEN''S KANSAS CITY ORCHESTRA',
  'RUMBA NEGRO',
  'THE COMPLETE BENNIE MOTEN VOLUMES 3/4',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1RctcIzEND1cXS15VIq6gZ',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:30',
  'BESSIE SMITH',
  'HONEY MAN BLUES',
  'NOBODY''S BLUES BUT MINE',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6e7BDoPx4BTkViqxUTwAJr',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:30',
  'JEAN FERRET ET SON SIXTETTE',
  'SWING GUITARE',
  'JAZZ GITAN',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:34',
  'king oliver and his dixie syncopators',
  'TACK ANNIE',
  'king oliver and his dixie syncopators 1926 volume one',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:44',
  'LILLIAN GLINN',
  'SHAKE IT DOWN',
  'SHAKE IT DOWN',
  'blues, country blues, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3xmhV9jFsMMn8H5jh6hZKk',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:44',
  'SAM MORGAN''S JAZZ BAND',
  'EVERYBODY''S TALKING ABOUT SAMMY',
  'CELESTIN''S ORIGINAL TUXEDO JAZZ ORCHESTRA ETC...',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/28gbRdrNKm24QTr3trpnoj',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '10:46',
  'FRANKIE FRANCO AND HIS LOUISIANANS',
  'SOMEBODY STOLE MY GAL',
  'JAZZ THE WORLD FORGOT VOL 1',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
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
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:11',
  'EDDIE BO',
  'TEE NA NA NA NA NAY',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6Qg8M2Pdat17q8Gx8BiRQk',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:11',
  'Philip Manuel',
  'Angel Eyes',
  'Midnight Slows',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:12',
  'irma thomas, marcia ball, and tracey nelson',
  'sing it',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:29',
  'dr john and ronnie barron',
  'somebody done changed',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:33',
  'Allen Toussaint',
  'Bright Mississippi',
  'The Bright Mississippi',
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2E67aumg38tRDk5vFN2FGX',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:33',
  'Kyle Roussel',
  'Daylight(remix)',
  'Church Of New Orleans',
  'jazz pop, retro soul, vocal jazz',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5J9t2XjyXVNF5bYxh3tdcv',
  'found',
  72.6,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:44',
  'N.O. Nightcrawlers',
  'Funky Liza',
  'Meet Me at Mardi gras',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:46',
  'bonerama',
  'Ride Your Pony',
  'so much love',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:52',
  'toyesauce',
  'good as it gets anymore',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '11:55',
  'Snooks Eaglin',
  'I Went To The Mardi Gras',
  'Live In Japan',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:04',
  'john papa gros',
  'quitters never win',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:07',
  'The Rumble',
  'Golden Crown',
  'Stories From The Battlefield',
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3yJ3PDLKv6rPBmsJM7mHuM',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:08',
  'Monogram Hunters',
  'Golden Crown.',
  'Monogram Hunters',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3xxbNfyxqhOpDUmbyPnyka',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:10',
  'buckwheat zydeco',
  'feet don''t fail me now',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:12',
  'Steve Conn',
  'Mardi Gras Morning',
  'SINGLE',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0lMW1wERB9bx2KvymdZl6R',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:17',
  'Wild Tchoupitoulas',
  'Big Chief Got A Golden Crown',
  'Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1syAcbLLO8U4m7r0W3kmo9',
  'found',
  84.7,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:36',
  'Taj Mahal and Keith Frank',
  'Hey ''Tite Fille',
  'A Tribute to the King of Zydeco',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:38',
  'beau jocque and the zydeco hi rollers',
  'beau''s mardi gras',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3LxVmTMbtCTEkrIQpLFMw5',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:43',
  'Clifton Chenier',
  'Mardi Gras Zydeco',
  'Live At Grant Street',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0pqEXbnDHNNHeHLGaDASJC',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:43',
  'David Hidalgo & C J Chenier',
  'Hot Rod',
  'A Tribute to the King of Zydeco',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2nGqJtzeqti9dbQZwYZMLq',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '12:54',
  'Ruben Ramos',
  'Ai Ai Ai',
  'A Tribute to the King of Zydeco',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '13:17',
  'Charlie Halloran And The Tropi',
  'Barbados',
  'Shake The Rum',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '13:27',
  'john papa gros',
  'Yes We Can Can',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '13:32',
  'The Rumble',
  'New Suit',
  'Live at The Maple Leaf',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '13:39',
  'Trombone Shorty',
  'Gettin` Ready For The Mardi Gras',
  'Orleans & Claiborne',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '13:43',
  'Alex McMurray',
  'Gluestick Situation (SINGLE)',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '13:48',
  'Golden Eagles Featuring Monk Bou',
  'Sew, Sew, Sew',
  'Lightning and Thunder',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '13:58',
  'Treme Brass Band',
  'Treme Second Line (Blow Da Whi',
  'Treme Traditions',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:03',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'single',
  'cajun, zydeco, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:05',
  'Big Chief Monk Boudreux and the Golden Eagles',
  'Indian Red',
  'Live At The H & R Bar',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:08',
  'I am Eric Gordon',
  'down in new orleans',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:13',
  'juan pardo',
  'work out',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:18',
  'galactic with Irma Thomas',
  'love''s gonna find a way again',
  'AUDIENCE WITH THE QUEEN',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:21',
  'willie tee',
  'walk tall (baby thats what i need)',
  'I''m only a man',
  'northern soul, cajun, zydeco',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1RitAXaOT9F7jpFjoF7yl6',
  'found',
  90.7,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:25',
  'new orleans juice',
  'whats ahead',
  'all lit up',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:32',
  'radiators',
  'little paradise',
  'bucket of fish',
  'jam band, cajun, zydeco',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/06ZCijg0R7nbNRxjL946X1',
  'found',
  73.6,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:36',
  'steve kelly',
  'green eyed queen',
  'here''s the thing',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1OEKCYEAcygg1aziYlTsR8',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:40',
  'richard rourke',
  'skip town',
  NULL,
  'retro soul',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7a57rkxsKm2TkXxKVFKN1o',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:43',
  'james mcmurtry',
  'laredo',
  'black dog and wandering boy',
  'alt country, americana, outlaw country',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5O6hMg8UGvYdyZzZhjOGaP',
  'found',
  71.8,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:52',
  'los lobos',
  'when the circus comes to town',
  'kiko and lavender moon',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '14:54',
  'lucinda williams',
  'world''s gone wrong',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:05',
  'mavis staples ft levon helm',
  'thisis my country',
  'carry me home',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:10',
  'bruce springsteen',
  'shackled and drawn',
  'wrecking ball',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7hY5jzlcuzefRTNCOQjlo9',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:15',
  'todd snider',
  'conservative christian right wing republican straight white',
  'storyteller live',
  'alt country, americana, outlaw country',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5AxGbeiWhiBoJBaS0whPQU',
  'found',
  93.1,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:20',
  'billy strings',
  'wargasm',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:23',
  'highwaymen',
  'deportee',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:27',
  'johnny cash',
  'hurt',
  NULL,
  'classic country, outlaw country, country',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/28cnXtME493VX9NOw9cIUh',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:33',
  'willie nelson',
  'seven spanish angels',
  NULL,
  'outlaw country, classic country, country',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0hXs5XCXzzths3rMwahDkc',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:39',
  'hollyrock',
  'bad influence',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6z1M0OLGpQhEDm92CkXRJu',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:49',
  'david byrne',
  'what a day that was',
  'live from austin',
  'art rock, art pop',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0X1M8GRoTzvJMHvhMX7hBj',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:50',
  'ween',
  'booze me up and get me high',
  'live at stubb''s',
  'neo-psychedelic',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7fm3oN7Ps4kuBpf7a1v5p0',
  'found',
  94.6,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '15:55',
  'earl king',
  'no city like new orleans',
  NULL,
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:01',
  'ANDY KIRK AND HIS CLOUDS OF JOY',
  'ALL THE JIVE IS GONE',
  'THE LADY WHO SWINGS THE BAND',
  'swing music, big band',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/26k4KTxLUMdHLRmkSGCKhp',
  'found',
  87.1,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:01',
  'INA RAY HUTTON AND HER MELODEARS',
  'WITCH DOCTOR',
  'HARRISON - C',
  'swing music, ragtime',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2t5RtU6r0IJyhqz31HR3ZQ',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:01',
  'LUCILLE BOGAN',
  'PPOT HOUND BLUES',
  'POT HOUND BLUES',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:03',
  'gerald wilson',
  'milestones',
  'new york,new sound',
  'big band',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1I4uW8nt37qhM8G2MWrC1E',
  'found',
  77.6,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:22',
  'quianna lynell',
  'tryin'' times',
  'a little love',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:27',
  'charles mingus',
  'goodbye pork pie hat',
  'mingus ah um',
  'jazz, hard bop, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3PJMsxg6rz9FOo6xNiASXz',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:29',
  'alex blake',
  'mystery of love',
  'now is the time:live at the knitting factory',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:36',
  'john coltrane',
  'afro-blue',
  'a john coltrane retrospective',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3s4SpgPUXR1mNAwpu8N2GU',
  'found',
  74.2,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:53',
  'bud powell',
  'bouncin'' with bud',
  'the amazing bud powell',
  'bebop, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2xQLaX3QWBs2c3kQ04WYSz',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '16:55',
  'michael brecker',
  'the cost of living',
  'michael brecker',
  'jazz fusion, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/37j7LAbOgAOG8VSagO2r1c',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '17:37',
  'duke ellington',
  'jeep''s blues',
  'ellington at newport',
  'jazz, big band, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3yizjcTNKg1lhBOr6wTeOB',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '17:38',
  'dizzy gillespie',
  'the mooche',
  'an electrifying evening with the dizzy gillespie quintet',
  'bebop, jazz, afro-cuban jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/11LzUBWfJ4iin9TZvGKB5L',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '17:40',
  'ella fitzgerald',
  'jazz samba',
  'ella fitzgerald:first lady of song',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '17:42',
  'mccoy tyner',
  'fly with the wind',
  'fly with the wind',
  'jazz, hard bop, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0mkc6bvfRwZJPDp6du23zW',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '17:50',
  'louis armstrong',
  'st. louis blues',
  'louis armstrong plays w.c. handy',
  'jazz, swing music, vocal jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/718vbMIU2GSkvb8YpdElCf',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:18',
  'gene ammons and sonny stitt',
  'my foolish heart',
  'we''ll be together again',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:19',
  'cassandra wilson',
  'black orpheus',
  'loverly',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:20',
  'blue mitchell',
  'blues on my mind',
  'out of the blue',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4HYcenvStX0TwKwzQMmSSb',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:24',
  'ernie andrews',
  'never let me go',
  'classic moods',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:25',
  'jaki byard',
  'just rollin'' along',
  'family man',
  'hard bop, jazz, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6lBjD39WQwdRFPE245y0C2',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:33',
  'joe williams',
  'goin'' to chicago',
  'sing along with basie',
  'vocal jazz, big band, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6QMFQTV8fW55fnUXQatIeJ',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:41',
  'sonny rollins',
  'the everywhere calypso',
  'next album',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/70JnzOmIb7XcvRfgRCWVqd',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '18:45',
  'art ensemble of chicago',
  'strawberry mango',
  'coming home jamaica',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '19:01',
  'dizzy gillespie',
  'after hours',
  'sonny side up',
  'bebop, jazz, afro-cuban jazz',
  'R& B Oldies',
  'Rare On The Air',
  'https://open.spotify.com/track/4OvF1aMeM4NHvAOeq6TGTb',
  'found',
  98,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '19:05',
  'Lloyd Lambert',
  'Hop & Jump',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:02',
  'dave bartholomew',
  'carnival day',
  NULL,
  'cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6JHF4NG2PeyzL7AFa4VOID',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:05',
  'Weather Warlock',
  'Path To Complete Totality',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:14',
  'Rolling Stones',
  'ZYDECO SON PAS SALES',
  'A Tribute to the King of Zydeco',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:18',
  'Michael Hurt and the Haunted Hearts',
  'Lonely Mardi Gras',
  '45',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:20',
  'Bobby MG and The Creeps',
  'Mardi Gras Qreep',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:21',
  'Quintron',
  'Mobile Float',
  'Jam Skate',
  'noise rock, garage rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/11YpMQJNATaYxbwoOn1xI3',
  'found',
  88.7,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:28',
  'Benni Divine and Lucas Bogner',
  'HalvahII',
  'Live at BJ''s Lounge',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:35',
  'Benni',
  'The Return Part 2',
  'The Return',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:39',
  'Missing Monuments',
  'Grizzly Star',
  'Missing Monuments',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '22:46',
  'Joe Strummer and the Mescalaros',
  'Silver and Gold',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '23:05',
  'The Clash',
  'Clampdown',
  'London Calling',
  'punk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2OuXl8wNAmR7JK4Sv94xQd',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '23:16',
  'Justice',
  'D.A.N.C.E.(LIVE/AAA)',
  'Access All Arenas',
  'french house, new rave',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4Egj8v4CBwRGOBmzsLeFQ5',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '23:22',
  'Todd Terje',
  'Delorean Dynamite',
  'It''s Album Time',
  'nu disco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7A2i8hTjReDm8WD6WqTaZm',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '23:28',
  'Madlib',
  'Road of the Lonely Ones',
  'Sound Ancestors',
  'alternative hip hop, experimental hip hop, jazz rap',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/026pfPaB52WIGawu0PzN5j',
  'found',
  100,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '23:33',
  'DJ Gypsyphonic',
  'Mardi Gras Bounce',
  'Gypsyphonic Disco',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '23:54',
  'Maddy Kirgo',
  'Cowboy In Frame',
  'Shadow On My Light',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/78PecIX8EbmneX8KRnCfup',
  'found',
  93,
  '2026-02-05 07:51:42'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-04',
  '23:58',
  'Quintron',
  'Jamskate',
  'Jamskate EP',
  'noise rock, garage rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/745n7toKTlSlMbgHTPZtr3',
  'found',
  100,
  '2026-02-05 07:51:42'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-05';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:00',
  'Mike Dillon',
  'Waltz While You Sleep',
  'Mike Dillon',
  'jam band, cajun',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2NKjAkLZQq2ysa4Oq427kH',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:06',
  'Goran Kajfes Tropiq1ues',
  'Swirls',
  'Into The Wild',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:23',
  'Peacock/ Bley',
  'Dual Unity',
  'Dual Unity',
  'free jazz, jazz, cool jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2NrIfxxxZGZqJcwb95PKG2',
  'found',
  74.8,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:24',
  'Bernard/ Singleton/Peake',
  'Part Seven',
  'Side Bar Sessions Vol. 4',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:36',
  'Sam Wilkes',
  'Rain And Snow',
  'iiyo iiyo iiyo',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:45',
  'Dudu Pukwana',
  'Joe''s Jika',
  'Next Stop...Soweto',
  'free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2y3DSGuErU0lAXXxILDi8z',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:48',
  'Anna Butteres',
  'Saturno',
  'Mighty Verterbrate',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '06:53',
  'Bernard/ Emer/ Lackner/ Ferber',
  'Dry Tortugas',
  'Night For Day',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '07:07',
  'William Parker Quartet',
  'Hamid''s Groove/ Daughter''s Joy',
  'Live In Houston Tx 2007',
  'free jazz, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/4LstuzMhtxTdqhWNsfFPvM',
  'found',
  92.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '07:41',
  'Medeski, Martin & Wood',
  'RISE UP',
  'Tonic',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '07:43',
  'Rob Clearfield/ Quin Kirchner',
  'Orbit 2',
  'Concentric Orbits',
  'experimental jazz, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2oRpmyiFKDxRmmqWN6vkIb',
  'found',
  98,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '07:55',
  'Nels Cline Singers',
  'Climb Down',
  'Macroscope',
  'free jazz, avant-garde, indie jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/74pzkdJriAA3mFXl7CfYUr',
  'found',
  82,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:00',
  'Maxwell',
  'Gotta Get Closer',
  'Unplugged',
  'neo soul, quiet storm, r&b',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2fsWYluskb0JeqqLmaKGKx',
  'found',
  71.2,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:08',
  'Nate Smith',
  'Last Sight',
  'LIVE-ACTION',
  'jazz fusion, indie jazz, nu jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/6FPUzhXUM3g5RBCasmaSBZ',
  'found',
  75.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:11',
  'Nate Smith',
  'Skip Step',
  'Kinfolk',
  'jazz fusion, indie jazz, nu jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/76OCNJ5CEWrjtArdXpQGgg',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:16',
  'Vels Trio, Shabaka',
  '40 Point',
  'Yellow Ochre',
  'nu jazz, indie jazz, jazz fusion',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/4K9rzOmoHGDny6hl97BCTw',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:21',
  'corto alto',
  'Slope',
  'Bad With Names',
  'nu jazz, indie jazz, jazz fusion',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7wh0FD5YWnhTb6FRK4H4CY',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:25',
  'Kassa Overall',
  'C.R.E.A.M.',
  'Cream',
  'jazz rap, nu jazz, experimental hip hop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1Jb6zDBHrBezRSlpVc1j2d',
  'found',
  78,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:34',
  'El-P',
  'Intrigue In The House of India',
  'High Water',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:38',
  'BADBADNOTGOOD',
  'Speaking Gently',
  'IV',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/4B61IBnoLZOUO3RWRVzUJ1',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:51',
  'Yusef Kamaal',
  'Joint 17',
  'Black Focus',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '08:52',
  'Makaya McCraven',
  'Halls',
  'Where We Come From',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:09',
  'Pete Fountain',
  'South Rampart Street Parade',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/463PYFwk9Iq6Ev6EnfTWRh',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:13',
  'Pete Fountain',
  'While We Danced At The Mardi Gras',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/733hBb8D1TyxBgNcM28fk6',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:15',
  'Chris Barber & Dr. John',
  'The Big Bass Drum',
  NULL,
  'swing music, big band, ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4G6xA7HyjMWwqpFXEWbVIS',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:21',
  'Preservation Hall Jazz Band',
  'Tootie Ma Is A Big Fine Thing',
  NULL,
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/67NIuRLoNNukVtK98YeyUu',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:25',
  'Preservation Hall Jazz Band',
  'Choko Mo Fee No Hey',
  NULL,
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/08ibnNKMnlSoUrWk6p04B3',
  'found',
  89.6,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:28',
  'Kermit Ruffins',
  'Kermit''s Second Line',
  NULL,
  'brass band, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/6Zivrh264PXtVAGr4WRue8',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:33',
  'Olympia Brass Band',
  'Second Line ''95',
  NULL,
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0EDsPuUJ9bfuAOFofXGVY8',
  'found',
  71.8,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:38',
  'Al Hirt',
  'Struttin'' With Some Barbeque',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/5YYLAVDKtUfyJhliNtPDFs',
  'found',
  80.6,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:45',
  'Leroy Jones',
  'Shake It And Break It',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:50',
  'Mark Braud',
  'Throw The Beads',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/5zzZ3aF5csQNSwGdG8kZxC',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '09:53',
  'Orlando Gilbert & John Prince Gilbert',
  'Do Watcha Wanna',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:01',
  'Darryl Adams w/ Tuba Fats Chosen Few',
  '''lil Liza Jane',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:07',
  'Wild Tchoupitoulas',
  'Big Chief Got A Golden Crown',
  NULL,
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1syAcbLLO8U4m7r0W3kmo9',
  'found',
  84.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:12',
  'Bo Dollis & The Wild Magnolias',
  'Shallow Water Oh Mama',
  NULL,
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/7fqkgK1WsCJtBhyM0FpA7m',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:18',
  'Milton Batiste''s All Star Gumbo Band',
  'They All Asked For You',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:21',
  'New Orleans Heartbreakers w/ Big Al Carson',
  'Mardi Gras In New Orleans',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:25',
  'Jamil Sharif',
  'Get Yo Party On',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:33',
  'Wynton Marsalis',
  'Oh, But On The Third Day',
  NULL,
  'jazz, latin jazz, big band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/378gV8kIufplqAXR77VVHD',
  'found',
  87.8,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:39',
  'Wild Tchoupitoulas',
  'Hey Hey ( Indian Comin)',
  NULL,
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4ar5NzhoM0N26RibYUZarT',
  'found',
  84.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:43',
  'Olympia Brass Band',
  'No It Ain''t My Fault',
  NULL,
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/6AIRTuteK7saHP6JPWes84',
  'found',
  75,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:48',
  'The Flaming Arrows Mardi Gras Indians',
  'Sew, Sew, Sew',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/7GUlePgkMpfQEujTeVZ8u3',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '10:52',
  'Treme Brass Band',
  'Big Chief',
  NULL,
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2Kkv2MoYp3247FhYYzQTWV',
  'found',
  87.9,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '11:01',
  'art blakey and the jazz messengers',
  'lift every voice and sing',
  NULL,
  'hard bop, jazz, bebop',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4TdtwvuOyokYbcIXwmQaiD',
  'found',
  91.9,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '11:06',
  'astral project',
  'big shot',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5hkZiQLNbmHrYngZo0nnD8',
  'found',
  98,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '11:07',
  'Zion Harmonizers',
  'Lift Every Voice and Sing',
  'The Best of New Orleans Gospel,',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '11:13',
  'Liz Mc Comb',
  'Just A Closer Walk With Thee',
  'The Spirit of New Orleans',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '11:49',
  'JOHN BOUTTE',
  'SISTERS',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0NyfzcozPBkwTpluTLNCKW',
  'found',
  70,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '11:49',
  'JOHN BOUTTE',
  'do you know what it means to miss new orleans?',
  NULL,
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1JR8gPBEIGloC8reqKwves',
  'found',
  70,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:00',
  'Jon Cleary',
  'Just Kissed My Baby',
  'Jon Cleary And The Absolute Mons',
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2OYQ3M3OYrbmyG5HBzocGG',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:21',
  'AARON NEVILLE',
  'HOW COULD I HELP BUT LOVE YOU',
  NULL,
  'bhangra, classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0wWALEx8Um6uPVGRJ7zXka',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:22',
  'ALEZ MCMMURRAY',
  'I LOVE YOU AS LONG AS YOU LET ME',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:24',
  'Lulu And The Broadsides',
  'That''s A Pretty Good Love',
  'Lulu And The Broadsides',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5FIAKon4CWIpliYCW5PcoR',
  'found',
  82.8,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:27',
  'The Wild Magnolias',
  'Life Is A Carnival',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1CYt8hnBEwigMBnEWA13a0',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:42',
  'Trombone Shorty',
  'Here Come The Girls',
  'Parking Lot Symphony',
  'brass band, jazz funk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3nJDeRHCy9XcezeqIfLEv0',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:49',
  'Marva Wright',
  'Glitter Queen',
  'Live At Bourbon Street Music Clu',
  'zydeco, blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3vYHWrSN0kVHewPzus0DYV',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '12:55',
  'Little Richard',
  'The Girl Can''t Help It',
  'The Essential Little Richard',
  'rockabilly, rock and roll, doo-wop',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3EZgL5m9Z5wJ8Gj7BbF9sJ',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:12',
  'AL HIRT',
  'CARNIVAL OF VENICE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6yMyGFNotcycCU2WzTMAaF',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:16',
  'DR. JOHN',
  'BIG CHIEF',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5QepcFT1p5DRzhtL0Bv3ix',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:20',
  'SLIM HARPO',
  'TIP ON IN',
  NULL,
  'classic blues, blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4kuqIueqWPxO0RBJQ0kgBz',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:23',
  'WILD TCHOUPITOULAS',
  'HEY HEY INDIANS COMING',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:35',
  'Claire Givens And Mopodna',
  'Nowhere To Run',
  'Claire Givens And Mopodna',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:40',
  'QUINTRON AND MISS PUSSYCAT',
  'JAMSKATE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:45',
  'Hurray for the Riff Raff',
  'Saga',
  'Life On Earth',
  'americana, alt country',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1Si6wrL2cPEiIy2aKLYKl8',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '13:51',
  'Dr. John',
  'Mardi Gras Day',
  'Mos` Scocious- Anthology (CD01)',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
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
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:03',
  'HONEY CONE',
  'WANT ADS',
  'SWEET REPLIES',
  'northern soul, classic soul, motown',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/76lrpneaFuAxiMAbnNc6Hu',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:04',
  'Marvin Gaye',
  'I Want You (Vocal)',
  'Great Songs and Performances [19',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:12',
  'Meters',
  'Hey Pocky A-Way (Single Version)',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7Jea2uirtEcZMqUTjuvJtq',
  'found',
  73.9,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:15',
  'Chuck Carbo',
  'Hurt Coming On',
  'Drawers Trouble',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:17',
  'BILL WITHERS',
  'KISSING MY LOVE',
  'STILL BILL',
  'soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/262qk9k0LTyMXmjH9YT2xU',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:20',
  'STEVIE WONDER',
  'superwoman',
  'ORIGINAL MUSIQUARIUM',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4QG8qIv7hZ1jjcm6cQFoyI',
  'found',
  70.6,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:27',
  'Earth, Wind And Fire',
  'On Your Face',
  'Spirit',
  'funk, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1364cfVtDUV74zIeMl6ydQ',
  'found',
  89.5,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:40',
  'Chuck Carbo',
  'Meet Me With Your Black Drawers',
  'Drawers Trouble',
  'doo-wop',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6vdJ7WWW80fWLsgFcPkMLv',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:41',
  'THE S.O.S. BAND',
  'TELL ME YOU STILL CARE',
  'BEST OF THE S.O.S. BAND',
  'post-disco, quiet storm, funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2QRR9j7uTyK4nvt7lt5qOB',
  'found',
  94.5,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:45',
  'ETTA JAMES',
  'DON''T LOSE YOUR GOOD THING',
  'TELL MAMA',
  'soul, soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0QqlWusQ3clb3ZYxZdfb1c',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:47',
  'Meters',
  'Just Kissed My Baby',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1TB0dZqFRQsnf4fLLLRKQV',
  'found',
  73.9,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:52',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '14:55',
  'CHIEF BLACK SIOUX',
  'AT THE TABLE',
  'DOIN'' IT MY WAY',
  'brass band',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5TGJ3d2dvhOff18GwQBfk2',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:05',
  'Betty Wright',
  'Clean Up Woman',
  'The Platinum Collection',
  'classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6uqTETWok9npbL4c9cuLVh',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:08',
  'EARTH WIND & FIRE',
  'September',
  'GREATEST HITS',
  'funk, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2grjqo0Frpf2okIBiifQKs',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:13',
  'THE SPINNERS',
  'HOW COULD I LET YOU GET AWAY',
  'THE VERY BEST OF THE SPINNERS',
  'philly soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4jnPGIKO0aljX74CmUA2CH',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:15',
  'BARBARA ACKLIN',
  'LOVE MAKES A WOMAN',
  '20 GREATEST HITS BARBARA ACKLIN',
  'northern soul, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/51sulFzBlSrbU1G2IAbfgV',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:18',
  'Johnny Guitar Watson',
  'A Real Mother For Ya',
  'The Best Of The Funk Years',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/27QTVCKEfq41PjPKQVa7vW',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:24',
  'D TRAIN',
  'YOU''RE THE ONE FOR ME',
  'SINGLE',
  'post-disco, funk, boogie',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/66i1lieIMso7ef4P7KdWcE',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:30',
  'THE SPINNERS',
  'Love Don''t Love Nobody',
  'MIGHTY LOVE',
  'philly soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0Bvhclemd0HbPcOIfUfD2Y',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:33',
  'Aretha Franklin',
  'Chain Of Fools',
  '30 Greatest Hits [Disc 1]',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2oZmMp5M6L0Rh7G84Um2tF',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:35',
  'Johnny Guitar Watson',
  'I Want To Ta-Ta You Baby',
  'The Best Of The Funk Years',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7zGrX0fV0Mqx64GCbAC6bu',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:41',
  'Lenny Williams',
  'She Took My Drawers',
  NULL,
  'quiet storm, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/01HZhFg6vDfSnW6oI9o5Rr',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:44',
  'Mighty Sam McClain',
  'Keep On Movin`',
  'Keep On Movin`',
  'blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7IAWIZOFQ139a1yfHFqbZt',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:49',
  'Aretha Franklin',
  'Dr. Feelgood (Love Is A Seriou',
  '30 Greatest Hits [Disc 1]',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0xGcAq56TXf3RnSHkCiL9k',
  'found',
  87.9,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:52',
  'Professor Longhair',
  'Big Chief',
  'House Party New Orleans Style',
  'cajun, zydeco, classic blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0lHBftRKQfTUlgciugA3qX',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '15:56',
  'TONYA BOYD-CANNON & DA TRUTH BRASS BAND',
  'EVERYWHERE ELSE IT''S TUESDAY',
  'SINGLE',
  'brass band, footwork',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4aruXzSviX46ixqKG9mAM9',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
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
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:05',
  'ike and tina',
  'when the saints}.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:09',
  'the temptations',
  'don''t let the joneses get you down',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1megsUXcXPoCWKxIjyc3y0',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:14',
  'gladys knight and the pips',
  'don''t you miss me a little bit baby',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3Ou7709DCQ2M3geQP03G4X',
  'found',
  91.6,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:17',
  'barrett strong',
  'two wrongs don''t make a right',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2owrDP6ImexyWcalbXrXr0',
  'found',
  92.4,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:19',
  'mongo santamaria',
  'cloud nine',
  NULL,
  'latin jazz, afro-cuban jazz, cha cha cha',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7CRJV0qUMAxftqySiPazpK',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:20',
  'BARRETT STRONG',
  'money (that''s what I want)',
  'THE BEST OF BARRETT STRONG',
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6OsefWNJtsWqO7myze1HEX',
  'found',
  87.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:26',
  'patti labelle',
  'funky music',
  NULL,
  'philly soul, quiet storm, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3xKZ5C3BimAEQojbPf9EQ7',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:33',
  'barrett strong',
  'sugar daddy',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/76yPsBkPMo5P0gVYDmxXzG',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:39',
  'The Temptations',
  'Ball of Confusion (That''s What the World Is Today)',
  'Ball of Confusion (That''s What the World Is Today)/Single',
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4hZyykckhszrsn9yJy4R0n',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:40',
  'barrett strong',
  'that''s all you need',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4NhczyJ5AIBKE24FjL2Cqr',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:41',
  'the undisputed truth',
  'superstar (remember how you got where you are)',
  NULL,
  'motown, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6UkmIO9pa7oOufR29dTxww',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:46',
  'barrett strong',
  'you''re too young',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/68x8FSAc5Yqi3F84gnvJyF',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:47',
  'marvin gaye',
  'the end of our road',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/170jZWtmfjyfJyoDgmxt2s',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:50',
  'mongo santamaria',
  'too busy thinking about my baby',
  NULL,
  'latin jazz, afro-cuban jazz, cha cha cha',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4ldJyALQsl5t4ei9Blml3D',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '19:53',
  'marvin gaye',
  'gonna give her all the love I got',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4d8MN3egxWp2lqC7J7VKlj',
  'found',
  96.9,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:01',
  'barrett strong',
  'you got what it takes',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4DQAnYC54KkEGbIUXDg3aX',
  'found',
  89.2,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:03',
  'al green',
  'i can''t get next to you.',
  NULL,
  'soul, classic soul, motown',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2UclV6Lu93Ssh1spktn0Fp',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:03',
  'barrett strong',
  'misery',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2LnpBqMGx29YLgA8UI38Nb',
  'found',
  75.3,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:06',
  'mary wells',
  'use your head',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1ymttP02bVUK9xPv8hP3wI',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:11',
  'barrett strong',
  'lets rock.',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7wbz0EYgzaCcGMByyx1KBX',
  'found',
  73,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:11',
  'jerry lee lewis',
  'money.',
  NULL,
  'rockabilly, rock and roll, boogie-woogie',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5ovOduWMcQrIrqJja1MB34',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:11',
  'the temptations',
  'how can i forget',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7AXlMeSsfH1LP21KAFqGgI',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:12',
  'donald byrd',
  'just my imagination (running away with me)',
  NULL,
  'hard bop, jazz funk, jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7u5Xr9jiDHRt48IWYMcohR',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:19',
  'the persuasionsq',
  'i could never love another',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:21',
  'barrett strong',
  'do the very best you can',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6b7ZHRLLUR8qGt9KA3QRJZ',
  'found',
  91,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:29',
  'barrett strong',
  'tell all your friends',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6wlhujKpT1kWrGZzY4RFix',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:29',
  'ike and tina turner',
  'i heard it through the grapevine',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:30',
  'joan osborne',
  'smiling faces sometimes',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2AvVuRlfabM5V8d8bY4UDB',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:34',
  'barrett strong',
  'actions speak louder than words',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4R1Pzkd2drTtoGGX4uM3qA',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:39',
  'the chambers brothers',
  'i wish it would rain',
  NULL,
  'acid rock, psychedelic rock',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5yafpZ1aNBG4O2kJ26zBPG',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:41',
  'barrett strong',
  'whirlwind',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2M4iKv9uRDQzGDrMwlm1BO',
  'found',
  75.8,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:42',
  'derrick harriott',
  'message from a black man',
  NULL,
  'rocksteady, lovers rock, reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2A5PRpEKREM581nxwoZont',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:46',
  'barrett strong',
  'believe it or not',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6raz3l65x6R9xKA1dDKjlS',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:49',
  'the temptations',
  'hum along and dance',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4Au4kMkKiLuwH7q9PMO4sC',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:53',
  'barrett strong',
  'money and me',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/36AQr51aoKeP7W9VuXm9V2',
  'found',
  83.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '20:55',
  'pucho and the latin soul brothers',
  'friendship train',
  NULL,
  'latin jazz, afro-cuban jazz, acid jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5nfXFR427uLMUnLscdmtRr',
  'found',
  91.9,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:00',
  'etta james',
  'money (that''s what I want)',
  NULL,
  'soul, soul blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5ArCk3jnrAArCHQ55PfAiN',
  'found',
  94.3,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:02',
  'hot 8 brass band',
  'papa was a rolling stone',
  NULL,
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3GCYMdqF0p8oUVIPRyStJa',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:11',
  'barrett strong',
  'i''m gonna cry if you quit me',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/63y07X6Wdm2MoVxIW73fLF',
  'found',
  92.4,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:18',
  'barrett strong',
  'who''s takin my place',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4K2sbVdVlpnfQCVV1KABG3',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:18',
  'the undisputed truth',
  'take me in your arms and love me',
  NULL,
  'motown, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1Oqb7RGexWTjiU1h6p0yGq',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:19',
  'marvin gaye',
  'wherever I lay my hat',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6WlJp9lX4A8bsJk1H89kMS',
  'found',
  87.8,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:20',
  'barrett strong',
  'i''ll make it up to you',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2JFIyuaonFu3Sx8qberBv0',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:22',
  'the isley brothers',
  'that''s the way love is',
  NULL,
  'motown, quiet storm, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5M8bHVAmWQVaqp2CQgSfDD',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:26',
  'barrett strong',
  'I don''t need you, you need me',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/47F39dnWPQvcnIO7OoGwCa',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:28',
  'the temptations',
  'please return your love to me',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7olWVrJ6syY0PrX1d7KSge',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:31',
  'barrett strong',
  'you know what to do',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3EEdRMr25Enq7wN6KxBQxV',
  'found',
  81.3,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:32',
  'the funk brothers',
  'runaway child, running wild',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:36',
  'jr walker and the all stars',
  'psychedelic shack',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3wwHF7TbAoz8h8dv56gwU9',
  'found',
  90.2,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:40',
  'barrett strong',
  'what is love.',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2yVXRoqoMG78MizyWfbGN8',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:42',
  'tjhe temptations',
  'take a look around',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:45',
  'John Lee Hooker',
  'I Need Some Money',
  'RIVERSIDE 45',
  'blues, classic blues, blues rock',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6vKjJqK3XRQsRn91dsUWAY',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:48',
  'barrett strong',
  'race,',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6WzmcLZ4yVjNhCE7TuIY2T',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:51',
  'the temptations',
  'war.',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7LGoPqKzWsbqLyju2NSSUo',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '21:52',
  'barrett strong',
  'whiter shade of pale.',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0NSKPLpEzxke20WjUt50xQ',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:11',
  'The Sadies',
  'Mother of Earth',
  'Mother of Earth',
  'alt country, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5oVa9i21odPAyacf7sbsDI',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:31',
  'Dylan Earl',
  'Outlaw Country',
  'Level-Headed Even Smile',
  'americana, alt country, honky tonk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1WnaeiSBVbEa3CYImZ7kob',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:32',
  'Aretha Franklin',
  'the letter',
  'Rare & Unreleased Recordings',
  'soul, motown, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0bOHF36146qPnHxna2xPoy',
  'found',
  76.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:33',
  'Aretha Franklin',
  'People Get Ready',
  'Lady Soul',
  'soul, motown, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4AB8I2iNcBMxgQKkeeIKIv',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:34',
  'Aretha Franklin',
  'Good to Me as I Am To You',
  'Lady Soul',
  'soul, motown, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6IGfFOpzovgM5EYFzSCAZO',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:35',
  'Neko Case',
  'Outro with Bees',
  NULL,
  'alt country, southern gothic, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4wgv0uBykXFNaSWjnesjUu',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:36',
  'Neko Case',
  'Deep Red Bells',
  'Black Listed',
  'alt country, southern gothic, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4jUBzVmMj8FRUjTKcOqgTn',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:37',
  'The Sadies featuring Neko Case',
  'Hold On, Hold On',
  'Live',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:38',
  'Dusky Waters',
  'A House On King Street',
  'A House On King Street',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1RDP6hcIhMtBgei7jT6vtx',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:45',
  'Dusky Waters',
  'Pulleys and Ropes',
  'In the Current',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3cgcwn3e2XaYuE3g44ink5',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:48',
  'Marcella Simien',
  'D4YTIME DR3AM',
  'To Bend to the Will of A Dream that''s Being Fullfilled',
  'footwork',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3k8JuI6CV9wO04vRmK1IMF',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:52',
  'Marcella Simien',
  'Birds Flying Away - Collin Dupuis Mix',
  'Marcella & les Vagues',
  'footwork',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0HGDCebZf6eKrIq3EiDeKr',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '22:55',
  'Fontella Bass',
  'since i fell for you.',
  'The New Look',
  'motown, northern soul, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6JrTULFZJokhGGPQfZHT1r',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:02',
  'Big MamaThornton',
  'hard times',
  'Quit Snoopin'' Round My Door',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:03',
  'Big Mama Thornton',
  'I Ain''t No Fool Either',
  'Quit Snoopin'' Round My Door',
  'blues, classic blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/18Jl1Qh48P9n03fu6GwGMy',
  'found',
  90.4,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:06',
  'Sally Baby''s Silver Dollars',
  'Nine Cat Tails',
  'Sally Baby''s Silver Dollars',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3SAfsvUGEjrpJLVswZOkjP',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:07',
  'Sally Baby''s Silver Dollars',
  'I''ve Got No More Tears Left',
  'Sally Baby''s Silver Dollars',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6EBd5o2zLYEoX5D4Jyqx17',
  'found',
  92.3,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:12',
  'Johnny Adams',
  'I Won''t Cry',
  'Heart & Soul',
  'soul blues, blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2MUiOjErPeun67VowMI6Wt',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:14',
  'Mavis Staples',
  'Can You Get To That',
  'One True Vine',
  'soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3gP5iYm2qQlz8LDJUm4suS',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:18',
  'Michael Kiwanuka',
  'Hero',
  'Hero',
  'soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2Y61ZvCuuLOhdkgl1B9ekh',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:21',
  'Punkadelik',
  'Bowie Cumbia',
  'Run, White Boy, Run',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:26',
  'Fenton Robinson',
  'Somebody Loan Me a Dime',
  'Somebody Loan Me a Dime',
  'blues, classic blues, soul blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4Dhb1UW0Og7Io2qYcL1D73',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:28',
  'Randy Newman',
  'God''s Song (That''s Why I Love Mankind)',
  'Sail Away',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/71cRcYFEJOWKvPa3kPc7yU',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:31',
  'Shandri',
  'Desert Flower',
  'Shandri',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5aEuVcfIvOaKUNG1VcoFuJ',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:37',
  'Magic Sam, Mighty Joe Young, Stockholm Slim, Earnest Johnson &',
  'LOOKIN'' GOOD',
  'West Side Soul',
  'classic blues, blues, soul blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1Lw0Oi8JapLOIU8bfZV7PW',
  'found',
  87.7,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:39',
  'Jimmy Duck Holmes',
  'Cypress Grove',
  'Cypress Grove',
  'blues, classic blues, modern blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2hnU8N0IuUNr2VjDx65a7D',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:41',
  'People Museum',
  'Close 2 You',
  'I Dreamt You in Technicolor',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4uXFU2emC2rXKiD3M4qtjO',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:45',
  'Water Seed',
  '24 Days',
  'Pink!',
  'cajun',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4Na0sSHF69OZLKnEaJ9C7G',
  'found',
  79.1,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:50',
  'BOOKER T & THE MGS',
  'BEHAVE YOURSELF',
  'THE COMPLETE STAX SOUL SINGLES',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7viT9kDjq8PIx57sRCID0b',
  'found',
  76,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:55',
  'Aretha Franklin, Duane Allman',
  'Seasons Come, Seasons Go',
  'An Anthology Vol 2',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:57',
  'Aretha Franklin, Duane Allman',
  'It Ain''t Fair',
  'An Anthology Vol 2',
  'soul, motown, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4y4KGkGp6qoewYhQdcQfT3',
  'found',
  100,
  '2026-02-06 07:13:18'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-05',
  '23:59',
  'Kyle Roussel',
  'A Taste of Honey',
  'Nola A La Mode',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5kojDEEbWS9x62Elv2KVln',
  'found',
  100,
  '2026-02-06 07:13:18'
);