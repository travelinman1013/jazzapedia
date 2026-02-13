-- WWOZ Database Export
-- Generated: 2026-02-13T07:29:23.962Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-13 07:28:35
-- Days: 3
-- Tracks: 425

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-10',
  'https://open.spotify.com/playlist/6ZZPefrO7j7znsRZfiuISm',
  '{"totalTracks":109,"successfullyFound":65,"notFound":44,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-10 08:00:06',
  '2026-02-13 07:29:23'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-11',
  'https://open.spotify.com/playlist/5n4kjBpJbVhKduiaVXHbFi',
  '{"totalTracks":120,"successfullyFound":63,"notFound":57,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-12 07:11:25',
  '2026-02-13 07:29:23'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-12',
  'https://open.spotify.com/playlist/4lnbl1y50U5d8iuYeFRGe6',
  '{"totalTracks":171,"successfullyFound":107,"notFound":64,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-13 07:28:34',
  '2026-02-13 07:29:23'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '05:28',
  'Earl King & Roomful Of Blues',
  'Mardi Gras In New Orleans',
  'Glazed',
  'cajun, zydeco',
  'Overnight Music - Tuesday',
  NULL,
  'https://open.spotify.com/track/2QJwPMhCShKYuzqQQ25uck',
  'found',
  91.9,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:07',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:09',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:12',
  'Pud Brown And His New Orleans Ja',
  'How Come You Do Me Like You Do,',
  'Palm Court Strut',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:19',
  'Ethel Waters',
  'I`ve Found A New Baby',
  'Cabin In The Sky [Milan]',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/489nJ42bUnTGATbC0FTf6T',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:22',
  'Fats Waller',
  'There`ll Be Some Changes Made',
  'I`m Gonna Sit Right Down- The Ea',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3FElAk9AiSylE04JqVea41',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:26',
  'Fats Waller',
  'St. Louis Blues',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/34VGrMR1FkMHnUOfNn8Dvo',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:29',
  'Fats Waller',
  'The Viper`s Drag',
  'The Definitive Fats Waller, Vol.',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7itDgUveD8ISEzy4tvRHRa',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:40',
  'Viper mad trio',
  'Sweet Marijuana Brown',
  NULL,
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/51Xy9NFAtazp1i17HhJzSB',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:41',
  'TRIXIE SMITH',
  'JACK I''M MELLOW',
  'SIDNEY BECHET 1937-38',
  'classic blues, blues',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1dhXHPcUiYZgOP0NS6B3w2',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:44',
  'Dr. Michael White',
  'Give It Up (Gypsy Second Line)',
  'Dancing In The Sky',
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3WwoO74AaIeh9aQloQ2NiC',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:45',
  'The melatauns',
  'Coffee and Chickory',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:51',
  'Mark Braud',
  'At The Carnival',
  'Living The Tradition',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '09:58',
  'Sweet Emma Barrett',
  'If Ever I Cease To Love',
  NULL,
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0wCOvLjKSuPoHbkcDl08tY',
  'found',
  74.5,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:01',
  'Wild Magnolias',
  'All On Mardi Gras Day',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  77.5,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:05',
  'Fat Babies',
  'Tight Like This',
  'Chicago Hot',
  'ragtime, swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6Ezf6JulRr057xEKjgQuUA',
  'found',
  84,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:16',
  'Don Vappie',
  'Skoodle-Um-Skoo',
  'Creole Blues',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:27',
  'Ben Redwine',
  'His Marriage Wow',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2uZD1JaDA66Lcqv7v7uaqK',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:30',
  'Louisiana Repertory Jazz Ensembl',
  'Clarinet Marmalade',
  'The Moods Of Old New Orleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:34',
  'Miss Sophie Lee',
  'It`s Only A Paper Moon',
  'Love Street Lullaby',
  'swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2Vz77wcRw7SvGhXo3m5DMT',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:38',
  'Lars Edegran',
  'You Were Only Fooling',
  'Lars Edegran Presents Lionel Fer',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:50',
  'Cast of Waiting Around',
  'The Cocktail Conga',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '10:58',
  'Cast of Waiting around',
  'Waiting Around',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:10',
  'THE SPIRIT OF FI YI FI & THE MANDINGO WARRIORS',
  'I DON''T WANNA GO',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0LeaKIpuBwexedOINYpwPH',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:14',
  'Big Chief Bo Dollis Jr',
  'Young Time Indians Indian Red',
  'Chip Off The Old Block',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1FCiIlhhYQ8dS1X3Tm0mGC',
  'found',
  79.5,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:18',
  'Galactic',
  'Karate (Featuring KIPP Renaissance High School Marching Band)',
  'Carnivale Electricos',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:22',
  '79ers Gang',
  'Trouble',
  'Expect the Unexpected',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:26',
  'THE GOLDEN EAGLES',
  'Little Liza Jane',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:35',
  'Jon Cleary',
  'Zulu Coconuts',
  NULL,
  'cajun, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:39',
  'DERRICK FREEMANS AND SMOKERS WORLD',
  'BUMBLE JUMBLE',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:43',
  'Nigel Hall and Dj Harrsion',
  'Happy Feelin',
  'urning Bush: A Journey Through The Music Of Earth, Wind a',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:46',
  'CIMAFUNK AND BIG FREEDIA',
  'PRETTY',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:49',
  'MIKE DOPSIE',
  'EXPLODE',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7AcY7RlrtmgsSDr2OXn1HY',
  'found',
  70,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '11:57',
  'BIG CHIEF DONALD HARIRSON JR.',
  'WE ROLLIN',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:03',
  'IRMA THOMAS',
  'LOVE IS THE FOUNDATION',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:11',
  'IRMA THOMAS',
  'IT''S STARTING TO GET TO ME NOW',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6CBrcdC2fZFp0XeEQYKgcc',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:13',
  'IRMA THOMAS',
  'BREAK-A-WAY',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0GPmDShYYjV9RDUnIIx8gd',
  'found',
  89,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:17',
  'IRMA THOMAS',
  'NO USE TALKIN''',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0mLTujiJBcBoCsf4113k2c',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:20',
  'Irma Thomas',
  'You Can Have My Husband',
  'Irma Thomas Live!',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3s4M1MDsZjmTEcyPUQ5e8m',
  'found',
  93.8,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:24',
  'IRMA THOMAS',
  '(YOU AIN''T) HITTIN'' ON NOTHING',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6OkvYV7KpKT2ylFo9b3p8X',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:25',
  'Galactic - Irma Thomas',
  'Lady Liberty',
  NULL,
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1SKe4wKuS1BoSLi7oTemWF',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:29',
  'IRMA THOMAS',
  'THAT''S ALL I ASK',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3MtvGGPIetbUUhKlrUSAPh',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:31',
  'Irma Thomas',
  'Back Water Blues',
  '50th Anniversary Celebration',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0JjxpW2i161phUkLc3zTxh',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:34',
  'CHARMAINE NEVILLE BAND',
  'YELLOW SUBMARINE',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/67UB2Iv3ZmjApiSPVCzsQ2',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:40',
  'MAHALIA JACKSON',
  'I''D RATHER HAVE JESUS',
  NULL,
  'traditional gospel, gospel, christmas',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0JGmbgi2R1SCs8gq6xv7lg',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:52',
  'BETTY HARRIS',
  'RED ROSES',
  NULL,
  'northern soul, soul jazz',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3dBnTuKvbHXjnllZQQLVzg',
  'found',
  87.7,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:52',
  'Betty Harris',
  'A Bible And A Beer',
  'Intuition',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '12:54',
  'GERMAINE BAZZLE',
  'where or when',
  NULL,
  'vocal jazz',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3HPBrF3ZqqK9wDdsmljpNO',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:09',
  'CHOCOLATE MILK',
  'CONFUSION',
  NULL,
  'funk, post-disco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0PI3xxkBP77am5DjX0eNZU',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:10',
  'Ernie K-Doe',
  'Loving You',
  'Here Come The Girls- A History 1',
  'doo-wop, northern soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4SvVIHI1nCa6QfyOPAkVYv',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:13',
  'KING FLOYD',
  'IT''S NOT WHAT YOU SAY',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:19',
  'CYRIL NEVILLE',
  'Indian Red',
  NULL,
  'jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2KKaKPQ9CDfFA3nPhZ3tjc',
  'found',
  81.6,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:27',
  'Big Cheif Monk Boudeaux and Spyboy Jwan Boudeaux The Golden Eagl',
  'Hey La Hey',
  'Slip Don;t Fall',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:27',
  'SUNPIE AND THE LOUISIANA SUNSPOTS',
  'LA CHANSON DU MARDI GRAS',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:34',
  'Alexey Marti',
  'Get Up (feat MarkKibbleSeanCarey',
  'I Know What You Want',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:34',
  'The Rumble',
  'Now You Know',
  'Now You Know (single)',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:37',
  'george porter jr',
  'tito''s dumpling machine',
  NULL,
  'soul blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/3Hdr3V83E8qOQAWr366NlO',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:41',
  'Sporty''s Brass Band',
  'NO NAME!',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:48',
  'Dirty Dozen Brass Band',
  'Big Chief',
  'Medicated Magic',
  'jam band, southern rock, newgrass',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/68Bre3epNtsNIKwZYujDpT',
  'found',
  76.2,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '13:53',
  'Corey Henry & The Treme Funkte',
  'Slip Into Darkness/HeyPockeyWa',
  'Live At Vaughn''s',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
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
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:16',
  'SUN RA',
  'DISTSANT STARS',
  'FATE IN A PLEASANT MOOD',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:17',
  'TONY ALLEN',
  'lA mAQUINA DE TONY',
  'lA bOA MEETS TONY ALLEN',
  'afrobeat, latin afrobeats',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3hxycCIzd1bsXtOra7ywgi',
  'found',
  77,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:18',
  'jIOHNNY ADAM S',
  'YOU''RE IN A FOR A BIG SURPIRSE',
  'wALKIN A TIGHT ROPE',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:19',
  'CASSA OVERALL',
  'freedom jazz dance',
  'CREAM',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:19',
  'brandee younger',
  'new pinnacle',
  'gadabout season',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/7ee080RYC16iycYfkO8O8C',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:29',
  'brandee younger',
  'discernment',
  'gadabout season',
  'experimental jazz, jazz, ambient jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4iV5wHX3Fb6TtFoTTJY028',
  'found',
  75.1,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:42',
  'LAUFEY',
  'CASTLE IN HOLLYWOOD',
  'A MATTER OF TIME',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3zTnSPti5JjNsowJH4SS3u',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '16:55',
  'Orlando Gilbert',
  'Wildman ft. Donald Harrison',
  'A Crescent City Connection',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:07',
  'KIRK KNUFFKE',
  'BRIGHTNESS',
  'LIVE IN AMSTERDAM',
  'free jazz, avant-garde, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/7wkhW71obWrevxHFvuzcJc',
  'found',
  83,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:08',
  'MAKAYA MCCRAVEN',
  'BRADDAS',
  'POP UP SHOP',
  'nu jazz, experimental jazz, indie jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5Q0rO4daGhF81fmdYPONWx',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:09',
  'MIGUEL ZENON',
  'BENEDICIOIN',
  'VANGUARDIA SUBTERRANEO',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:16',
  'JOHN ELLIS AND DOUBLE WIDE',
  'THE WHISTLER',
  'FIREBALL',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:23',
  'JOHN ELLIS AND DOUBLE WIDE',
  'CROCODILE TEARS',
  'REBALL',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:24',
  'John Scofield and Lionel Loueke',
  'You i love',
  'memories of home',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:32',
  'Out Of/Into',
  'The Catalyst',
  'Motion II',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:32',
  'SML',
  'how you been',
  'how youbeen',
  'ambient jazz, indie jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/2D9WheW0H8NKkcDfLtmz0h',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:48',
  'james brandon lewis',
  'prince eugene',
  'apple cores',
  'free jazz, jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5ZKLkw9eF6hkDIaFYayOlr',
  'found',
  100,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:48',
  'joel ross',
  'trinity',
  'gospel music',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '17:59',
  'luedji luna',
  'Karma Song',
  'Um Mar Pra Cada',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-10',
  '18:00',
  'robert glasper',
  'Waitingon arrival',
  'code derivation',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-02-11 08:00:53'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-11';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:08',
  'Eddie Bo',
  'Mardi Gras At The Boiler Room',
  'New Orleans Solo Piano',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1C0LNYbECXQZIx53MDxlUF',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:13',
  'Delfeayo Marsalis & Uptown Jazz',
  'Uptown On Mardi Gras Day',
  'Uptown On Mardi Gras Day',
  'big band, jazz, smooth jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7HYOyCRwgUUVMhGSvcMfLM',
  'found',
  89.9,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:16',
  'Charmaine Neville Band',
  'Carnival Time',
  'Queen Of The Mardi Gras',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2dcgiAEIJCu7Ha3jJLUdqE',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:23',
  'Preservation Hall Jazz Band',
  'Go To The Mardi Gras',
  'Songs Of New Orleans (CD01)',
  'brass band, swing music, ragtime',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/33xTIZJALCksGN4xgNsagC',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:30',
  'Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Ri',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  72.5,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:37',
  'Harry Connick Jr.',
  'Mardi Gras In New Orleans',
  'Chanson Du Vieux Carre',
  'big band, christmas, vocal jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/14era6xqyLlqPC72zLqYTg',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:44',
  'Donald Harrison Jr',
  'Hiko Hiko',
  'Indian Blues',
  'brass band, cajun, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2x2U7jgUop3F3lTnv0QEYc',
  'found',
  74.8,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:48',
  'Margie Perez and The King Cake B',
  'Mardi Gras Carnival',
  'Mardi Gras Carnival',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:55',
  'Sayles Silverleaf Ragtimers',
  'If Ever I Cease To Love',
  'Sayles Silverleaf Ragtimers',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '06:58',
  'Johnette Downing',
  'Who Got da Baby in the King Cake',
  'Swamp Romp',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:04',
  'James Sugar Boy Crawford',
  'Jock-A-Mo',
  'Mardi Gras In New Orleans, Vol',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:06',
  'Schatzy',
  'Every Day Is Mardi Gras',
  'Macaroni and Bees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4IlLbR8eBdJRUnkENDXtRb',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:08',
  'Dr. Michael White',
  'Take Me To The Mardi Gras',
  'Adventures In New Orleans Jazz,',
  'ragtime, brass band, cajun',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6MSIfFjnIfKXGyib11QjK4',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:15',
  '79rs Gang',
  'Iko Kreyol (w Lakou Mizik)',
  'Expect The Unexpected',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:19',
  'Trombone Shorty',
  'Got To Get Ready (MG)',
  'Orleans & Claiborne',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:29',
  'Al Johnson',
  'Carnival Time',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:32',
  'Patrice LeBlanc/Kermit Ruffins',
  'Ready For Mardi Gras Day',
  'Lovin'' New Orleans',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:39',
  'Original Pin Stripe Brass Band',
  'Dancin` At The Mardi Gras',
  'I Wanna Go Back To New Orleans',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:49',
  'The Dixie Cups',
  'Iko Iko',
  'The Complete Red Bird Recordings',
  'doo-wop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0hc44Di7G79vgVhwEwgZbJ',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:51',
  'Big Chief Monk Boudreaux',
  'Sew Sew Sew',
  'Mr. Stranger Man',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '07:57',
  'Earl King & Roomful Of Blues',
  'Mardi Gras In New Orleans',
  'Glazed',
  'cajun, zydeco',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2QJwPMhCShKYuzqQQ25uck',
  'found',
  91.9,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:01',
  '79rs Gang',
  'Needle Don''t Lie',
  'Expect The Unexpected',
  'brass band',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/44eXeGJzVLqbSCPb6PCq4p',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:05',
  'Shamarr Allen',
  'House of Dance and Feathers',
  'Nine Lives - Vol I',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:09',
  'Galactic/Big Freedia/MannieFresh',
  'Act Like You Know',
  'Take Me To The River New Orleans',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:13',
  'Trombone Shorty & The New Breed',
  'Under the Bridge',
  'Second Line Sunday',
  'brass band, jazz funk, cajun',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2MpDHwb7ZhvfzoZPuxxsyx',
  'found',
  80.7,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:17',
  'Dr. John',
  'Big Bass Drum (On A Mardi Gras D',
  'On A Mardi Gras Day',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:21',
  'Cubanisimo',
  'Mardi Gras Mambo',
  'Mardi Gras Mambo',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:26',
  'Kristin Diable',
  'Iko Iko',
  NULL,
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:28',
  'Vic Shepherd',
  'If Ever I Cease to Love',
  'Crescent City Serenade',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4CuWq8ZqvPnhaiH4b8SiXO',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:30',
  'Big Chief Roddy',
  'Mardi Gras Day',
  'Calliope''s Finest Shot Callers',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1hHRkezBozPseM9KljLUvF',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:37',
  'New Orleans Nightcrawlers',
  'Mardi Gras Mumbles',
  'Live At The Old Point',
  'brass band, cajun, zydeco',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0clijMofa3f89zGsoa5C8b',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:44',
  'Oscar Washington`s New Wave Bras',
  'Mardi Gras',
  'Life Styles in Traditional Jazz',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4F2s4cnir8vlwqcryzcLjM',
  'found',
  81.5,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:52',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '08:56',
  'Tin Men',
  'Peace Pipe',
  'Exclusive copy to WWOZ',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:06',
  'tuba fats chosen few brass band',
  'joe avery''s piece',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:10',
  'wynton marsalis',
  'ory''s creole trombone',
  'louis armstrong''s hot fives and hot sevens',
  'jazz, latin jazz, big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2p3yuvdAlWRq0te3f5jFyG',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:15',
  'Ray Charles',
  'Basin Street Blues',
  'The Genius Hits The Road',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:17',
  'wynton marsalis',
  'basin street blues',
  'louis armstrong hot fives and hot sevens',
  'jazz, latin jazz, big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7nSbfHxMCEI3QuQOG4QYxj',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:21',
  'Louis Armstrong',
  'Basin Street Blues',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5Jf9KnZKBTmaFDmSwWSawU',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:24',
  'Pete Fountain',
  'Basin Street Blues',
  'Do You Know What It Means To Mis',
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2U2NUhr1IK7eP5QkVCxkFK',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:28',
  'Troy Andrews & Lionel Ferbos',
  'Basin Street Blues',
  'Trombone Shorty Meets Lionel F',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:34',
  'Pud Brown And His New Orleans Ja',
  'Eh La Bas',
  'Palm Court Strut',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:39',
  'milt hinton and danny barker',
  '.heart of my heart',
  'old man time',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:40',
  'milt hinton and danny barker',
  'i ain''t gonna give you none of my jelly roll',
  'old man time',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:48',
  'Capt John Handy',
  'Come To The Mardi Gras',
  'All Aboard Vol II',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '09:55',
  'Derrick Shezbie',
  'Dancing At The Mardi Gras',
  'Spodie`s Back',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:04',
  'Professor Longhair',
  'No Buts and No Maybes',
  'House Party New Orleans Style',
  'cajun, zydeco, classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6P5003nbAuEgLpkZt8LKrn',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:04',
  'professor longhair',
  'no buts and no maybees',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:07',
  'treme brass band',
  'hey pocky way',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:10',
  'Wonderful World of Louis Armstro',
  'The Peanut Vendor',
  'A Gift To Pops',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:33',
  'slim gaillard',
  'babalou',
  NULL,
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:33',
  'slim gaillard',
  'make it do',
  NULL,
  'swing music, bebop',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1eM9yQqcwcJoTAK2tO8ZYe',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:33',
  'slim gaillard',
  'peanut vendor',
  NULL,
  'swing music, bebop',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/18W82f4VY53EpFHW4SsSmE',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:35',
  'slim gaillard',
  'bassology',
  NULL,
  'swing music, bebop',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7HDJ1Au7va7kYHeMOHNndF',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:38',
  'wycliffe gordan and ron westray',
  'mayfest junction',
  'bone structure',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:45',
  'wycliff gordan & ron westray',
  'hush your mouth',
  'bone structure',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:50',
  'LINCOLN CENTER JAZZ ORCHESTRA',
  'C-JAM BLUES',
  NULL,
  'swing music, big band, jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5egcvD0mnAU1hLQulxxPKI',
  'found',
  73.8,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:52',
  'Billie Holiday',
  'Them There Eyes',
  'God Bless The Child- The Very Be',
  'jazz, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7tFXpD29uEFFs9hhTza7G2',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '10:55',
  'Don Vappie',
  'Absolutely',
  'Creole Blues',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:08',
  'Joe Krown Trio',
  'Feels So Good',
  'Old Friends',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:11',
  'Camile Baudoin',
  'I Aint Ready For It',
  'This Old House',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:15',
  'Harry Connick Jr.',
  'Here Comes The Big Parade',
  'She',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6PzXZ5SNK6U2RCpGjme036',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:23',
  'Jon Cleary & The Absolute Monster Gentlemen',
  'Zulu Strut',
  'Mardi Gras 2008 Basin Street Sampler',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:25',
  'BO DOLLIS AND WILD MAGNOLIAS',
  'Meet da Boys at the Battlefront',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:31',
  'Big Sam''s Funky Nation',
  'Carnival Thing',
  NULL,
  'brass band, jazz funk, funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/45JUrvSaTjTL6Cjg842shE',
  'found',
  72.4,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:36',
  'earl king',
  'ain''t no city like new orleans',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:53',
  'beau jocque and the zydeco hi rollers',
  'beau''s mardi gras',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3LxVmTMbtCTEkrIQpLFMw5',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:53',
  'bonerama',
  'meters medley',
  'So Much Love',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '11:59',
  'dr john',
  'going back home to new orleans',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/05VMAXUx7Aozx4sJNXJWat',
  'found',
  75.8,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:02',
  'Allen Toussaint',
  'I Love a Carnival Ball',
  'Mr. Mardi Gras',
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5PcFsmeYoGOA7FsYjWGv41',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:02',
  'Leroy Jones',
  'Carnival Is In The Air',
  'I''m Talkin'' Bout New Orleans',
  'brass band, ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/23PPvWfm9ADbvhJ8irwipP',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:05',
  'Joseph Zigaboo Modeliste',
  'Gonna Have A Party',
  'Zigaboo.Com',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:10',
  'Trombone Shorty',
  'Gettin'' Ready For The Mardi Gras',
  'Orleans & Claiborne',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:14',
  'bo dollis, monk boudreaux, and the REBIRTH BRASS BAND',
  'LET''S GO GET ''EM',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:24',
  'Cha Wa',
  'All On A Mardi Gras Day',
  'Funk`n`Feathers',
  'brass band, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/75SlNNvRMOnD0O9d88W27z',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:28',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans [Mardi',
  'cajun, zydeco, classic blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:33',
  'dejean brass band',
  'It Ain''t my Fault',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:37',
  'delfeayo marsalis',
  'midnight at the zulu ball',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:41',
  'Harry Connick Jr.',
  'Smokey Mary',
  'Smokey Mary',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0fvcL4yrfFB8EeiLI16MkO',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:50',
  'Steve Conn',
  'Mardi Gras Morning',
  'SINGLE',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0lMW1wERB9bx2KvymdZl6R',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '12:55',
  'C.J. Chenier',
  'Zydeco Mardi Gras',
  'Step It Up',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7JdghTDA8U4Jw7t9DxXlYq',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:16',
  'Little Queenie',
  'If Ever I cease To L Little Queenie MUS 004:35',
  'Purple Hearts',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:17',
  'harry connick and big band',
  'mardi gras in new orleans',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:21',
  'Bobby Charles',
  'The Mardi Gras Song (edit)',
  'Homemade Songs',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:26',
  'Tim Laughlin',
  'King Of The Mardi Gras',
  'Blue Orleans',
  'ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0UvP6Gat08ZrFC7VXXG3Ax',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:32',
  'Irma Thomas',
  'Mardi Gras Mambo',
  '45 SINGLE',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:35',
  'The Rumble',
  'New Suit',
  'Live at The Maple Leaf',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:42',
  'Bruce Sunpie Barnes',
  'La Chanson Du Mardi Gras',
  'Lick A Hot Skillet',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:47',
  'Golden Eagles Featuring Monk Bou',
  'Sew, Sew, Sew',
  'Lightning and Thunder',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '13:52',
  'Kermit Ruffins With The Rebirth',
  'Mardi Gras Day',
  'Throwback',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:17',
  'bud powell',
  'bouncin'' with bud',
  'the amazing bud powell,vol.1',
  'bebop, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2xQLaX3QWBs2c3kQ04WYSz',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:18',
  'terence blanchard',
  'in time of need',
  'a tale of god''s will',
  'jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7szGUyll8OYzIlPJHs0VpG',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:20',
  'milt jackson and john coltrane',
  'bags and trane',
  'bags and trane',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6JfWlP0wKOuG46Tj6xEEJ2',
  'found',
  78.3,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:23',
  'ray bryant',
  'please send me someone to love',
  'all blues',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3CpSZeI5nqxhV9PE86qE0L',
  'found',
  82,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:31',
  'wynton marsalis',
  'sister cheryl',
  'wynton marsalis',
  'jazz, latin jazz, big band',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0C85pnGNzVvIQHc5vMbPJm',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '16:42',
  'nina simone',
  'i wish i knew how it would feel to be free',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5CKHhg31HcYYhwUeeGqvhq',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:10',
  'oscar peterson',
  'hymn to freedom',
  'night train',
  'jazz, cool jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1kGQzSasZr4HY5CzjHqCPG',
  'found',
  84.4,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:51',
  'kenny garrett',
  'intro to africa',
  'sketches of md',
  'jazz, jazz fusion, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6B1jhwhDE1n4pQNUyHdRnb',
  'found',
  71.1,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:52',
  'charles mingus',
  'freedom',
  'epitaph',
  'jazz, hard bop, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4Tn5epAPRcslFBwv8INS7f',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '17:58',
  'alexey marti',
  'travesia',
  'travesia',
  'afro-cuban jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3iGdX3iiX7WQra5woeCfyl',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:23',
  'oscar brown,jr.',
  'bid ''em in',
  'sin and soul',
  'vocal jazz, soul jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7lylqofnIoCvOYQzZ24NsI',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:30',
  'max roach/abbey lincoln',
  'driva'' man',
  'we insist:freedom now suite',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/21aQUkjPwuKCuG4bHbnzGp',
  'found',
  77.6,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:32',
  'kim weston',
  'lift ev''ry voice and sing',
  'black power:music of a revolution',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:33',
  'dizzy gillespie',
  'kush',
  'an electrifying evening',
  'bebop, jazz, afro-cuban jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3Z87tfg5O06pGozV6fTOkZ',
  'found',
  98,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:38',
  'chief smiley ricks',
  'second line',
  'feathercraft',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:38',
  'solomon burke',
  'none of us are free',
  NULL,
  'soul, soul blues, classic soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1MBgaJoraHR7RHgAV58QU4',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '18:53',
  'donald harrison,jr.',
  'i''m the big chief of congo square',
  'quantum leap',
  'brass band, cajun, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2DTf1EejKb4q0adUO3JzVq',
  'found',
  82.7,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '19:02',
  'Lloyd Lambert',
  'Hop & Jump',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
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
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:00',
  'The New Orleans BINGO! Show',
  'New Orleans',
  'For A Life Ever Bright - Vol II',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2rt9eK9x0xmZt8KVto6TDw',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:08',
  'Clifton Chenier',
  'Party Down At The Blue Angel Club',
  '60 Minutes with the King of Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3ae7pYMYNAVEPTA96UsNIf',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:13',
  'Galactic',
  'Voyage Ton Flag',
  'Carnivale Electricos',
  'jam band, jazz funk, funk rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2ZjFlT7l8Wk4S8LDmTu9VP',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:17',
  'Steve Riley and the Mamou Playboys',
  'King Zydeco',
  'Bayou Ruler',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4aOCQDuyviia1IegmG8XFX',
  'found',
  91,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:20',
  'Boozoo Chavis',
  'Zydeco Mardi Gras',
  'Cajun & Zydeco Mardi Gras',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0SZI1reQd7sg1DK9iGxyNb',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:27',
  'Alex McMurray',
  'Glue Stick Sitaution',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:31',
  'R Scully',
  'N.O.L.A',
  'New Confusion',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:33',
  'Galactic feat. Josh and Ryan from M40F',
  'Liqour Pang',
  'Ya-Ka-May',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:37',
  'Andre Williams and The New Orleans Hellhounds',
  'Can''t Take ''Em Off',
  'Can You Deal With It?',
  'northern soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6LCHOKCXWbfOUPpR3d7Hi4',
  'found',
  94,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:40',
  'Andre Williams',
  'Let Me Put It In',
  'Silky',
  'northern soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/68p6HPZlvrJdFTAY5gDEpT',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:46',
  'Morning 40 Federation',
  'Chew It',
  'Live Personal Hygiene',
  'cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2cnrFvPeA45zk64gqz2qE6',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:50',
  'Bobby MG and The Creeps',
  'Mardi Gras Qreep',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:56',
  'Quintron',
  'Wild West(bank)',
  'Jam Skate',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '22:59',
  'Ricky B / DJ Black Pearl',
  'Big Boss Man',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:08',
  'Big Chief Monk Boudreux and the Golden Eagles',
  'Indian Red',
  'Live At The H & R Bar',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:14',
  '79rs gang',
  'drama',
  NULL,
  'brass band',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6BF1FcKDZu35Vys6beKuJu',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:19',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:25',
  'DJ Jubilee',
  'Stop Pause, Do The Jubilee All',
  'The Cartoon Crew',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:32',
  'J Dilla/ Common/ D'' Angelo',
  'So far to go',
  NULL,
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4omO3Xwm4REEK5HGT6e6yY',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:38',
  'J Dilla',
  'Lightworks',
  'Donuts',
  'plunderphonics, alternative hip hop, jazz rap',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0TIItu69NmCbgvJUD0Zbnb',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:40',
  'D''Angelo',
  'Ain''t That Easy',
  'Black Messiah',
  'neo soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2yx7XX9v7M6yhm2fBG7K3E',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:46',
  'The Carriere Brothers',
  'Bosco Stomp',
  NULL,
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/38coEav2xr3xInbkdv3itJ',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:47',
  'Vin Bruce',
  'Dans Le Claire De La Lune',
  'Greatest Hits',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6HcsAb4WhC6PqwOG4oAD4h',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:50',
  'Maddy Kirgo',
  'Crush',
  'Shadow On My Light',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1y0TFhfY7ILfkOCqvV8gBG',
  'found',
  100,
  '2026-02-12 07:11:25'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-11',
  '23:54',
  'Jeff Parker',
  'Freakadelic',
  NULL,
  'bluegrass, christian bluegrass, experimental jazz',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/32tkzMaROMJN9Adl2Wu86V',
  'found',
  100,
  '2026-02-12 07:11:25'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-12';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '06:01',
  'Mike Dillon',
  'Waltz While You Sleep',
  'Mike Dillon',
  'jam band, cajun',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2NKjAkLZQq2ysa4Oq427kH',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '06:24',
  'Saheb Sarbib',
  'Daybreak',
  'Saheb Sarbib and His Multinational Big Band',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '06:24',
  'mulatu astatke & the heliocentrics',
  'anglo ethio suite',
  'inspiration information',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '06:25',
  'Pharaoh Sanders',
  'You''ve Got To Have Freedom',
  'Journey To The One',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '07:09',
  'Eric Dolphy',
  'Hat and Beard',
  'Out To Lunch',
  'free jazz, jazz, hard bop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2VzRmb0GCPDBv6FddHGu7s',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '07:24',
  'Moondog, Rog Burger',
  'Bird''s Lament',
  'Bird''s Lament',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '07:25',
  'Art5 Blakey',
  'afrique',
  'The Witch Doctor',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '07:25',
  'DIZZY GILLESPIE',
  'MANTECA',
  'MANTECA',
  'bebop, jazz, afro-cuban jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2nH9vhGDkvhsx1BS6d7uec',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '07:32',
  'Jenny Scheinman',
  'All Species Parade',
  'All Species Parade',
  'ambient folk, jazz, jazz fusion',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3tHUnr2Sup0vSiHxs6XOrv',
  'found',
  72.7,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '08:03',
  'Baby Dodds Trio',
  'Corinne Died On The Battlefield',
  'Jazz A''La Creole',
  'ragtime',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/6CvUGjlfGDYGFCOBUVj6Ik',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '08:05',
  'David Murray',
  'Morning Song',
  'New Life',
  'free jazz, experimental jazz, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5tyDSyZqEcdZuQgDoIIWAX',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '08:05',
  'danny barker',
  'Corrine died on the battlefield',
  NULL,
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '08:06',
  'Baby Dodds Trio',
  'Chocko Me Feendo Hey',
  'Jazz A`La Creole',
  'ragtime',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/6QE7ArLBZCgfBu7uSZJSH1',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '08:07',
  'danny barker',
  'Chocko Mo Feendo Hey',
  NULL,
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '08:20',
  'Baby Dodds Trio',
  'Tootie Ma Is A Big Fine Thing',
  'Jazz A''La Creole',
  'ragtime',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/17QS5h4YToOTKsPsjSAl2x',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:03',
  'Kermit Ruffins',
  'Good Morning New Orleans',
  NULL,
  'brass band, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/09LHgBX7qtVQtFsZufi6vx',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:06',
  'Bo Dollis',
  'Indian Red',
  NULL,
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/6u3aaE0Q9C86mjRRDzf44G',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:08',
  'Al Johnson',
  'Carnival Time',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:15',
  'Harry Connick, Jr.',
  'Take Her To The Mardi Gras',
  NULL,
  'big band, christmas, vocal jazz',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0sX3R8epDmZEGedP8HUXe2',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:18',
  'Kevin Louis',
  'Medley Mix',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:24',
  'Algiers Brass Band',
  'Whooping Blues',
  NULL,
  'brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/7uwyXA4uJ83DvovDZCS0Cd',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:28',
  'Dr John',
  'Iko Iko',
  NULL,
  'cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1vhlVbHnbKJPD7pqCC0cE7',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:33',
  'The Hawkettes',
  'Mardi Gras Mambo',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:35',
  'Tuba Fats',
  'Mardi Gras In New Orleans',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:42',
  'THE METERS',
  'HEY POCKY A- WAY',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4RvopSUhdibG1zPwgYAMHl',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:47',
  'Dr. John',
  'Mama Roux',
  NULL,
  'cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1RMa7sVQua8dMiqixX2bYM',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '09:50',
  'Original Pinstripe Brass Band',
  'Ooh Na Nay',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:01',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'single',
  'cajun, zydeco, classic blues',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:04',
  'Neville Brothers',
  'Little Liza Jane',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:09',
  'Damion Neville',
  'Mardi Gras In New Orleans',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:12',
  'Lucien Barbarin',
  'Tootie Ma',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:19',
  'Ceasar Elloie',
  'Bourbon Street Parade',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1TUCd84jfAk4wETx0uKVEa',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:24',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:28',
  'professor longhair feat. earl king',
  'Big Chief',
  'ultimate mardi gras',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:32',
  'THE WILD MAGNOLIAS',
  'NEW SUIT',
  NULL,
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/48gaRnJBOc3xNp7UoV7cOX',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:35',
  'Wild Tchoupitoulas',
  'Big Chief Got A Golden Crown',
  NULL,
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1syAcbLLO8U4m7r0W3kmo9',
  'found',
  84.7,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:41',
  'Pete Fountain',
  'High Society',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/6c8yGsw8VG5XYhn6rzcoee',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:44',
  'Pete Fountain',
  'South Rampart Street Parade',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/463PYFwk9Iq6Ev6EnfTWRh',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:48',
  'Al Hirt',
  'Show Me The Way To Go Home',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4NwnyBC6Oh1iPtzYrHuOmJ',
  'found',
  90.6,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '10:50',
  'Charmaine Neville Band',
  'Clean Up',
  'Queen Of The Mardi Gras',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2iSG1ixENuCm7Icj8tE5zc',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:13',
  'Donald Harrison, Jr.',
  'Indian Red.',
  'Indian Blues',
  'brass band, cajun, jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3qkHCoqehDTWIbuxVx6x4f',
  'found',
  84.4,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:13',
  'The Gaturs feat. Willie Tee',
  'Cold Bear',
  'Wasted',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:14',
  'Gypsyphonic Disko',
  'BayouFiyoPhonic',
  'Gypsyphonic Mardi Gras Mixtape',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:14',
  'Smokey Johnson',
  'It Ain''t My Fault.',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1Fxviv2lNO5ggqVk3W8pIW',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:20',
  'The Explosions',
  'Hip Drop',
  NULL,
  'indorock',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5mjoOfRXOefL01zJnxEFht',
  'found',
  83.3,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:24',
  'Dirty Dozen Brass Band and Wu Tang',
  'DirtyBrass',
  'Wu Orleans',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:30',
  'Pal Joey',
  'Hot Music',
  NULL,
  'chicago house, lo-fi house',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1GaWRCPMf4nHnpcVqiuIji',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:31',
  'Lil'' Rascals Brass Band',
  'Knock With Me Rock with Me',
  NULL,
  'brass band, new orleans bounce, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/05Dx432oTmHFfAqDSqdDbY',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:36',
  'James Andrews',
  'Got Me a New Love Thing',
  'Satchmo of the Ghetto',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6OyL3VHeArzCiERjd9MEnB',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:39',
  'Dr. John',
  'Goin'' Back to New Orleans',
  'Goin'' Back to New Orleans',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4pdtvBjDw8YylroBZKotIy',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:45',
  'Smiley Ricks and Indians of the Nation',
  'feathercraft',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:48',
  'The Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Right)',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '11:57',
  'Galactic',
  'You Don''t Know (with Glen David Andrews)',
  'Ya-Ka-May',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:00',
  'DJ Jubilee',
  'The What Stop',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:18',
  'Ernie Vincent',
  'Dap Walk',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:18',
  'Lee Dorsey',
  'Ride Your Pony.',
  NULL,
  'northern soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5xsXzVOEA83GlDZ14Q74yh',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:24',
  'Big Sam''s Funky Nation',
  'Big Sam''s Funky Nation',
  NULL,
  'brass band, jazz funk, funk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/03X3i91no96UJPDM6XQMlJ',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:26',
  'Stooges Brass Band',
  'Where ya From',
  'It''s About Time',
  'brass band, cajun, new orleans bounce',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3MynJLPnMX2VlXWNLiaqf0',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:31',
  'Souls Rebels',
  'Let Your Mind Be Free',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:33',
  'Troy ''Trombone Shorty'' Andrews & Orleans Avenue',
  'We Gonna Make You',
  'Orleans & Claiborne',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:42',
  'Rebirth Jazz Band (Rebirth Brass Band)',
  'Chameleon.',
  'Here to Stay',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:50',
  'Big Chief Alfred Doucette',
  'Three in the Morning',
  NULL,
  'cajun, zydeco, soul blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7xFZMFpgO13oZInU8869YA',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '12:52',
  'Big CHIEF MONK BOUDREAUX & the golden eagles',
  'SHOTGUN JOE',
  'Lightnin'' and Thunder',
  'cajun, brass band, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6BWHpty604MHFhcxRMEICO',
  'found',
  75.3,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:06',
  'Charles Brimmer',
  'Play Something Sweet',
  'Soulman',
  'northern soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1btHRRb9uaJIpiwrarpnvI',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:07',
  'King Floyd',
  'Groov-a-lin',
  'The Heart of the Matter',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:10',
  'Mavis John',
  'Use My Body',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4cvTdZKBSoOTve7vTe60ve',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:13',
  'Wild Magnolias',
  'Life is a Carnival.',
  'Life is a Carnival',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1CYt8hnBEwigMBnEWA13a0',
  'found',
  82.1,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:20',
  'Perico Hernandez Hernandez',
  'Potpurri #1 (El Alacran/ Yenyere Cuma/ Te Cayo Carcoma / Sire)',
  'Carnival Nights in Havana',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:26',
  'Cubanismo',
  'Nothing Up My Sleeve',
  'Mardi Gras Mambo',
  'latin jazz, afro-cuban jazz, son cubano',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/14IlqLHrTv9GCqkwp9qNna',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:32',
  'Ed Sanders',
  'Did Mark Twain meet Marie Laveau?',
  'Poems for New Orleans',
  'spoken word, avant-garde',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7gUravlKUedkObUZiXlL3B',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:39',
  'Gabrielle Cavassa',
  'Prisoner of Love.',
  'Diavola',
  'vocal jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/51I6YF51LiQf3bZALtnHUO',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:45',
  'Johnny Adams',
  'Blue Gardenia (w/ Harry Connick,Jr)',
  'The Verdict',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:46',
  'Dorothy Moore',
  'Funny How Time Slips Away',
  'Misty Blue',
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4EmDfJApR28fMkhXZw6bKD',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:50',
  '007',
  'Puppet on a String',
  'The Return of Ben Downlow',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/60s8E04rpb92d9h44YNH0G',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '13:54',
  'Young Guardians of the Flame',
  'Indian Red,',
  'New Way Pocky Way',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:00',
  'Dr. John',
  'Eleggua',
  'Locked Down',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5zbKKnn0Ar6EMkP9q7nzd9',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:03',
  'Betty Wright',
  'Clean Up Woman',
  'The Platinum Collection',
  'classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6uqTETWok9npbL4c9cuLVh',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:06',
  'Aretha Franklin',
  'Chain Of Fools',
  '30 Greatest Hits [Disc 1]',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2oZmMp5M6L0Rh7G84Um2tF',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:08',
  'Meters',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  'funk, soul, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3KfmYf7PTtFNYFNNhsdLZt',
  'found',
  73.9,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:10',
  'Etta James',
  'If You Want Me To Stay',
  'Life, Love & The Blues',
  'soul, soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3ux4SABKVVgyXzB0A4D2zQ',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:16',
  'Koko Taylor',
  'Hound Dog',
  'Force of Nature',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3RqiXMnO2rfxVHzi9HovZM',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:21',
  'Chuck Carbo',
  'Meet Me At The Station',
  'Drawers Trouble',
  'doo-wop',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7zfMrgwWYHHd5pGAcqzOOo',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:24',
  'Luther Kent',
  'Gotta Make New Orleans',
  'Luther Kent',
  'ragtime',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/59git0SrBtHuDTuHM4oYa1',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:27',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:31',
  'Aretha Franklin',
  'Rock Steady',
  '30 Greatest Hits [Disc 2]',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7rvGZDlfqCjY9EWEUg3Xs6',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:34',
  'Marvin Gaye',
  'Ain`t That Peculiar',
  'Great Songs and Performances [19',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/34ZfE0AYWeOJktUffTxDFl',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:37',
  'Rufus Thomas',
  'The Breakdown (Part 1)',
  'Funkiest Man Alive- The Stax Fun',
  'classic soul, soul, northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3JsG5lLvDChBIDQjTwsy96',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:41',
  'Earl King',
  'No City Like New Orleans',
  'King Of New Orleans',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:45',
  'James Brown',
  'Papa`s Got A Brand New Bag',
  'Soul On Top',
  'funk, soul, motown',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/00pGV4EInVd77cnOIwPTCv',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:50',
  'Snooks Eaglin',
  'I Went To The Mardi Gras',
  'The Crescent City Collection',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '14:54',
  'Joe Simon',
  'The Chokin` Kind',
  'Best Of Joe Simon',
  'philly soul, classic soul, northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3ouh6oB7IGqP2HVFCVFpLj',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:06',
  'Meters',
  'Hey Pocky A-Way (Single Version)',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7Jea2uirtEcZMqUTjuvJtq',
  'found',
  73.9,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:10',
  'CHIEF BLZCK SIOUX',
  'NEW SUIT',
  'DOING IT MY WAY',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:13',
  'The Rumble',
  'Uptown',
  'Live at The Maple Leaf',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:21',
  'Earl King',
  'Trick Bag',
  'Come On The Complete Imperial Re',
  'new orleans bounce, classic blues, cajun',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6bbm9n1aZ3KKqsfvWYO18r',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:24',
  'Lee Dorsey',
  'Lottie Mo',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/59Vvb8xnK2YoToN5wfOs8Z',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:26',
  'Ernie K-Doe',
  'Mother-In-Law',
  'Here Come The Girls- A History 1',
  '',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6L5ZVZSkI3u2H1BDUhtkEW',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:32',
  'Chuck Carbo',
  'Meet Me With Your Black Drawers',
  'Drawers Trouble',
  'doo-wop',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6vdJ7WWW80fWLsgFcPkMLv',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:38',
  'Big Al Carson',
  'All In A Mardi Gras Day',
  'Ultimate Mardi Gras',
  'zydeco, cajun',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3JIYVccmW7QGweiMccSOjg',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:44',
  'Johnny Adams',
  'Bulldog Break His Chain',
  'Man of My Word',
  'soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6Lds5HNnNUUezB9XNtw0Kt',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:48',
  'Dr. John',
  'Goin` Back To New Orleans',
  'Goin` Back To New Orleans',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4pdtvBjDw8YylroBZKotIy',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:53',
  'Snooks Eaglin',
  'Josephine',
  'Live In Japan',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '15:58',
  'Big Al Carson',
  'Take Your Drunken Ass Home',
  'Take Your Drunken Ass Home',
  'zydeco, cajun',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2RY3Pq5O23EbzNFjALli52',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:03',
  'Chick Corea',
  'Summertime',
  'Duet (Chick Corea & Hiromi) (CD0',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:21',
  'New Orleans Uptown Orchestra',
  'Mardi Gras Mambo',
  'Uptown On A Mardi Gras Day',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:24',
  'Kermit Ruffins',
  'Song For My Father',
  'Livin'' A Treme Life',
  'brass band, cajun',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5i19UHS02oiAFq0zQOf08T',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:24',
  'Wanda Rousan',
  'all of me.',
  'It''s What I do',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:24',
  'nEW oRLEANS UPTOWN jAZZ oRCHECTRA',
  'Street Parade',
  'Uptown On A Mardi Gras Day',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:32',
  'Billy Holiday',
  'But Beautiful',
  'Best Of',
  'jazz, vocal jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/3cxsbR45aJapa001BxlGYL',
  'found',
  70.2,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:35',
  'Bernard Purdie',
  'Moanin''',
  'Soul Trian',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:42',
  'Ray Brown Trio',
  'Blues For Junior (Herb Ellis)',
  'Some Of My Best Friends Are... G',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '16:43',
  'Russell Gunn',
  'You Don''t Know What Love Is',
  'Jazz For Quiet Times',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5RjAkeG9u32FvRsy3JyUgN',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:05',
  'Alexey Marti',
  'Carnival',
  'Mundo',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:05',
  'Herbie Hancock',
  'The Peacocks',
  'Round Midnight: The Original Motion Picture',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/7uAOoumSeqvlOPVg9qZLzl',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:05',
  'Wallace Roney',
  'Smooch',
  'Jazz For The Quiet Time',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/6R4OlJ2Hn2pUougimBrulJ',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:13',
  'Phillip Maual',
  'Fragile',
  'Love Happed To Me',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:23',
  'Kurt Elling',
  'Nightmoves',
  'Nightmoves',
  'vocal jazz, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4gf4J8rOHX3wqh7aaEw9KF',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:23',
  'Mark Whitfield',
  'Nature Boy',
  'Forever Love',
  'smooth jazz, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/2CQrQpolWcqMBSu3gS5MWw',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:32',
  'Donald Harison Jr.',
  'Softly As In A Morning Sunrise',
  'Free To Be',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:38',
  'Oliver Nelson',
  'Blues For Mr. Broardway',
  'More Blues And The Abstract Truth',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:47',
  'john coltrane',
  'giant steps',
  'giant steps',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0gCKwy3YmhKc9rzjYjTQKx',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '17:52',
  'Lee Morgan',
  'Hocus-Pocus',
  'The Sidewinder',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4oLmztYOcw02rDTUe7dfNO',
  'found',
  71,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '18:00',
  'Miles Davis',
  'STRAIGHT, NO CHASER (MONK)',
  'Milestones',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '18:17',
  'Branfrord Marsalis',
  'The Ballard Of Chet Kincaid',
  'Crazy People Music',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '18:17',
  'Dexter Gordon',
  'The Girl With The Purple Eyes',
  'More Than You Know',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0Y5b1eRD9UVtLEKwTpY6Dd',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '18:34',
  'Maurice Mobetta Brown featuring Kamasi Washington and MonoNeon',
  'Odyssey',
  'Odyssey',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '18:34',
  'Pat Metheny',
  'In On It',
  'Side-Eye',
  'jazz fusion, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/7jKhWfwscF6ZYXCKM9iA9k',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '18:40',
  'Grover Washington Jr.',
  'French Connections',
  'Then And Now',
  'soul jazz, smooth jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0fxQI8lfQ2Xc0WRGqLDfOH',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '18:55',
  'Herbie Hancock',
  'Chameleon',
  'The Best of Herbie Hancock- The',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4Ce66JznW8QbeyTdSzdGwR',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:07',
  'the spirit of fi yi yi, the mandingo warriors',
  'fiyiyi (on mardi gras day) [remastered]',
  'when that morning comes',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:15',
  'big chief juan pardo, golden comanche',
  'looking for mardi gras',
  'spirit food',
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2fF0TBEZ4lyyGhvTXvMxl3',
  'found',
  93.1,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:19',
  'trombone shorty',
  'everybody in the world',
  'lifted',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:23',
  'Trombone Shorty & The New Breed Brass Band',
  'Tambourine and Fan',
  'secondline sunday',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:26',
  'Big Chief Romeo Bougere ft Dawn Richard',
  'I''m Feelin Good!',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:31',
  'Jon Batiste, Michael Batiste, Big Chief Romeo',
  'tell the truth (uptown remix)',
  'we are (the deluxe edition)',
  'nu disco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5y3wExVKAvos0Zo3JS0Rh8',
  'found',
  77.1,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:35',
  'big chief monk boudreaux, Spybooy J',
  'jock-a-mo',
  'slip don''t fall',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:41',
  'Wild Tchoupitoulas',
  'Hey Mama (Wild Tchoupitoulas)',
  'Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6uvr6YMAP68PLSFhMFhhXH',
  'found',
  84.7,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:47',
  '79rs gang',
  'History',
  'expect the unexpected',
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5S6sJIVOOvb5k7ysUa6EEJ',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:49',
  'trombone shorty, new breed brass band',
  'way downtown (feat. big chief Romeo Bougere)',
  'second line sunday',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:52',
  'christian Scott aTunde Adjuah',
  'shallow water: a tribute to big chief donald harrison jr',
  'bark out thunder roar out lightning',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '19:59',
  '79rs Gang',
  'pretty big chief',
  'expect the unexpected',
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1wazGKI0IVlrwHrWdXFbfj',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:00',
  '79rs gang',
  'needle don''t lie',
  'expect the unexpected',
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/44eXeGJzVLqbSCPb6PCq4p',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:05',
  'flagboy giz',
  'phantom of the indian council',
  'smoke signals',
  'new orleans bounce, bounce, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6KIQaqGm0JLgNg0zRjKyXC',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:10',
  'BO DOLLIS JR.',
  'INDIAN BLUES',
  'my name is bo',
  'cajun, brass band, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1uIQskJ8CVpxkKRpSZWnqd',
  'found',
  70.5,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:16',
  'tribal gold',
  'where the indians meet',
  'where the indians meet - single',
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5viVwLF3DbbXEzeVTAva1r',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:20',
  'marcus l. miller',
  'fire-history (feat. Big Chief Shaka Zulu)',
  'fire-history (feat. Big Chief Shaka Zulu)',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:42',
  'the neville brothers',
  'Little Liza Jane',
  'The Neville Brothers Live In New Orleans',
  'cajun, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5KRVoRTCAD7Qgzx0BxUD0l',
  'found',
  73.8,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:45',
  'rebirth brass band',
  'cassanova',
  'ultimate street parade:New Orleans',
  'brass band, zydeco, new orleans bounce',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6ejv6MUEHrh0WetjCuB4K1',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:50',
  'trombone shorty',
  'buckjump (feat. rebirth brass band, 5th ward weebie)',
  'for true',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:52',
  'big 6 brass band',
  'haters',
  'big six',
  'brass band, new orleans bounce',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3fz2AmIzbfnZWnJzSqr1cd',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '20:57',
  'stooges brass band',
  'thursday night house party',
  'thursday night house party',
  'brass band, cajun, new orleans bounce',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0NNPaMl9nYA8mHZd86vCrg',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:06',
  'big sam''s funky nation',
  'feet on the floor',
  'feet on the floor-single',
  'brass band, jazz funk, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7sSIIyZRS40wCb5ZdPO8Jv',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:11',
  'big sam''s funky nation',
  'carnival thing (feat. the dirty dozen brass band)',
  'carnival thing (feat. the dirty dozen brass band)',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:15',
  'The Dirty Dozen Brass Band',
  'My Feet Can''t Fail Me Now',
  'our new orleans (expanded edition)',
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6d5kKKrErWYLTLkzNhQNAN',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:20',
  'the dirty dozen brass band',
  'Don''t Stop The Music',
  'twenty dozen',
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4CG6Zcz8KDHRRaHqlA3F1Y',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:25',
  'Soul Rebels Brass Band',
  '504',
  'unlock your mind',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:30',
  'the original pinettes brass band',
  'Baby',
  'finally',
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0vxxI6N9IB96o0G4pLRmnu',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:38',
  'the original pinettes brass band',
  'put your right foot forward',
  'finally',
  'brass band',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/66Kkb6Pb2K2ARjpi4AB3Ax',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:47',
  '8 -sighty',
  'halfway',
  'halfway - single',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:50',
  'westbank red',
  'three tenderkisses',
  'red radio, vol 1',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:54',
  'westbank red',
  'boo''d up',
  'red radio vol 1',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '21:59',
  'westbank red',
  '365',
  'red radio vol1',
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:05',
  'Luscious Jackson',
  'Pele',
  'NATURAL INGREDIENTS',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7Hf2XAx7HZKA4JJ8ByAgXz',
  'found',
  78,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:06',
  'Rebirth Brass Band',
  'Thinking About Ya',
  'Hot Venom',
  'brass band, zydeco, new orleans bounce',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0Y81317EaeUqgyAGAHJaUo',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:16',
  'The Soul Rebels',
  'Culture in the Ghetto',
  'Let Your Mind Be Free',
  'brass band, new orleans bounce, cajun',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0Xg6xRwFDWC4Z9fnf61Mok',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:27',
  'Dick Dale & His Del-tones',
  'Miserlou',
  'Surfer''s Choice',
  'surf rock, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/587i4g5fwUDAdl5xTP7UtW',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:28',
  'SLY & THE FAMILY STONE',
  'IF YOU WANT ME TO STAY',
  'FRESH',
  'funk, motown, classic soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2BydLQAh7CUIFvSEqAMc4x',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:34',
  'Bomba Estereo',
  'Bailar Conmigo',
  'Elegancia Tropical',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:48',
  'Ani Difranco',
  'Hat Shaped Hat',
  'Up Up Up Up Up',
  'anti-folk, singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1pKiJSJCIY3wnOXdfCMdpt',
  'found',
  98,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:50',
  'Water Seed',
  'Get Wild',
  'Pink!',
  'cajun',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4hRhIzhZomggo42hqeZjmV',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:53',
  'B-52''s',
  'Party Out of Bounds',
  'Party Mix!',
  'new wave, post-punk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7kWu31DOcgoosVElnFZ1OO',
  'found',
  82.7,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '22:59',
  'B-52''s',
  'My Private Idaho',
  'Party Mix',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:02',
  'Betty Davis',
  'Don''t Call Her No Tramp',
  'This Is It!',
  'funk rock, funk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4iqeR5XYeTMlcwumDnsZZN',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:10',
  'Grace Jones',
  'Warm Leatherette',
  'Warm Leatherette',
  'art pop',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5cAy7DIWiUybf2P4dFEekt',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:19',
  'Betty Davis',
  'If I''m in Luck, I Might Get Picked Up',
  'This is It!',
  'funk rock, funk',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5eodjgTYfige8zIrGFeVvd',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:20',
  'Toots & the Maytals',
  'hard to handle',
  'Live in Memphis',
  'reggae, rocksteady, ska',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5xoWWp0HdXcSiybbU8pfSE',
  'found',
  78,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:27',
  'Dojo Cuts & Roxie Ray',
  'Lift Me Up',
  'Take from Me',
  'retro soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1uyj6ycPIp7i907LsGbUmA',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:33',
  'Saada Bonaire',
  'More Women',
  'Saada Bonaire',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:44',
  'Los Guiros',
  'Night People',
  'Alma de Cumbia',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:50',
  'Gitkin',
  'Go Time',
  'Go Time',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/02IoYFcV0eBeVmCsF6tOUg',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:51',
  'The Tibbs',
  'Cleaned Out',
  'Cleaned Out',
  'retro soul, soul blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2oxFYjDFaJ1ph1vO04EsZw',
  'found',
  100,
  '2026-02-13 07:28:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-12',
  '23:54',
  'Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Ri',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  72.5,
  '2026-02-13 07:28:34'
);