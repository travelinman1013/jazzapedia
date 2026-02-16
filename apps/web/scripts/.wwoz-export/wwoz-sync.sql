-- WWOZ Database Export
-- Generated: 2026-02-16T07:06:37.457Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-16 07:05:52
-- Days: 4
-- Tracks: 476

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-13',
  'https://open.spotify.com/playlist/14eiKM0haSrLcepjFKw9sD',
  '{"totalTracks":126,"successfullyFound":87,"notFound":39,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-14 07:35:29',
  '2026-02-16 07:06:36'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-14',
  'https://open.spotify.com/playlist/5vzoQhILz5eeXHA2qJYKHA',
  '{"totalTracks":161,"successfullyFound":88,"notFound":73,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-15 07:56:06',
  '2026-02-16 07:06:36'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-15',
  'https://open.spotify.com/playlist/4oegwjMVZom9KVF38TGlDo',
  '{"totalTracks":157,"successfullyFound":107,"notFound":50,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-16 07:05:51',
  '2026-02-16 07:06:36'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-16',
  NULL,
  '{"totalTracks":3,"successfullyFound":3,"notFound":0,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-16 07:05:51',
  '2026-02-16 07:06:36'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-13';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '05:28',
  'Al Johnson',
  'Carnival Time',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Overnight Music - Friday',
  NULL,
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:05',
  '79rs Gang',
  'Iko Kreyol (w Lakou Mizik)',
  'Expect The Unexpected',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:09',
  'TONYA BOYD-CANNON & DA TRUTH BRASS BAND',
  'EVERYWHERE ELSE IT''S TUESDAY',
  'SINGLE',
  'brass band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4aruXzSviX46ixqKG9mAM9',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:14',
  'Earl King',
  'Street Parade',
  'Mardi Gras In New Orleans [Mardi',
  'new orleans bounce, classic blues, cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:17',
  'Lee Dorsey',
  'Ya Ya',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4hsNBu9gncNn0q00CTxT24',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:19',
  'Chuck Carbo',
  'Meet Me At The Station',
  'Drawers Trouble',
  'doo-wop',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7zfMrgwWYHHd5pGAcqzOOo',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:23',
  'Meters',
  'Hey Pocky A-Way (Single Version)',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7Jea2uirtEcZMqUTjuvJtq',
  'found',
  73.9,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:26',
  'Robert Parker',
  'Barefootin',
  'The Wardell Quezerque Sessions',
  'northern soul',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0VwK5pLjwFPy8FSEC1htp9',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:28',
  'Lee Dorsey',
  'Everything I Do Gonh Be Funky',
  'Great Googa Mooga (cd2)',
  'northern soul',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/67YsQQ5gqoJf7SCjwdp0K2',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:32',
  'Leroy Jones',
  'When My Dreamboat Comes Home',
  'Mo` Cream From The Crop',
  'brass band, ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6hkPavPwg2nh4DkND4egec',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:38',
  'Lee Dorsey',
  'Lottie Mo',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/59Vvb8xnK2YoToN5wfOs8Z',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:40',
  'The Dixie Cups',
  'Iko Iko',
  'The Complete Red Bird Recordings',
  'doo-wop',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0hc44Di7G79vgVhwEwgZbJ',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:42',
  'Meters',
  'Just Kissed My Baby',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1TB0dZqFRQsnf4fLLLRKQV',
  'found',
  73.9,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:47',
  'Ernie K-Doe',
  'A Certain Girl',
  'Here Come The Girls- A History 1',
  'doo-wop, northern soul',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5VkOlvkvY7OGO5nobVRDLV',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:50',
  'Frankie Ford',
  'Sea Cruise',
  'The Best Of',
  'doo-wop, rockabilly',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5rtYGnyKCHaD977h5vhC3L',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:53',
  'Clarence Frogman Henry',
  'Ain''t Got No Home',
  'Congo Mombo # 5',
  'doo-wop',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/06r30bE8T4VXXN7hI9o93L',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:55',
  'THE WILD MAGNOLIAS',
  'NEW SUIT',
  'THEY CALL US WILD',
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/48gaRnJBOc3xNp7UoV7cOX',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '09:58',
  'Walter Wolfman Washington',
  'Can I Change My Mind',
  'On The Prowl',
  'soul blues, blues',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3WWBYZT2w0r2mR4wovxW7V',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:02',
  'Dr. John',
  'Goin` Back To New Orleans',
  'Goin` Back To New Orleans',
  'cajun, zydeco',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4pdtvBjDw8YylroBZKotIy',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:06',
  'Johnny Adams',
  'Bulldog Break His Chain',
  'Man of My Word',
  'soul blues, blues',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6Lds5HNnNUUezB9XNtw0Kt',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:13',
  'Allen Toussaint',
  'Brickyard Blues',
  'Songbook [Deluxe Edition] (Disc',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7yGaEl5fu2i2b2pVWYxuFC',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:17',
  'Chuck Carbo',
  'Meet Me With Your Black Draws On',
  'with Ed Frank''s N.O. R& B Band',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:22',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:25',
  'Donald Harrison Jr',
  'Hu-Ta-Nay',
  'Indian Blues',
  'brass band, cajun, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1KEPPeYcTFwOOrhU0bwKZu',
  'found',
  82.7,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:31',
  'Ernie K-Doe',
  'Mother-In-Law',
  'The Best Of Ernie K-Doe',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6L5ZVZSkI3u2H1BDUhtkEW',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:35',
  'Robert Parker',
  'Get Ta Steppin',
  NULL,
  'northern soul',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/7hAYAJz6NixIgu4hkCJypO',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:38',
  'Professor Longhair',
  'Big Chief',
  'House Party New Orleans Style',
  'cajun, zydeco, classic blues',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0lHBftRKQfTUlgciugA3qX',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:41',
  'Walter Wolfman Washington',
  'You Can Stay But The Noise Must',
  'On The Prowl',
  'soul blues, blues',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4tqT8X8t0hrZDnLgodafSt',
  'found',
  93,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:48',
  'CHIEF BLACK SIOUX',
  'AT THE TABLE',
  'DOIN'' IT MY WAY',
  'brass band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/5TGJ3d2dvhOff18GwQBfk2',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:51',
  'Earl King',
  'No City Like New Orleans',
  'Hard River To Cross',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '10:56',
  'Big Al Carson',
  'All In A Mardi Gras Day',
  'Ultimate Mardi Gras',
  'zydeco, cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3JIYVccmW7QGweiMccSOjg',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:08',
  'CHIEF BLACK SIOUX',
  'NEW SUIT',
  'DOING IT MY WAY',
  'brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5pKNSMtUox1cmHVUkynI1T',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:16',
  'Electric Yat Quartet',
  'Struttin'' With Some Bbq',
  'Stringin'' With Some Bbq',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2QrrWkb9ykEMgC8go56hVl',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:17',
  'little queenie',
  'My Darlin New Orleans',
  'purple heart',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0SoOlkZ09atUsYgubWBcKh',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:22',
  'Dr. John',
  'Mardi Gras Day',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:33',
  'Pj Morton feat. Rebirth & Cheeky Black',
  'New Orleans Girls',
  'single',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:35',
  'Harry Connick, Jr.',
  'Here Comes the Big Parade',
  'She',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6PzXZ5SNK6U2RCpGjme036',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:38',
  'Leroy Jones',
  'Carnival is in the Air',
  'single',
  'brass band, ragtime',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/23PPvWfm9ADbvhJ8irwipP',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:41',
  'Benny Grunch',
  'Ain''t No Place to Pee on Mardi Gras Day',
  NULL,
  'cajun, christmas',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5FEYKr03PbmzMiodSj1D2D',
  'found',
  77.4,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:51',
  'Little Queenie',
  'If Ever I cease To L Little Queenie MUS 004:35',
  'Purple Hearts',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '11:55',
  'Danny Barker',
  'Chooko Me Feendo Hey',
  'M.G Parade Music Fron N.o., Vol. 2',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:04',
  'kermit ruffins',
  'do the fat tuesday',
  'Mardi Gras ''09',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:11',
  'Bo Dollis',
  'HANDA WANDA',
  '30 Years & Still Wild',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0S5WsoeZ1Bq6xrq2bEAaBb',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:19',
  'Galactic feat. Al Johnson',
  'Carnival Time',
  'Electros',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:23',
  'Marcia Ball',
  'Party Town',
  'LA Blues - Mardi gras',
  'zydeco, cajun, blues',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5eCW4zvU5k5GbF2r1QCMvD',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:26',
  'professor longhair feat. earl king',
  'Big Chief',
  'ultimate mardi gras',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:34',
  'Rebirth brass Band',
  'Do Watcha Wanna',
  'Ultimate Rebirth Br. Band',
  'brass band, zydeco, new orleans bounce',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/4ljhLk6pJXZ6YBoNrl5aR1',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:42',
  'Sunpie & the LA Sunspots',
  'Mardi Gras',
  'Lick a Hot Skillet',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:47',
  'PAUL sIMON',
  'Take Me To The Mardi Gras',
  NULL,
  'singer-songwriter',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2qQrVJQ7zXAyvqX1IkwsS2',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:51',
  'Wild Tchoupitoulas',
  'Meet da Boys at the Battlefront',
  'Wild Tchoupitoulas',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:53',
  'Tun Men feat. Carlo Nuccio',
  'Smkoe My Peace Pipe',
  'single',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '12:56',
  'the wild tchoupitoulas',
  'Indian Red',
  NULL,
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5lAA2A2nEUCYYWfKCJhvGP',
  'found',
  98,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:03',
  'Electric Yat Quartet',
  'That''s A Plenty',
  'Stringin'' with Some BBQ',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6NLzHrToBU2Wfu0f5XcxnZ',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:10',
  'Ernie K. Doe',
  'Here Come The Girls',
  NULL,
  'classic blues',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5PaXa6xCZFTDRpx4FYZo6b',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:13',
  'Michael Doucet & Tom Rigney feat. Marcia Ball',
  'That''s Enough of thet Stuff',
  'Roll On',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:20',
  'Cubanismo feat. John Boutte',
  'Mardi Gras Mambo',
  'Mardi gras Mambo',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:24',
  'Sharky Bonano',
  'While We Danced at the Mardi Gras',
  'M.G. Parade Music from N.O.',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:29',
  'professor longhair & His Shuffling Hungarians',
  'Mardi Gras in New Orleans',
  'Pfrodessor Longhair Stary',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:33',
  'professor longhair',
  'Mardi Gras in New Orleans',
  'Mardi Gras in Baton Rouge',
  'cajun, zydeco, classic blues',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5RLM4QZIpPjzqDAIjLkZEa',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:46',
  'Jon Batiste - Big Freedia Remix',
  'FREEDOM',
  'We Are',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '13:47',
  'Harry Connick, Jr.',
  'Take Her To The Mardi Gras',
  'In Concert on Broadway',
  'big band, christmas, vocal jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0sX3R8epDmZEGedP8HUXe2',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:06',
  'Egg Yolk Jubilee',
  'Show Me Your ****',
  'single',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:07',
  'Harry Connick Jr.',
  'The Preacher',
  'Smokey Mary',
  'big band, christmas, vocal jazz',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6jc05RNZubUuqa4wqbdPql',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:07',
  'Little Queenie',
  'If Ever I Cease To Love',
  'Purple Heart',
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/42X7UAxXvRPg8JigOwrmYh',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:12',
  'Subdudes',
  'Social Aid & Pleasure Club',
  'Behind the Levee',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:21',
  'Rockin'' Dopsie, Jr.',
  'They Asked for You',
  'Ultimate Mardi Gras',
  'zydeco, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3MRiccGbLWwSRTRmsDSFGC',
  'found',
  93.5,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:25',
  'Harry Connick Jr.',
  'Smokey Mary',
  'Smokey Mary',
  'big band, christmas, vocal jazz',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0fvcL4yrfFB8EeiLI16MkO',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:32',
  'Rebirth Brass Band',
  'New Orleans Music',
  'Ultimate Mardi Gras',
  'brass band, zydeco, new orleans bounce',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6OnqTokKZdRCgidc4CX7qD',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:37',
  'Soul Rebels',
  'Say No Hey',
  'Unlock Your Mind',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:41',
  'Dr. John',
  'Iko Iko',
  'Mos'' Scocious- Anthology (CD02)',
  'cajun, zydeco',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1vhlVbHnbKJPD7pqCC0cE7',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:47',
  'Beau Jocque',
  'Beau`s Mardi Gras',
  'Beau Jocque Boogie',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:50',
  'Bruce Sunpie Barnes',
  'La Chanson Du Mardi Gras',
  'Lick A Hot Skillet',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '14:57',
  'Dr. John',
  'Food For Thot',
  'The Best Of The Parlophone Years',
  'cajun, zydeco',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0pS0ArJxesOWbEbRBDKKBh',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:05',
  'Mitch Woods',
  'I Left My Baby At The Mardi Gras',
  'Big Easy Boogie',
  'boogie-woogie, blues, boogie',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4jWg4Ts3DoWiYdS83bUmOD',
  'found',
  95.5,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:09',
  'Krewe du Belge',
  'All On A Mardi Gras Day',
  'De Bruxelles a New Orleans',
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0WO43O16CwBGQcvjLzxrpx',
  'found',
  89.6,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:13',
  'Terrance Simien',
  'Creole Mardi Gras Run',
  'Creole For Kidz-The History Of Z',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:17',
  'Cha Wa',
  'All On A Mardi Gras Day',
  'Funk`n`Feathers',
  'brass band, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/75SlNNvRMOnD0O9d88W27z',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:25',
  'Jake the Snake',
  'Dat''s Mardi Gras',
  'Mardi Gras in New Orleans, vol II',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:31',
  'Beth Patterson',
  'Mardi Gras',
  'Hybrid Vigor',
  'celtic',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/47bPMAbjimzfoRHk5FZLJi',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:38',
  'Cowboy Mouth',
  'Mardi Gras State Of Mind',
  NULL,
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4R9YwNJIHbqhIbz8jPxAeK',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:47',
  'Red Hot Brass Band',
  'Go To The Mardi Gras',
  'Hot Off The Press',
  'brass band',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4i66nbKrkrQARH8RPCouHe',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:51',
  'Storyville Stompers',
  'Mardi Gras Stomp',
  'A Brass Menagerie',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '15:56',
  'C.J. Chenier',
  'Zydeco Mardi Gras',
  'Step It Up',
  'zydeco, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7JdghTDA8U4Jw7t9DxXlYq',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:04',
  'Rebirth Brass Band',
  'Do Whatcha Wannas',
  'Ultimate Mardi Gras',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:09',
  'Jon Cleary & The Absolute Monster Gentlemen',
  'Zulu Strut',
  'Mardi Gras 09',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:15',
  'Professor Longhair f/Earl King',
  'Big Chief',
  'Ultimate Mardi Gras',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:21',
  'Delfeayo Marsalis & The Uptown Jazz Orchestra',
  'So New Orleans',
  'Jazz Party',
  'big band',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0FCikavkI2CRhEfJFywHbT',
  'found',
  82.4,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:25',
  'Jon Hebert',
  'Msrdi Gras Morning',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:32',
  'Kermit Ruffins',
  'Treme Mardi Gras',
  'Livin a Treme Life',
  'brass band, cajun',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4Mpcn3VSFA4su7qqKenKAc',
  'found',
  86,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:34',
  'Delfeayo Marsalis & Uptown Jazz',
  'Mardi Gras Mambo',
  'Uptown On Mardi Gras Day',
  'big band, jazz, smooth jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4RVE7uKps3CBnwX792mKMC',
  'found',
  89.9,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:42',
  'The Wild Tchopitoulas f/Neville Bros Ian Ivan Neville, George Po',
  'Hey Mama',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:44',
  'Andrew Halchak',
  'Cougar Club Blues',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1BVR1UR1Spm4Wkz7mlNhh6',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:52',
  'Charmaine Neville Band',
  'Clean Up',
  'Queen Of The Mardi Gras',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2iSG1ixENuCm7Icj8tE5zc',
  'found',
  98,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '16:56',
  'Donald Harrison Jr',
  'I''m The Big Chief of Congo Square',
  NULL,
  'brass band, cajun, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2DTf1EejKb4q0adUO3JzVq',
  'found',
  82.7,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:09',
  'Al Carson',
  'All On a Mardi Gras Day',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:11',
  'Ed Perkins',
  'Second Line Medley',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:16',
  'Charmaine Neville Band',
  'Mardi Gras In New Orleans',
  'Queen Of The Mardi Gras',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0XcDF6WJDPVZmsd45Eve15',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:21',
  'James Rivers Movement',
  'Hey Pocky Way/Iko Iko',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:26',
  'Big Chief Donald Harrison',
  'New Second Line',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:31',
  'Henry Butler',
  'Some Iko',
  NULL,
  'cajun, zydeco, blues',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1uNlKv4BLBohKl5TXdOJWJ',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:35',
  'Rebirth Brass Band',
  'It''s Later Than You Think',
  NULL,
  'brass band, cajun, zydeco',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1G04e1xqFGK8PZIbklSOxi',
  'found',
  78.4,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:40',
  'Allen Toussaint',
  'Fat Tuesday',
  NULL,
  'cajun',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1TqeTr0Vdhl95lxqICksB3',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:44',
  'Cha Wa',
  'Ooh Na Nay',
  NULL,
  'brass band, cajun',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6pTSr40iRZoh1BO9AzjXo7',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:49',
  'Rockin Dopsie Jr',
  'Down At The Mardi Gras',
  'Ultimate Mardi Gras',
  'zydeco, cajun',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1pJ3wkUyVt0ZzMRqvvpdlG',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:54',
  'Fredy Omar con su Banda',
  'Mardi Gras Mambo',
  NULL,
  'zydeco, cajun',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6ym9Gitd9HaajXbkGi1BG5',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '17:59',
  'Bourbon Street Aint Mardi Gras',
  'Jason Marsalis',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '18:07',
  'Eddie Bo',
  'Big Chief',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '18:15',
  'Jason Neville Funky Soul Band',
  'Welcome to the Party Gras',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '18:19',
  'Herlin Riley',
  'Wang Dang Doodle',
  NULL,
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0ktWMfd1aZkBHcpxCKvZix',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '18:26',
  'Professor Longhair',
  'Go to the Mardi Gras',
  NULL,
  'cajun, zydeco, classic blues',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '18:30',
  'Alexey Marti',
  'Carnaval',
  'Mundo',
  'afro-cuban jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1oCWSqPjMKeghRTtHmf11o',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '18:40',
  'The Meters',
  'They all Asked For You',
  NULL,
  'funk, soul, jazz funk',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7mPP2cZ3HUfx6M3NhnolrR',
  'found',
  88,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '18:48',
  'Paul Barbarain',
  'Second Line',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:06',
  'Jimmy Cliff',
  'Many Rivers To Cross',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/1dZxI6OuzwJ283y3gOU1Kq',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:11',
  'Jimmy Cliff',
  'Come Into My Life',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/0Fb1bzwfQtMVGPbtN7nafg',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:14',
  'Jimmy Cliff',
  'I Can See Clearly Now',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/7aJZxI6TVdIvQSuWxQ4rqp',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:18',
  'Jimmy Cliff',
  'No Woman No Cry',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/76pqIt0Afa0PmqLui05SZ5',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:25',
  'Jimmy Cliff',
  'Bongo Man',
  'Give Thanxx',
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/4NDt0POuq7rRff55MGUU8n',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:29',
  'Jimmy Cliff',
  'Sitting In Limbo',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/0lMyBUPFMCXZOILHe4uFwM',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:32',
  'Jimmy Cliff',
  'Hard Road To Travel',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/5ObfITffAO9V5Gl1TEpz8H',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:37',
  'JIMMY CLIFF',
  'VIETNAM',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/2GBy4ggGwFTqEvh9QPB5qC',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:42',
  'Jimmy Cliff',
  'Samba Reggae',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/5AEgVBPGMpx4jojTTSKEtJ',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:48',
  'Jimmy Cliff',
  'Breakout',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/4D6p5qiTehqPjQvrHSHNer',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:52',
  'Jimmy Cliff',
  'Keep On Dancing',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/1ALd7MNAT5BqKhp1gdsGfc',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '22:56',
  'Jimmy Cliff',
  'Reggae Night',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/1OE5bn5HUmCqTLNpo13ya3',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:04',
  'Jimmy Cliff',
  'Hitting With Music',
  'Cliff Hanger',
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/6eqO55A7wTmHcQgWQxoc1V',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:09',
  'Jimmy Cliff',
  'Wonderful World, Beautiful People',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/6RyS0vfqe2Uja8jrxwhxFi',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:14',
  'Jimmy Cliff',
  'Music Maker',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/5rEPMl2cgBf4kDusTbwLuZ',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:15',
  'Jimmy Cliff',
  'Hello Sunshine',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/0odALYQ2EfLc5A1oVh8OVA',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:22',
  'Jimmy Cliff',
  'Children',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/172peDKNKNOc0DlJlWnG7o',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:26',
  'Jimmy Cliff',
  'Wild World',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/2k11S02KSnSmQztzxgvKmx',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:30',
  'Jimmy Cliff',
  'Universal Love (Beyond the Boundries)',
  'Give Thanx',
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/0UDk3i5kCmGQRmV224DgWK',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:34',
  'Jimmy Cliff, Lilty Cliff',
  'Racism',
  'Refugees',
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/1TB91mp7Y9S26NzvdRvHxx',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:41',
  'Jimmy Cliff',
  'World of Peace',
  'Unlimited',
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/3a7meIigQtsLUSPhAcoYcj',
  'found',
  100,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:46',
  'Jimmy Cliff',
  'Hakuna Matata',
  NULL,
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/1VdQkGrUNJTqMkWlROP8mS',
  'found',
  74.1,
  '2026-02-14 07:35:29'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-13',
  '23:52',
  'Jimmy Cliff',
  'The Harder They Come',
  'The Harder THey Come (Original Motion Picture Soundtrack)',
  'reggae, rocksteady, roots reggae',
  'The Rhythm Room',
  'Allan "Alski" Laskey',
  'https://open.spotify.com/track/2XIr0KTybGQsC1SFfeaZhI',
  'found',
  100,
  '2026-02-14 07:35:29'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-14';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '03:29',
  'Hawkettes',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Overnight Music - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '04:29',
  'Tuba Skinny',
  'It''s Carnival Time',
  'Mardi Gras EP 2021',
  '',
  'Overnight Music - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:03',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans',
  'cajun, zydeco, classic blues',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:04',
  'Al Johnson',
  'Carnival Time',
  'Mardi Gras In New Orleans',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:06',
  'The Hawketts',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans',
  'cajun, zydeco',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6nGGQaYgVqOXYztYVSQ8cm',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:10',
  'Al Hirt',
  'While We Danced At The Mardi Gras',
  'Al Hirt Al Hirt In New Orleans With His All Stars',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2j0ebv5EMMQYWJ1QqZZgEu',
  'found',
  92.4,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:14',
  'Troy Andrews',
  'Ooh Poo Pah Doo',
  'Mardi Gras Classics',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:18',
  'Danny Barker, Baby Dodds Trio',
  'My Indian Red',
  'Jazz A''La Creole',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:21',
  'Sugarboy Crawford',
  'Jockomo',
  'VA Mardi Gras in New Orleans, Vol II',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:23',
  'Pete Fountain',
  'The Mardi Gras Walking Club',
  'Walking Through New Orleans',
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/65Puw173tQjhoR0AYcj0zt',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:29',
  'Dukes of Dixieland',
  'If I Ever Cease To Love',
  'Mardi Gras Time - Audio Fidelity Records AFLP 1862',
  'ragtime, swing music',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1I06dFmXie1z7Jv9NJYbCR',
  'found',
  87.1,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:32',
  'Black Dogs',
  'Dat''s Mardi Gras',
  'Big Easy Classics',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:35',
  'Dixie Cups',
  'Iko Iko',
  'VA Mardi Gras in New Orleans, Vol II',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/21x7g5Nd6bsjmelDUlZ6Mv',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:37',
  'Lil'' Malcolm and the House Rockers',
  'My toot toot',
  'Mardi Gras Classics',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:45',
  'Meters',
  'They All Ask''d for You',
  'VA Mardi Gras in New Orleans, Vol II',
  'funk, soul, jazz funk',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/7mPP2cZ3HUfx6M3NhnolrR',
  'found',
  73.9,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:49',
  'Buckwheat Zydeco',
  'My Feet Can''t Fail Me Now',
  'VA Mardi Gras in New Orleans, Vol II',
  'zydeco, cajun',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/1b0gIH59aGI0AX2BP5SrdZ',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:52',
  'Forever Fabulous Chickenhawks featuring Luther Kent',
  'Pocky Way',
  'Mardi Gras Classics',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '08:57',
  'Dejan''s Olympia Brass Band',
  'New Second Line',
  'VA Mardi Gras in New Orleans, Vol II',
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/03YgDhzRsQ99a9jozsCggm',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:00',
  'Ernie K-Doe',
  'Mother-In-Law',
  'The Best Of Ernie K-Doe',
  '',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/6L5ZVZSkI3u2H1BDUhtkEW',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:09',
  'Chick Webb',
  'On The Sunnyside Of The Street',
  'Chronological 1929-1934',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:13',
  'Chick Webb',
  'That Rythm Man',
  'Chronological 1929-1934',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:15',
  'Ben Webster',
  'Perdido',
  'The Ultimate Jazz Archive',
  'jazz, jazz ballads, cool jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/5Fed5Wa2YQqreu213Ej3S1',
  'found',
  98,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:18',
  'Ben Webster',
  'Tea For Two',
  'The Ultimate Jazz Archive',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:23',
  'Grand Dominion Jazz Band',
  'You Don''t Understand',
  'Half and Half',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:29',
  'Grand Dominion Jazz Band',
  'Old Folks at Home',
  'Half and Half',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:34',
  'Kings Of Dixieland',
  'Goody Goody',
  'Whistling Dixie: 50 Dixieland Classics',
  'ragtime, zydeco, cajun',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/7HMzi37rlUXsu0nGNTNKXf',
  'found',
  87.1,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:37',
  'Kings Of Dixieland',
  'There is a Tavern in the Town',
  'Whistling Dixie: 50 Dixieland Classics',
  'ragtime, zydeco, cajun',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/2gXLAeRw3qTR6b4q0ztgx5',
  'found',
  87.1,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:43',
  'Lionel Hampton',
  'I Surrender, Dear',
  'Chronological 1937-1938',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4Em4X2KHdfBgCSekIFTRE5',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:46',
  'Lionel Hampton',
  'China Stomp',
  'Ring Dem Bells',
  'swing music, big band, jazz',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4Z2EtEWSI3SS2UxJmx2BUA',
  'found',
  84.2,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:49',
  'Louis Jordan And His Tympany Five',
  'Small Town Boy',
  'Louis Jordan And His Tympany Five',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:52',
  'Bix Beiderbecke',
  'The Baltimore',
  'Volume I - Singing The Blues',
  '',
  'Traditional Jazz',
  'Big Pete',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:55',
  'Bix Beiderbecke',
  'Just An Hour Of Love',
  'Volume I - Singing The Blues',
  'ragtime, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/0uhwELxpLAjV5HePK2HZeh',
  'found',
  94.5,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '09:58',
  'Bix Beiderbecke',
  'There`s A Cradle In Caroline',
  'Volume I - Singing The Blues',
  'ragtime, big band',
  'Traditional Jazz',
  'Big Pete',
  'https://open.spotify.com/track/4AhExK6zqPCAsuQBERlllN',
  'found',
  95.1,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '11:52',
  'Carnival Comparsa Group, Santiago deCuba',
  'Carnival Music',
  'CubaLive',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '11:56',
  'Fruko y sus Tesos',
  'El Nuevo Caiman',
  'Carnival',
  'salsa, merengue, tropical music',
  'New Orleans Music Show - Saturday',
  NULL,
  'https://open.spotify.com/track/4goOSaHDYLMxpklZ4UIBf2',
  'found',
  83.2,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '11:58',
  'Cuarteto Patria',
  'arnaval',
  'arnival',
  '',
  'New Orleans Music Show - Saturday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '12:01',
  'Un Solo Pueblo',
  'Maclokis Mango',
  'Carnival',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '12:22',
  'Orquesta Mazacote',
  'Medley #4',
  'Noche de Carnaval 25 Congas y Comparsas',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '12:41',
  'Grupo Afro-Cubano',
  'Conga de La Bolleras',
  'Congas y Comparsas VOL> 2',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/6j1wax9ekOYjkS82FFMT8E',
  'found',
  88.8,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '12:43',
  'Orquesta Kuvabana',
  'Se acerca La Compara',
  'Congas y Comparsas Vol. 2',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '12:54',
  'Stop, Inc',
  'The second Line',
  'Ultimate Mardi Gras',
  'cajun, zydeco, brass band',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/5YizW243gThmie7RaxwL7N',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '12:56',
  'Rocking'' Dopsie, Jr.',
  'They All Asked for you',
  'Ultimate Mardi Gras',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '12:57',
  'Olympia Brass Band',
  'Mardi Gras in New Orleans',
  'Ultimate Mardi Gras',
  'brass band, cajun, zydeco',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/0QR95uiVATqSNRqu9PN3Hc',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:15',
  'Fredy Omar con su nBanda',
  'Mardi Gras Mambo',
  'Ultimate Mardi Gras',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:20',
  'Duxie Cups',
  'Iko Iko',
  'rdi Gras nin New Orleans Vo. 2',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:24',
  'Olympia Brass Band',
  'New second Line',
  'Mardi Gras i New Orleans Vol. 2',
  'brass band, cajun, zydeco',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/3KqVNsSqrOoOVAT1Dgtzl2',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:25',
  'Mardi Gras Big Shots',
  'Mardi Gras Medley',
  'Mardi Gras in New Orleans Vol 2',
  '',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:34',
  'Charanga de La 4',
  'Mata Siguaraya',
  'Se Pego...!',
  'son cubano, salsa, cha cha cha',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/51evGxGD7yUivMrf4esIuE',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:35',
  'Charanga de La 4',
  'Clavelitos',
  'Se Pego ...!',
  'son cubano, salsa, cha cha cha',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/5ty7d49skE8zOX7PY0hEH5',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:36',
  'Charanga de La 4',
  'Suavito',
  'Se Pego...!',
  'son cubano, salsa, cha cha cha',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/2JfN9RG0iQMpoLeIqUDh6d',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:53',
  'Los Guanches',
  'El Muerto se fue de Rumba',
  'The Corpse Went Dancing Rumba',
  'son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/1ugkZlTy1uRLf5sfptYkv0',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '13:54',
  'Los Guanches',
  'Baja y Tapa La Olla',
  NULL,
  'son cubano',
  'Tiene Sabor (Latin Show)',
  'Yolanda Estrada',
  'https://open.spotify.com/track/7htw6fOdxgqBcTjV8q9UZK',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:03',
  'Sergio Mendes Lead Vocals Carmen Alice',
  'What Is This (Elektrabrasil Vinyl 1992) 8 sec late start',
  'Brasileiro 1992 Polygram Rio De Janeiro',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:05',
  'Ãrika Machado',
  'Secador, Maca E Lente',
  'The New Brazilian Music',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:10',
  'DJ Dolores',
  'Deixa Falar',
  'The New Brazilian Music',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/7MwxPX6t0febub9pnm7J9g',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:13',
  'DJ Dolores',
  'Trancelim De Marfim',
  'Brazil - Music Is The Pulse',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/0bCne9l3VRweoO8GOfZSdB',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:20',
  'Cha Wa',
  'Injuns, Here They Come',
  'Funk n Feathers',
  'brass band, cajun',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/3uU2IWQEBlhxdyoo56dsqn',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:26',
  'Original Pinettes Brass Band',
  'Mardi Gras Morning - Mix 1',
  '2025 Single',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:28',
  'Studio Rio Remixes',
  'Studio Rio - Bill Withers - Lovely Day',
  'Studio Rio Presents: The Brazil Connection',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:33',
  'Mawaca',
  'So Perewatxe',
  'Brazil New Series',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5aMJr1XAiPJZVJ2xathZgv',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:35',
  'Alto Do Coqueirinho',
  'Alto do Coqueirinho',
  'Brazil New Series',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:40',
  'Mighty Sparrow',
  'Sparrow Come Back Home',
  'Mighty Sparrow V1',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:45',
  'Big Chief Monk Boudreau',
  'Iko Iko',
  'Rising Son',
  'cajun, zydeco, brass band',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5f4eOvT6ZBPG4vljjT9l8J',
  'found',
  82.1,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:49',
  'Bill Summers, Irvin Mayfield & Los Hombres Calientes',
  'Mardi Gras Bayou',
  'Mardi Gras 2008 Basin Street Sampler',
  'latin jazz, brass band, cajun',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/30XymD5TnFbFLHTjLpj1PK',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:55',
  'Goma Laca and Karina Buhr',
  'Do Pila',
  'Afro Brazil Sides',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '14:58',
  'Goma Laca and Karina Buhr',
  'Guriata',
  'Afro Brazil Sides',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:11',
  'THE METERS',
  'HEY POCKY A- WAY',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/4RvopSUhdibG1zPwgYAMHl',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:16',
  'Kassav',
  'Pale Mewen Dous Tell Me Sweet Things',
  'Vini Pou',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:23',
  'Daniela Mercury',
  'O Canto Da Cidade',
  'O Canto Da Cidade',
  'axé, pagode baiano, mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/6m0KnKJff6xxtKalORoeOO',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:25',
  'Daniela Mercury',
  'Musica De Rua',
  'Musica De Rua',
  'axé, pagode baiano, mpb',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/3pttLWOnbhsISumzBgxr9y',
  'found',
  83.2,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:27',
  'Big Freedia',
  'Celebration',
  'Pressing Onward',
  'new orleans bounce, bounce, ballroom vogue',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/723J8TT1MrywSg66aIqZio',
  'found',
  73.5,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:30',
  'Sunpie & the LA Sunspots',
  'Mardi Gras',
  'Lick a Hot Skillet',
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:35',
  'shirley and lee',
  'LET THE GOOD TIMES ROLL',
  NULL,
  'doo-wop',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/2F9rEI6woMPDLlBg3ZkiS4',
  'found',
  81.1,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:37',
  'Timbalada',
  'Beija-Flor',
  'Big Noise 2',
  'axé, pagode baiano',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/5EAx7vPYFBlt9Nbry8Xqdu',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:41',
  'Fifth Ward Weebie and New Breed Brass Band',
  'Whatcha Workin it for',
  NULL,
  '',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:51',
  'Dirty Dozen Brass Band',
  'Old School',
  'Buck Jump',
  'brass band, jam band, cajun',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/7i5ulu9lNVzawC5N6WpwvV',
  'found',
  88.5,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '15:59',
  'los indios tabajaras',
  'bali ha''i',
  'song of the islands',
  'latin folklore',
  'Tudo Bem (Brazilian)',
  'Dean Ellis',
  'https://open.spotify.com/track/34WftnDz6kAeG8tt2mCUeC',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '16:06',
  'gonzalo rubalcaba, yainer horta & joey calveiro',
  'when I fall in love',
  'a tribute to benny more and nat king cole',
  'afro-cuban jazz, latin jazz, jazz',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3Mq1viXGGiDbSFi6khw9cn',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '16:08',
  'fela ransome kuti & nigeria ''70',
  'lover',
  'the ''69 los angeles sessions',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '16:16',
  'tanya tagaq',
  'do not fear love',
  'tongues',
  'native american music',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4g6OzHadFK5CrGDmsfmnrY',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '16:17',
  'IFE',
  'house of love (ogbe yekun)',
  'IIII+IIII',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '16:24',
  'dr. orlando owoh',
  'ire loni',
  'and his omimah band',
  'fújì, highlife',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/25DfzUuqXvNYDUoC4SM2oP',
  'found',
  80,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '16:43',
  'orlando owoh',
  'ero ki yeye mi',
  'and his omimah band',
  'fújì, highlife',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/39dLoOYJHvGHRFE98v3HSe',
  'found',
  84.3,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:05',
  'dr. orlando owoh',
  'late crosdale juba',
  'and his young kenneries band',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:10',
  'mr eazi & chronixx',
  'she loves me',
  'life is eazi, vol. 2 - lagos to london',
  'afrobeats, afrobeat, afropop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0NrppiQcbgGrgobengy7e2',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:13',
  'SPINALL feat. wizkid & tiwa savage',
  'dis love',
  'grace',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:15',
  'ife',
  'higher love',
  'IIII+IIII',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:25',
  'smallgod feat. arathejay',
  'love u',
  'highlife fusion',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:26',
  'juls & A2 feat. karun & xenia manasseh',
  'say you love me',
  'sounds of my world',
  '',
  'World Journey',
  'Logan',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:29',
  'juls & mayra andrade',
  'love language',
  'sounds of my world',
  'alté, afrobeats, afroswing',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/7Jqa7kWKN4d2Fn7FESctLz',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:34',
  'juls, black sherif & projexx',
  'timing',
  'peace and love',
  'alté, afrobeats, afroswing',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4KfHB0K5B88tHP4VRNheuT',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:40',
  'wizkid',
  'plenty loving',
  'more love, less ego',
  'afrobeats, afrobeat, afropop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/0TFZDcp2Axfuztj9fr7oeC',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:41',
  'dj maphorisa & xduppy feat. phila dlozi, mawhoo & thatohatsi',
  'love you 4eva',
  'ngomoya',
  'amapiano, gqom, private school piano',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/3wcmwJQrUkV9bgfHKX5Lef',
  'found',
  93,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:51',
  'rema',
  'love',
  'rave & roses',
  'afrobeats, afrobeat, afropop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/1XZyyzJeIJNQpkCtNERAm4',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:57',
  'asake',
  'why love',
  'why love',
  'afrobeats, afrobeat, afropiano',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/4uLBwGnr1U3ctcDZrnVEgK',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '17:57',
  'mr eazi',
  'wait for your love',
  'maison rouge',
  'afrobeats, afrobeat, afropop',
  'World Journey',
  'Logan',
  'https://open.spotify.com/track/6Xjzd1MocclDoo2jcKBdK9',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:12',
  'Seprock',
  'Track 37',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:14',
  'The Wild Magnolias',
  'HANDA WANDA',
  'Outtakes and Live 1973-74',
  'cajun, zydeco, brass band',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/2dq0Tb2mJLTxJKg0Q49CBu',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:18',
  'Big Chief Romeo, Big Chief Jermaine, etc',
  'Take The Crown',
  'NOLA Is Calling',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:31',
  'Boco',
  'Running The Mardi Gras',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/2BKFcrv5LR4vzwRWT9AVMM',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:31',
  'Glass Candy',
  'Iko! Iko!',
  NULL,
  'electroclash',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/53dTRgeWmMDvpM7u3iWh7B',
  'found',
  97,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:32',
  'Original Pinettes Brass Band',
  'Mardi Gras In New Orleans',
  'Finally',
  'brass band',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/7hSPvTeI58xKi7KjVFcJil',
  'found',
  90.4,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:38',
  'Dany Barker and His Creole Cats',
  'Tootie Ma Is A Big Fine Thing',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:45',
  'Traffic Jamm Band',
  'Mardi Gras Mombo Pt. 1&2',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:46',
  '7th Ward Creole Hunters',
  'Rock Sew',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '18:48',
  'Hot 8 Brass Band',
  'Big Chief',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:10',
  'Flagboy Giz',
  'Uptown',
  NULL,
  'new orleans bounce, bounce, zydeco',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6xA29TwQmVAlkeJGXYiBCo',
  'found',
  79.5,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:12',
  'Donald Harrison Jr',
  'Track 03',
  'New Sounds Of Mardi Gras II',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:12',
  'Wild Magnolias',
  'Hold Em Joe',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:13',
  'Bobby Williams Group',
  'Boogaloo Mardi Gras',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/3DX2QVmLKhtKap7u24C1Gx',
  'found',
  72.6,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:16',
  'Jon Batiste ft Michael Batiste and Big Chief Romeo',
  'Tell The Truth Uptown Remix',
  'We Are One Deluxe',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:16',
  'Sammy Ridgely',
  'Mardi Gras Chief',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:20',
  'Bobby Mardi Gras and the Qreeps',
  'Mardi Gras Creep',
  'Don''t Be A Mardi Gras Creep!',
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:25',
  'Flagboy Giz',
  'We Outside',
  'I Got Indian In My Family',
  'new orleans bounce, bounce, zydeco',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/0l0eIDwfCs0U18N5cW72tQ',
  'found',
  71.9,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:28',
  'danny barker',
  'Chocko Mo Feendo Hey',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:31',
  'Dixie Cups',
  'Two Way Pocky Way',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:40',
  'Jorge Ben Jor',
  'Taj Mahal',
  'Africa Brasil',
  'mpb, bossa nova, samba',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/7pdCDKs0i05N8ag4tAC5u5',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:46',
  'Marina Sena',
  'carnaval',
  NULL,
  'brazilian pop, new mpb',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/3CaW1cyS7f9PC8Bf0XCpZ6',
  'found',
  98,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:47',
  '79rs gang',
  'drama',
  NULL,
  'brass band',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/6BF1FcKDZu35Vys6beKuJu',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:47',
  'Johnny Hooker',
  'Caetano Velosa',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:50',
  'Novos Baianos',
  'Brasil Pandeiro',
  'Acabou Chorare',
  'mpb, samba, bossa nova',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/4IIK7KvWCTSkVVRufxyh3d',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:54',
  'Ily, Baco Exu Do Blues',
  'Me Deixas Louca',
  NULL,
  '',
  'Block Party',
  'Brice Nice',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '19:58',
  'Sessa',
  'Sereia Sentimental',
  'Estrela Acesa',
  'new mpb',
  'Block Party',
  'Brice Nice',
  'https://open.spotify.com/track/3fcZDj24gbPctyec0MHYTs',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
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
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:02',
  'Neville Brothers',
  'Dance Your Blues Away',
  '45 single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:07',
  'Bo Dollis and the Wild Magnolia Mardi Gras Indian Band',
  'Handa Wanda Pt. 1',
  '45 single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:10',
  'Slave',
  'Slide',
  'Slave',
  'funk, post-disco',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/59KTqKlTYJbBqnJY192oX1',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:18',
  'Walter Wolfman Washington',
  'Get on Up (The Wolfman''s Song)',
  'Leader of the Pack',
  'soul blues, blues',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/2TemeUiYLiCiBXeCLzk64C',
  'found',
  98,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:26',
  'Exit 9',
  'Miss Funky Fox',
  'Straight Up',
  'breakbeat',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/02ykRQd2gxwgfBXEpet3I6',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:30',
  'JB''s Internationals',
  'Little Bit of Disco',
  'Jam II Disco Fever',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:38',
  'Rare Gems',
  'Music is for Dancing',
  'Million Dollar Disco',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:42',
  'Carl Marshall and The S.D.''s',
  'Come Groove With Me',
  'I''ll Give My Heart to You',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:48',
  'Chocolate Milk',
  'Say Won''tcha',
  'Milky Way',
  'funk, post-disco',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/6VKdzvdOsjkE3YIkNhFRKB',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:52',
  'Willie Hutch',
  'Willie''s Boogie',
  'Havin'' a House Party',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '20:58',
  'Smile Street People',
  'Lypso Disco',
  '45 single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:06',
  'Bruni Pagan',
  'You Turn Me On',
  '12 inch single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:11',
  'Charanga ''79',
  'Good Times (Como Vamos A Gozar)',
  '12 inch single',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:22',
  'This Love is For Real',
  'Ron Banks',
  'Truly Bad',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:26',
  'Double Exposure',
  'Can We Be in Love',
  'Locker Room',
  'philly soul, disco, disco house',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/701IkYDHFSRfhVapd8YNAf',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:32',
  'Wild Magnolias feat. the New Orleans Project',
  'Two Way Pak E Way (outtake)',
  'Outtakes + Live 1973-1974',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:40',
  'The Meters',
  'Just Kissed My Baby (live)',
  'Live at the Great American Hall 1975',
  '',
  'Soul Power',
  'Soul Sister',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:51',
  'Earl King',
  'Street Parade',
  '45 single',
  'new orleans bounce, classic blues, cajun',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '21:54',
  'James Brown',
  'Time is Running Out Fast',
  'The Payback',
  'funk, soul, motown',
  'Soul Power',
  'Soul Sister',
  'https://open.spotify.com/track/1IsawfT8Z2YoC0kti1lpe6',
  'found',
  98,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:12',
  'the original pinettes brass band',
  'put your right foot forward',
  'finally',
  'brass band',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/66Kkb6Pb2K2ARjpi4AB3Ax',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:13',
  'Brass Queens',
  'Keep Your Head Up',
  NULL,
  'brass band',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/61YEIvUTCS3Dro7yKqAVq3',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:13',
  'Hannabiel',
  'Free Yourself',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:19',
  'Dwayne Dopsie',
  'Louisiana Girl',
  NULL,
  'zydeco, cajun',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1xHUqikTLQPQS1kBaJsiUi',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:20',
  'Little Feat',
  'Rad Gumbo',
  NULL,
  'southern rock, jam band, country rock',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1p5DDYJN5ezUAu2k9LR5pE',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:26',
  'Waylon Jennings',
  'Louisiana Women',
  NULL,
  'outlaw country, classic country, country',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/0ItJvexcym1YFgR6GDxbVr',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:30',
  'Eric Lindell',
  'Louisiana Saturday Night',
  NULL,
  'modern blues, blues, blues rock',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/0sTAKPtXgbA2RaMSbLSuwf',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:35',
  'Little Queenie And The Percolaters',
  'My Dawlin New Orleans',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:42',
  'John Boutte',
  'SISTERS',
  NULL,
  'brass band, cajun, zydeco',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/0NyfzcozPBkwTpluTLNCKW',
  'found',
  70,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:47',
  'Holly Bendtsen, Amasa Miller',
  'Creole Moon',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '22:53',
  'Keiko Komaki',
  'Ashita Ga Arusa',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/5TbzJrDjX2ZvfNARV3vs3O',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:08',
  'Mariachi Divas De Cindy Shea',
  'La Bomba',
  NULL,
  'mariachi, ranchera',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/5mauibA4xQyG4g17RJwTbZ',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:12',
  'Samba Que Elas Queremos, Lexi Brandao',
  'La e Ca',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:17',
  'Mahalia Jackson',
  'When The Saints Go Marching In',
  NULL,
  'traditional gospel, gospel, christmas',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/3dqHgnU7v6p1eBlDaitYtX',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:20',
  'Nina Simone',
  'Little Liza Jane',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/4OIuLbFV1bBdKeNeMtRa7m',
  'found',
  76.2,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:23',
  'Cindy Blackman Santana',
  'Mother Earth',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/6SMsMQKhyi3ZgBd1xmDaH5',
  'found',
  98,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:27',
  'Dr John',
  'Marie Laveau',
  NULL,
  'cajun, zydeco',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/32XUyS0TeiqZvpu9Z7MM9A',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:34',
  'The Neville Brothers',
  'Mojo Hannah',
  NULL,
  'cajun, zydeco',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/7iYQw1vaFQMjphUme3KXRi',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:41',
  'the meters',
  'sophisticated cissy',
  NULL,
  'funk, soul, jazz funk',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/02ZYIF6aoXo6Zz7EUBpoIc',
  'found',
  100,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:46',
  'Rising Stars Fife & Drum Band, Sharde Thjomas, G. Love',
  'Sittin On Top Of The World',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:48',
  'Rising Stars Fife & Drum Band',
  'Glory Glory Hallellujah',
  NULL,
  '',
  'Awake and Willing',
  'Peggy Lou',
  NULL,
  'not_found',
  NULL,
  '2026-02-15 07:56:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-14',
  '23:54',
  'Dixie Cups',
  'Iko Iko/Brother John/Saints Go Marching In',
  NULL,
  'doo-wop',
  'Awake and Willing',
  'Peggy Lou',
  'https://open.spotify.com/track/1aBRfQ6cGXRcXyTAVMwfFv',
  'found',
  81.1,
  '2026-02-15 07:56:06'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-15';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '03:31',
  'Tuba Skinny',
  'It''s Carnival Time',
  'Mardi Gras EP 2021',
  '',
  'Overnight Music - Sunday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '05:28',
  'Queen Ida',
  'Mardi Gras',
  'Mardi Gras',
  'zydeco, cajun',
  'Overnight Music - Sunday',
  NULL,
  'https://open.spotify.com/track/068ofqswUuM3Z6delPnPUn',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:01',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:07',
  'Ruby Braff',
  'You''re Sensational / I Love You, Samantha / True Love',
  'As Time Goes By',
  'jazz ballads, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/5ZDJ8vemSylWXqjrhjRdBU',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:12',
  'Plas Johnson',
  'The World Is Waiting For The Sunrise',
  'The Warm Sound Of Plas Johnson Tenor Sax Volume Two',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:16',
  'Sarah Vaughan',
  'Tenderly',
  'Round Midnight',
  'vocal jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6TMoKdGcSIHjLfyzINFB5X',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:19',
  'The Oscar Peterson Trio',
  'Things Ain''t What They Used To Be',
  'Night Train',
  'jazz, cool jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/69enZcR3Rr9Bg3fNzHEp9y',
  'found',
  88,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:24',
  'Al Cohn',
  'While My Lady Sleeps',
  'The Classic 1950s Sessions',
  'cool jazz, jazz, hard bop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/152HwbhRVi2YnfSnctD9OC',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:27',
  'Mindy Carson',
  'I Cant'' Believe That You''re In Love With Me',
  'Making Eyes At Mindy',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:30',
  'The Modern Jazz Quartet Plus',
  'J. B. Blues',
  'Compact Jazz',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:35',
  'Johnny Hodges',
  'Back Beat',
  'The Best Of The Verve Years',
  'cool jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6YflSNd6sPlzlazQsA3QFK',
  'found',
  70.8,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:43',
  'Bill Henderson',
  'Sleepy',
  'His Complete Vee Jay Recordings Volume 1',
  'vocal jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/12IbxRas0E0iKbEO4d7wsb',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:47',
  'Bill Evans',
  'Mother Of Earl',
  'The Sideman Years',
  'jazz, cool jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4SPEAgB1HsaPdOr4PBIT9w',
  'found',
  91,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:52',
  'Eddie Chamblee',
  'Solitude',
  'Chamblee Special',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/00AC0fBekkSyFX4Gdh9Kj9',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:54',
  'Nancy Wilson',
  'If It''s The Last Thing I Do',
  'Four Classic Albums Plus',
  'vocal jazz, jazz, jazz ballads',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1Mflfu7ffEgull5owKZ6Te',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '06:57',
  'Ray Bryant',
  'Three Coins In A Fountain',
  'Four Classic Albums',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:00',
  'Ray Bryant',
  'Little Susie',
  'Four Classic Albums',
  'jazz, afro-cuban jazz, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6KrPPZ07tAov6R7UzqJsEj',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:04',
  'Illinois Jacquet',
  'For Once In My Life',
  'The Blues; That''s Me!',
  'swing music, jazz, hard bop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4lIzwk9kEGxV6WuHtn4B3g',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:11',
  'Ernie Andrews',
  'River''s Invitation',
  'How About Me',
  'vocal jazz, hard bop, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/53tw0w1JUV4UCpPuG8sMN7',
  'found',
  72.6,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:19',
  'Harry Edison',
  'Walkin With Sweets',
  'The Classic Albums Collection',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:25',
  'Miles Davis and Gil Evans',
  'Aos Pes Da Cruz',
  'Bossa Nova',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:30',
  'Woody Shaw',
  'It Might As Well Be Spring',
  'Jazz For Those Peaceful Moments',
  'hard bop, jazz, latin jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/1yC28UEmSQMXWJ98WBtTao',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:40',
  'Connie Evingson',
  'Yesterday / Yesterdays',
  'Some Cats Know',
  'vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/3dOKqLvAVrzWC8gmVDuGMi',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:45',
  'The Junior Mance Trio',
  'Ralph''s New Blues',
  'Three Classic Albums Plus',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:50',
  'Ben Webster and Johnny Hodges',
  'Val''s Lament',
  'The Complete 1960 Sextet Jazz Cellar Session',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:54',
  'Tom Waits',
  'Drunk On The Moon',
  'The Heart Of Saturday Night',
  'singer-songwriter, southern gothic',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4lCTpXPWIG8sJEp02cvKkU',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '07:59',
  'Una Mae Carlisle',
  'Blitzkrieg Baby',
  'Away From Base',
  'swing music, vocal jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/0INBFZIRX8qMTnUXJJJGSd',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:03',
  'Tab Smith',
  'All My Life',
  'Jump Time',
  'swing music, classic blues, big band',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/38CQyLP7hY5ZVW6yQPBAa5',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:06',
  'Nat King Cole',
  'Cuba',
  '32 Live Original Songs',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:09',
  'The Alvin Alcorn Trio',
  'Some Day Sweetheart',
  'The Original New Orleans Jazz Brunch',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:13',
  'Sonny Stitt',
  'Walkin',
  'Jazz For A Lazy Day',
  'bebop, jazz, hard bop',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/4e7yw3SFzKyM3s8DCQUcNw',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:22',
  'Eddy Duchin and his Orchestra',
  'Lovely To Look At',
  'The Eddy Duchin Story',
  '',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '08:24',
  'Arnett Cobb',
  'Just A Closer Walk With Thee',
  'Show Time',
  'jazz ballads, hard bop, jazz',
  'The Sunday Morning Jazz Set',
  'Mark Landesman',
  'https://open.spotify.com/track/6aDcrxrm8bt3Tnq5ZYoP3F',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:05',
  'Joh nny wiggs',
  'if ever I cease to love',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:06',
  'chuck carbo',
  'second line on monday',
  NULL,
  'doo-wop',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/5KRttKYcdnDqawHZlbM6Wy',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:07',
  'louis armstrong',
  'mardi gras march',
  NULL,
  'jazz, swing music, vocal jazz',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/0gcWlbt55p4WnqbxR9HUgC',
  'found',
  91,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:16',
  'louis dumaine`',
  'to wa bac a wa',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:20',
  'Bobby Williams Group',
  'Boogaloo Mardi Gras',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/3DX2QVmLKhtKap7u24C1Gx',
  'found',
  72.6,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:22',
  'james andrews',
  'zulu king',
  NULL,
  'brass band, cajun, zydeco',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/5DLoXLKo3z4Lg46Vp84B14',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:30',
  'irma thomas',
  'Mardi Gras Mambo',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:30',
  'lil queenie',
  'gumbo heaven',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:37',
  'lil queenie',
  'my darlin new orleans',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:41',
  'george porter',
  'mardi gras in New Orleans',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:44',
  'danny barker',
  'Chocko Mo Feendo Hey',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:54',
  'monk boudreaux with the forgotten souls brass band',
  'Big Chief',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '10:59',
  'remy and the new orleans people',
  'the mardi gras song',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:06',
  'dr john and chris barber',
  'big bass drum',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:08',
  'boco',
  'running the mardi gras',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/2BKFcrv5LR4vzwRWT9AVMM',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:13',
  'The Wild Magnolias',
  'Smoke My Peace Pipe (Smoke It Right)',
  'The Wild Magnolias',
  'cajun, zydeco, brass band',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/1aQNUVzM5jxI9inIP4wtBQ',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:19',
  'timothea',
  'mardi gras party',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:21',
  'chief smiley ricks indians of the nation',
  'talk that talk',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:36',
  'luther kent',
  'who dat at the mardi gras',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:39',
  'al carnival time johnson',
  'mardi gras strut',
  NULL,
  'cajun, zydeco',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/72lXOu541fIfhiedJDCYYO',
  'found',
  91,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:42',
  'bobby mg and the creeps',
  'dont be a mardi gras creep',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:51',
  'rocking sydney',
  'mardi gras second line',
  NULL,
  '',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '11:53',
  'OLYMPIA BRASS BAND',
  'mardi gras in new orleans',
  NULL,
  'brass band, cajun, zydeco',
  'Old Time Country and Bluegrass',
  'Hazel The Delta Rambler',
  'https://open.spotify.com/track/0QR95uiVATqSNRqu9PN3Hc',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:07',
  'Bruce Daigrepont',
  'PERRODIN TWO STEP',
  'Petit Cadeau',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/4qzNsWHpgobDVDHgbODci8',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:08',
  'Beausoleil',
  'La Chanson de Mardi Gras',
  'Live! From the Left Coast',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/78pdrIglhve4k01gCpYGlr',
  'found',
  73.7,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:09',
  'Beausoleil',
  'Maman Rosin Boudrfeaux',
  'The Best of the Crawfish Years 1985-1991',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:14',
  'Zachary Richard',
  'Mardi Gras Mambo',
  'Mardi Gras in New Orleans',
  'cajun, zydeco, chanson québécoise',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3y1qaSydcnJxLkdLc3CPP0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:18',
  'Waylon Thibodeaux',
  'Iko-Iko',
  'Like A Real Cajun',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0y892uuQ8vSlNpcemegP2r',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:22',
  'Beau Jocque and the Zydeco Hi-Rollers',
  'Don''t Tell Your Mama, Don''t Tell Your Papa',
  'Pick Up on This!',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5nSKA2EVEjLiNwtKwv2EtY',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:23',
  'The Pine Leaf Boys',
  'Pine Grove Blues',
  'Allons Boire un Coup',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6FaFcTtaW6a51Hh9PyGfwA',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:30',
  'Wayne Toups & Zydecajun',
  'Bosco Blues',
  'Little Wooden Bax',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0doTfizvRlTWQrLgalU4MB',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:36',
  'Keith Frank & the Soileau Zydeco band',
  'Mardi Gras 2nd Line',
  'The Zydeco Icon',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:40',
  'Zydeco Force',
  'Do What you Wanta',
  'Cajun & Zydeco mardi Gras',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2qJ64CVUzHB49wvf5UlmHT',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:43',
  'Dr John',
  'My Indian Red',
  'Big Band Voodoo',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/1W1k05Mz0NZuuRh6OltsCH',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:47',
  'Beau Jocque & The Zydeco Hi-Rollers',
  'Beau''s Mardi Gras',
  'Beau Jocque Boogie',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3LxVmTMbtCTEkrIQpLFMw5',
  'found',
  93.1,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:51',
  'Dwayne Dopsie and the Zydeco Hi-Rollers',
  'Dancing in the Streets',
  'Now is the Time',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:53',
  'Beausoleil',
  'Zydeco Gris-Gris',
  'Bayou Boogie',
  'cajun, zydeco',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2ckLilx6Gb52PYjNBsSGNi',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '12:57',
  'Lost Bayou Ramblers',
  'My Generation',
  'En Francais Cajun ''n'' Creole Rock ''n'' Roll',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:06',
  'Krewe Du Belge',
  'Grand chef',
  'De Bruxelles a New Orleans',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/2FdY1vAkp2gWSbyDukk3jZ',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:06',
  'ReBirth Brass Band',
  'We Come to Party',
  'Mardi Gras The Language of New Orleans',
  'brass band, zydeco, new orleans bounce',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/5TjRH2Kma9aJsNryosQQy6',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:15',
  'Sunpie',
  'Chanson Du Mardi Gras',
  'Mardi Gras The Language of New Orleans',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:22',
  'horace Trahan',
  'Get the Party Started',
  'All The Way',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/0uWjxOdDcfQPdsTlDvlM1J',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:29',
  'Soul Express Brass Band w Corey Ledet',
  'Superstition',
  'En Francaise Vol 2',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:40',
  'Buckwheat Zydeco',
  'Zydeco Boogaloo',
  'Zydeco The Essential Collection',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/48xRgLvVyzTpYAHMZWqgTz',
  'found',
  75,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:40',
  'Zydeco Joe and the Laissez le bon temps Rouler',
  'You Can''t Rooster Like You Used To',
  'Black Cat',
  '',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:44',
  'Clifton chenier',
  'Party Down at the Blue Angel Club',
  'Clifton Chenier: King of Louisiana Blujes & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/3ae7pYMYNAVEPTA96UsNIf',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:50',
  'Clifton chenier',
  'Take Off Your Dress',
  'Clifton Chenier: King of Louisiana Blues & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/6vNThwQz1g6JqebrawPvFh',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '13:55',
  'Clifton Chenier',
  'What I''d Say',
  'Clifton Chenier: King of Louisiana Blues & Zydeco',
  'zydeco, cajun',
  'Cajun and Zydeco',
  'Charles Laborde or Jim Hobbs',
  'https://open.spotify.com/track/02Mz7RSGfCnuEWWCmg5jc0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
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
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:04',
  'John Prine',
  'When I Get to Heaven',
  'The Tree of Forgiveness',
  'americana, folk, singer-songwriter',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2FZaryIRIjIq6HloMNWdHS',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:08',
  'Linda Ronstadt',
  'We Need a Whole Lot More of Jesus (And a Lot Less Rock & Roll)',
  'Hand Sown...Home Grown',
  'country rock, mariachi',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/4OM5nxrjvuuVf27782JsYT',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:10',
  'Paul Sanchez',
  'All Are Welcome In Heaven',
  'Red Beans and Ricely Yours...',
  'brass band, cajun, zydeco',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6UNzLDDoiAghsXQZqk5WZu',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:13',
  'Amy Helm',
  'Freedom for the Stallion',
  'This Too Shall Light',
  'americana, modern blues',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5eQ8R4FX7gLJcxn7bCgddz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:19',
  'Margo Cilker',
  'Crazy or Died',
  'Valley Of Heart''s Delight',
  'americana, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/25Vx8MaTmg41gH5aRgywrx',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:19',
  'Turnpike Troubadours',
  'Just Like Old Times',
  'Just Like Old Times - Single',
  'red dirt, texas country, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3ezrvjowvUvj1l5jFXtcP8',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:24',
  'Reed Alleman',
  'Don Dubuc',
  'Operation Gumbo Drop',
  'cajun',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3j6EOdR6TmcLWR8flJ29OB',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:26',
  'Dr. John',
  'Chickee Le Pas',
  'N''Awlinz Dis, Dat, or D''Udda',
  'cajun, zydeco',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6JU1TsyWRQnGYh8TW2ymPF',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:35',
  'Mason Via',
  'See It While You Can (National Parks Song)',
  'See It While You Can (National Parks Song) - Single',
  'newgrass, bluegrass',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/15d7oy5OgyfIHYdVZlU7yv',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:42',
  'Mason Via',
  'Mardi Gras (feat. Sierra Ferrell)',
  'Mardi Gras (feat. Sierra Ferrell) - Single',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:46',
  'Truckstop Honeymoon',
  'Mardi Gras In Kansas',
  'Great Big Family',
  'bluegrass, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0B5YT9d1bL4WMkOf0JNBJc',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:49',
  'Johnette Downing',
  'Who Got the Baby in the King Cake? (feat. Scott Billington)',
  'Swamp Romp',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:51',
  'Louie Ludwig',
  'The Things You Done on a Mardi Gras Day',
  'The Things You Done on a Mardi Gras Day - Single',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6OJe6nVfP2jly2G4dD4167',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '14:55',
  'ron cuccia and the jazz poetry group',
  'streets / my darlin new orleans',
  'ron cuccia and the jazz poetry group',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:07',
  'Carsie Blanton',
  'FBI',
  'The Red Album Vol 2',
  '',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/2JxvAmrRvRf2ENEQ752CDJ',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:09',
  'Mark Rubin, Jew of Oklahoma',
  'Goon with the Hammer',
  'Goon with the Hammer - Single',
  'alt country, rockabilly',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/0fgBU3QoKbGrUBJDoj5fOD',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:12',
  'Jesse Welles',
  'Join Ice',
  'No Kings',
  'folk punk, folk',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/19vif5x0vGqHgc3GEirUqN',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:14',
  'Jesse Welles',
  'No Kings',
  'No Kings',
  'folk punk, folk',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3M2S0jh9YLJzKXKGI4zpWv',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:17',
  'Paul Thorn',
  'I Don''t Like Half the Folks I Love',
  'The Best of Paul Thorn',
  'americana, roots rock, alt country',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6tWHBYPdiTBHMG4JD0ZQe0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:21',
  'Jeffrey Martin',
  'I Know What I Know',
  'I Know What I Know - Single',
  'americana',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/6OOJ1ocnXSMGEva60uAX4g',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:26',
  'Gangstagrass',
  'Your Land (feat. Branjae)',
  'No Time For Enemies',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:37',
  'J. Monque''d',
  'Indian Princess',
  'After the Beep',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:42',
  'Zachary Richard',
  'Down On Second Stree',
  NULL,
  'cajun, zydeco, chanson québécoise',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/5ugwBC9fTurGVuJBpV36ur',
  'found',
  88.8,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:42',
  'Zachary Richard',
  'handa wanda',
  'Mardi Gras Mambo',
  'cajun, zydeco, chanson québécoise',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/1KOSazxfZZzPKlVxfLLcjp',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:46',
  'Lost Bayou Ramblers',
  'Les mardi gras',
  'ASTEUR',
  'cajun, zydeco',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/62JmWt8ElrQMgHowm8ta0s',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:51',
  'Sunipie and the Louisiana Sunspots',
  'Mardi Gras',
  'Lick a Hot Skillet',
  'zydeco, cajun',
  'Homespun Americana',
  'Ol Man River',
  'https://open.spotify.com/track/3Q9TqtCDNVyTcPwQQiLmz9',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '15:58',
  'Camile Baudoin',
  'I Ain''t Ready For It',
  'This Old House',
  '',
  'Homespun Americana',
  'Ol Man River',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:04',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:07',
  'Al Johnson',
  'Carnival Time',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:10',
  'Wild Magnolias',
  'Smoke My Peace Pipe',
  'NOJHF Jazz Fest (D5)',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1oAsFFpyvGtJAvBPuwuDXg',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:17',
  'Radiators',
  'Smokin` Hole',
  'Bucket of Fish',
  'jam band, cajun, zydeco',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/2LbLQDXh4TIlvDJX8I54wL',
  'found',
  73.6,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:28',
  'Galatic, Big Chief Monk Boudreaux, Golden Eaglean',
  'sew sew sew',
  'Galactic vintage reserve',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:32',
  'The Wild Magnolias',
  'Life Is A Carnival',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1CYt8hnBEwigMBnEWA13a0',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:38',
  'Kermit Ruffins',
  'If You`re A Viper',
  'The Big Butter & Egg Man',
  'brass band, cajun',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1eKI0z1DFipcEl6KGK7qub',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:41',
  'Shotgun Jazz Band',
  'Weed Smoker''s Dream',
  'Don''t Give Up the Ship',
  'swing music, ragtime',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/47VZZwD4gDn0L4XxhLMWuE',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:52',
  'Bo Dollis',
  'Injuns Here They Come',
  NULL,
  'cajun, zydeco, brass band',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/3ovyDZNOAdEl91BwVvVzEg',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '16:54',
  'New Orleans Suspects',
  'Carnivale',
  'Ouroboros',
  'brass band, cajun',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/4yTowIVyyMIQ7bMajgrWP4',
  'found',
  88.2,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:06',
  'Meters',
  'Live Wire',
  'Funkify Your Life- The Meters An',
  'funk, soul, jazz funk',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/671KFkzwROV2wWPFNFRGnf',
  'found',
  73.9,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:08',
  'Seva Venet',
  'Celebrate (At The Mardi Gras)',
  'Unsung',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0WRc5w2XPH8St260jSKeUz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:13',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans [Mardi',
  'cajun, zydeco, classic blues',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:19',
  'Harry Connick Jr.',
  'Smokey Mary',
  'Smokey Mary',
  'big band, christmas, vocal jazz',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0fvcL4yrfFB8EeiLI16MkO',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:23',
  'Storyville Stompers',
  'Mardi Gras Stomp',
  'A Brass Menagerie',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:32',
  'Little Queenie',
  'If Ever I Cease To Love',
  'Purple Heart',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/42X7UAxXvRPg8JigOwrmYh',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:37',
  'Jon Cleary',
  'Zulu Coconuts',
  NULL,
  'cajun, jazz funk',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/0HmkfDik3HhtV3LU2LxUe9',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:41',
  'New Orleans Nightcrawlers',
  'North Rampart Street Parade',
  'Too Much To Hold',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:45',
  'Basin Street Six',
  'South Rampart Street Parade',
  'The Six Complete Circle Recordin',
  'ragtime',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/7x6VgQcMnc85P6PGMEUldz',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:49',
  'Earl King',
  'Street Parade',
  'Mardi Gras In New Orleans [Mardi',
  'new orleans bounce, classic blues, cajun',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:52',
  'Burris',
  'Waiting For The Parade To Come',
  'Waiting For The Parade To Come',
  '',
  'Sitting In',
  'Elizabeth Meneray',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '17:57',
  'Serabee',
  'The Greatest Party Of All',
  NULL,
  '',
  'Sitting In',
  'Elizabeth Meneray',
  'https://open.spotify.com/track/1r7ag4sDWm3a8z0dzWFc4K',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:00',
  'Colossus Brass Band',
  'Royal St. Parade',
  'Sing On',
  'brass band',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/7kfjo7hWrHKqkvo72XgHRR',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:10',
  'Papa Mali, Kirk Joseph, Big Chief Monk Bourdeaux',
  'EArly In the Morning',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:12',
  'Dirty Dozen Brass Band',
  'Ain`t Nothin` But A Party',
  'Medicated Magic',
  'brass band, jam band, cajun',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/25mkHWcpdViKPnOph1ic69',
  'found',
  90.3,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:22',
  'treme brass band',
  'hey pocky way',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:27',
  'Cara Harrison',
  'Indian Red',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/0ZAWGkz8w3GJjXylv9gODc',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:34',
  'Treme Brass Band',
  'Golden Crown',
  'Treme Traditions',
  'brass band, cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/7zyRKdlrRqoFrvyvq5w5YG',
  'found',
  87.9,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:42',
  'Bo Dollis & The Wild Magnolias',
  'Hell Out The Way',
  'A New Kind Of Funk',
  'cajun, brass band, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/0oFDCZxF4kyYzxzr4ihjXD',
  'found',
  90.9,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:42',
  'Marcia Ball, Irma Thomas, and Tr',
  'Sing It',
  'Sing It!',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:47',
  'New Orleans Nightcrawlers',
  'Funky Liza',
  'Funknicity',
  'brass band, cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/4RotEf5oCe7uK9xt2Plhbz',
  'found',
  98,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '18:55',
  'Hunks Of Coal',
  'Santa''s Gonna Make it for Mardi',
  'Stocking Stuffers Vol. 1',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/68zLZ2sSToSpdWJ7t4MemJ',
  'found',
  83.2,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:07',
  'Alex McMurray',
  'Gluestick Situation (SINGLE)',
  NULL,
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:13',
  'Flagboy Giz',
  'Shallow Water',
  'The Culture',
  'new orleans bounce, bounce, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/4EHEeeYtBRnL6ds3Vk5FXP',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:16',
  'Dr. John',
  'Save The Bones For Henry Jones',
  'Mercernary',
  'cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/4ghDqsorItacSyVOZ0FL0O',
  'found',
  100,
  '2026-02-16 07:05:51'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:20',
  'Professor Longhair',
  'Rum And Coca-Cola',
  'Byrd Lives (CD01)',
  'cajun, zydeco, classic blues',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/6Xzilgy5K6pdzDem5iwgGM',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:24',
  'Neville Brothers',
  'Voodoo',
  'Live On Planet Earth',
  'cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/465JohWeaz2FKbdKVmXvrJ',
  'found',
  86,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:29',
  'John Rankin',
  'If Ever I Cease To Love',
  'Fess` Mess',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/6HvrEk7lHul74FXGsRKTI4',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:39',
  'Baby Dodds Trio',
  'My Indian Red',
  'Jazz A''La Creole',
  'ragtime',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/1VVcNmW450cKwe7HPR6XyZ',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:47',
  'Radiators',
  'King Earl',
  'Welcome To The Monkey House',
  'jam band, cajun, zydeco',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/2Rf1XM9lj5xWwnGiGSVDIX',
  'found',
  73.6,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:48',
  'Lulu And The Broadsides',
  'Ice Cream Man',
  'Lulu And The Broadsides',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  'https://open.spotify.com/track/3os4nAXm4pZGOvQKyjdpJC',
  'found',
  82.8,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '19:53',
  '101 Runners',
  'Let`s Go Get `Em',
  'New Orleans Funk 101',
  '',
  'Hep Cat''s Ball',
  'the Secretary of Swing',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '20:00',
  'Wild Magnolias',
  'All On Mardi Gras Day',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'Spirits of Congo Square',
  'Baba Geno',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  77.5,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:05',
  'Rebirth Brass Band',
  'Rebirth Melody/Casanova',
  'Hot Venom',
  'brass band, zydeco, new orleans bounce',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1lBSI8fNdGADHsucrftGSY',
  'found',
  98,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:16',
  'Dr. John',
  'Mardi Gras Day',
  'Remedies',
  'cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:24',
  'The Wild Tchoupitoulas',
  'Indian Red',
  'The Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5lAA2A2nEUCYYWfKCJhvGP',
  'found',
  98,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:32',
  'Hundred & One Runners',
  'Shallow Water',
  'Best of New Orleans (Mardi Gras Indians)',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5gJKDqC7UidqCmquObHy9N',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:37',
  'Hundred & One Runners',
  'Injuns Here Dey Come',
  'Best of New Orleans (Mardi Gras Indians)',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1oGqcvkZPkxLndniVtqzRi',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:44',
  'Ivan Neville, Trombone Shorty, Ben Jaffe, Charlie Gabriel',
  'Greatest Place On Earth',
  'Touch My Soul',
  'jam band, soul blues, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/0SpGdqhcIm99dHcsnPVMKc',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:48',
  'Professor Longhair',
  'Mardi Gras In New Orleans',
  'Rum and Coke',
  'cajun, zydeco, classic blues',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5RLM4QZIpPjzqDAIjLkZEa',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:53',
  'Kermit Ruffins, Rebirth Brass Band',
  'Mardi Gras Day',
  'Throwback',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6KbSbDvr0tmMawXb4waMby',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '22:58',
  'James Andrews, Dr. John, Donald Harrison, Trombone Shorty, Mark',
  'Zulu King',
  'James Andrews and Trombone Shorty Brothers',
  'brass band, cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/6qAU4NkGPWzgOTJmgcsI4q',
  'found',
  89.5,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:04',
  'Rebirth Brass Band',
  'LET''S GO GET ''EM',
  'Rebirth of New Orleans',
  'brass band, zydeco, new orleans bounce',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3uL2fgvb2HX0QmmheDxXV9',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:08',
  'Professor Longhair, Earl King',
  'Big Chief - Complete Version',
  'Ultimate Mardi Gras',
  'cajun, zydeco, classic blues',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3heU4aUor9NIFsgvFAJMnL',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:13',
  'The Neville Brothers',
  'Hey Pocky Way',
  'Fiyo On The Bayou',
  'cajun, zydeco',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/48byBopt3UYEymfD8NoCuI',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:18',
  'Meters',
  'They All Ask''d for You',
  'Fire on the Bayou',
  'funk, soul, jazz funk',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/7mPP2cZ3HUfx6M3NhnolrR',
  'found',
  73.9,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:22',
  'The Wild Tchoupitoulas',
  'Big Chief Got A Golden Crown',
  'The Wild Tchoupitoulas',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/1syAcbLLO8U4m7r0W3kmo9',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:26',
  'Wid Tchoupitoulas',
  'Hey Hey ( Indian Comin)',
  'The Wild Tchoupitoulas',
  '',
  'What''s New',
  'Duane Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:31',
  'The Wild Magnolias',
  'All On A Mardi Gras Day',
  'Life Is A Carnival',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/63xHSdcmRBNmOP6B50onKI',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:34',
  'Professor Longhair',
  'Big Chief',
  'Fess at Home',
  'cajun, zydeco, classic blues',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/3ipsm3j6cWBCELjv9GhAlR',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:42',
  'Stop, Inc',
  'The second Line',
  'Ultimate Mardi Gras',
  'cajun, zydeco, brass band',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5YizW243gThmie7RaxwL7N',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:53',
  'Baby Dodds Trio',
  'Tootie Ma Is A Big Fine Thing',
  'Jazz A''La Creole',
  'ragtime',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/17QS5h4YToOTKsPsjSAl2x',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-15',
  '23:56',
  'Benny Grunch',
  'Ain''t No Place to Pee on Mardi Gras Day',
  'Grunch Road',
  'cajun, christmas',
  'What''s New',
  'Duane Williams',
  'https://open.spotify.com/track/5FEYKr03PbmzMiodSj1D2D',
  'found',
  77.4,
  '2026-02-16 07:05:52'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-16';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '00:01',
  'Al Johnson',
  'Carnival Time',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0MwjzbvJgJgaP2Moq64NHz',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '00:02',
  'The Meters',
  'Mardi Gras Mambo',
  'Fire On The Bayou',
  'funk, soul, jazz funk',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3KfmYf7PTtFNYFNNhsdLZt',
  'found',
  100,
  '2026-02-16 07:05:52'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-16',
  '00:04',
  'Dixie Cups',
  'Iko Iko',
  'VA Mardi Gras in New Orleans, Vol II',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/21x7g5Nd6bsjmelDUlZ6Mv',
  'found',
  100,
  '2026-02-16 07:05:52'
);