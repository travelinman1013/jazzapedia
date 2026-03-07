-- WWOZ Database Export
-- Generated: 2026-03-07T07:42:34.673Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-06 10:30:07
-- Days: 3
-- Tracks: 368

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-04',
  'https://open.spotify.com/playlist/578G4JMFLtqDANdELxSUle',
  '{"totalTracks":163,"successfullyFound":109,"notFound":54,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-05 08:04:52',
  '2026-03-07 07:42:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-05',
  'https://open.spotify.com/playlist/4SassxkBAsRUHgQarZ59II',
  '{"totalTracks":131,"successfullyFound":89,"notFound":42,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-05 08:04:52',
  '2026-03-07 07:42:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-06',
  'https://open.spotify.com/playlist/5RwfUmgeuI1ZXngDdOGFV8',
  '{"totalTracks":63,"successfullyFound":45,"notFound":18,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-07 07:42:33',
  '2026-03-07 07:42:33'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-03-04';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:05',
  'John Coltrane',
  'Welcome',
  'The Gentle Side of John Coltrane',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6875x2ACym3agd95Ma677q',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:09',
  'Petros Klampanis',
  'Seeing You Behind My Eyes',
  'Irrationalities',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4UKFBuKueY8nQvJ6oqEpgU',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:15',
  'John Abercrombie and Ralph Towner',
  'Avenue',
  'Sargasso Sea',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:20',
  'Amina Figarova',
  'Rain River',
  'Suite for Africa',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:21',
  'Abdullah Ibrahim',
  'The Balance',
  'Mukashi (Once Upon a Time)',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7CdVIMA4Q9hRIRQ3OMAiPL',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:33',
  'Joel Ross',
  'Wisdom Is Eternal (for Barry Harris)',
  'Gospel Music',
  'jazz, christian jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1ao7u1iChhD8x0T1BVR7kQ',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:37',
  'Jonathan Kreisberg',
  'Stella By Starlight',
  'Wave Upon Wave',
  'jazz, jazz ballads, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/12HbOvCASKEa1YioLYqIDy',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:42',
  'Antoine Boyer',
  'Little Big Dream',
  'Everything Moves',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3kSSfAcavvctMB8gcJCKSV',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:48',
  'Benjamin Verdery',
  'Miami, Florida',
  'Some Towns & Cities',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '06:49',
  'Keith Jarret',
  'Part II A',
  'The Koln Concert',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:06',
  'Ginger Baker',
  'Mountain Time',
  'Horses & Trees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:09',
  'Chucho Valdes',
  'Ochun',
  'Jazz Bata 2',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:16',
  'Larry Coryell',
  'Blue Monk',
  'Twelve Frets to One Octave',
  'jazz fusion, smooth jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3sLgF7cPLc8GPCGmu88uBD',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:19',
  'Bill Laurance',
  'December in New York',
  'Live at Union Chapel',
  'jazz fusion, nu jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3rXiWzhHkG5QPVyDQroix8',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:25',
  'Thumbscrew',
  'Snarling Joys',
  'Ours',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:31',
  'Bill Frisell & Fred Hersch',
  'My Little Suede Shoes',
  'Songs We Know',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5fBkc5nB7civN72h0vANdq',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:36',
  'Eric Reed',
  'Black Tables',
  'Something Beautiful',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:47',
  'John Zorn, George Lewis, Bill Frisell',
  'News for Lulu',
  'News for Lulu',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:47',
  'Jorja Smith',
  'Rose Rouge',
  'Blue Note Re:Imagined',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/36apwMphkcaS63LY3JJMPh',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:49',
  'Allison Miller''s Boom Tic Boom',
  'White Wolf',
  'Glitter Wolf',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '07:58',
  'Jason Marsalis & The 21st Century Trad Band',
  'Ratio Man Strikes Again',
  'Melody Reimagined: Book 1',
  'free jazz, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2DfKx5F6HKa4n1Rf4YIJ2O',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:03',
  'Modern Jazz Quartet',
  'Blues in H (B)',
  'Blues on Bach',
  'cool jazz, jazz, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6vKAryRMn9EjdIeHuY5fBZ',
  'found',
  88.2,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:06',
  'Pat Metheny',
  'Ferry Cross the Mersey',
  'One Quiet Night',
  'jazz fusion, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/04DKjllXkDHe8p3raHlkGd',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:10',
  'Masakowski Family',
  'House of the Rising Sun',
  'N.O. Escape',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/47g0x1R0VK71cj5V0qjfYy',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:18',
  'Bill Frisell & Fred Hersch',
  'Wave',
  'Songs We Know',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5cRgYlM9XHgdeu8whC4tOx',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:24',
  'Mitch Dalton',
  'Yeh Yeh',
  'Out of the Shadows',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3Ichk37zV9aivHAbptHCkr',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:29',
  'John Scofield',
  'Not Fade Away',
  'John Scofield',
  'jazz fusion, jazz, jazz funk',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4hRahtU67y5kkygDFVclja',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:36',
  'Ginger Baker Trio',
  'Ginger Blues',
  'Going Back Home',
  'jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/59YSP8cWc0n0TbmGfJRar5',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:42',
  'Keith Jarrett',
  'Innocence',
  'Sleeper',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4YPu2rXuxOan2TeG3iyvbJ',
  'found',
  81.1,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:53',
  'Henry Butler',
  'Orleans Inspiration',
  'PiaNOLA Live 2008',
  'cajun, zydeco, blues',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/23GfoantKeMZy60ieXWrWw',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '08:53',
  'Leo Kottke',
  'A Child Should Be a Fish',
  'Ice Water',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7qv9Jd4axVqRiwNHqKWHCB',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:06',
  'FATS WALLER',
  'I BELIEVE IN MIRACLES',
  'THE COMPLETE FATS WALLER VOL 1',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1dn799mAaFZUsmMW0RnD1V',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:10',
  'DUKE ELLINGTON AND HIS FAMOUS ORCHESTRA',
  'DELTA BOUND',
  'DUKE ELLINGTON PRESENTS IVIE ANDERSON',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:21',
  'J.C. HIGGINBOTHAM AND HIS SIX HICKS',
  'GIVE ME YOUR TELEPHONE NUMBER',
  'LUIS RUSSELL 1929-30',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:22',
  'ALBERT WYNN AND HIS GUT BUCKET FIVE',
  'Parkway Stomp',
  'GET EASY BLUES',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:22',
  'FESS WILLIAMS AND HIS ROYAL FLUSH ORCHESTRA',
  'Kentucky Blues',
  'FESS WILLIAMS 1926-30',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:23',
  'LLOYD SMITH AND HIS GUT BUCKETEERS',
  'WAKE UP SINNERS',
  'THAT''S MY STUFF',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:33',
  'JIMMY JOHNSON AND CLARENCE WILLIAMS',
  'I''VE FOUND A NEW BABY',
  'JAMES P. JOHNSON 1928-31',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:33',
  'MARY DIXON',
  'DADDY, YOU''RE A LOW DOWN MAN',
  'THE COMPLETE BLUES SESSIONS OF GLADYS BENTLEY AND MARY DIXON',
  'classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3pyqeh8IuGpFFUoRPvNNDe',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:37',
  'LOUIS ARMSTRONG AND HIS SEBASTIAN NEW COTTON CLUB ORCHESTRA',
  'YOU''RE LUCKY TO ME',
  'LOUIS IN LOS ANGELES',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3KEJb1FPItn5tIStSKaFtx',
  'found',
  94.3,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:51',
  'BILLY BANKS AND HIS ORCHESTRA',
  'TAKE IT SLOW AND EASY',
  'THE RHYTHMAKERS 1932',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:51',
  'THOMAS MORRIC AND HIS ORCHESTRA',
  'WHO''S DIS HEAH STRANGER',
  'WHEN A GATOR HOLLERS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:52',
  'CLARENCE WILLIAMS AND HIS ORCHESTRA',
  'NEW ORLEANS HOP SCOP BLUES',
  'CLARENCE WILLIAMS 1933-34',
  'ragtime, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/158ydPJojzYPkn9Hdmcqdy',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:59',
  'ANNETTE HANSHAW',
  'WOULD YOU LIKE TO TAKE A WALK',
  'BENNY GOODMAN ACCOMPANIES THE GIRLS',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/52DmIUMGAYzMJ72t2bxVaI',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '09:59',
  'GLEN GRAY''S CASA LOMA ORCHESTRA',
  'LIMEHOUSE BLUES',
  'HARRISON RECORDS VOLUME A 14 GREAT HOT JAZZ CLASSICS',
  'big band, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6QujszZOD2SeCiKe82LAiF',
  'found',
  93,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:03',
  'MERLE JOHNSTON''S SAXAPHONE QUARTET',
  'DO SOMETHING',
  'PERSIAN RUG',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:13',
  'SAMMY LEWIS AND HIS BAMVILLE SYNCOPATORS',
  'ARKANSAS SHOUT',
  'STOP AND LISTEN!',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:15',
  'VICTORIA SPIVEY',
  'STEADY GRIND',
  'VICTORIA SPIVEY VOL 1',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2X8nSpXMmoXZR9TogdjdTD',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:19',
  'DIXON''S JAZZ MANIACS',
  'S.O.B. BLUES',
  'LEGENDS AND THE LOST',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:29',
  'ANDY KIRK AND HIS CLOUDS OF JOY',
  'Sweet and Hot',
  'CLOUDY',
  'big band',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0UFFHQdMGx0v3F5gIv0c7N',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:29',
  'JIMMIE NOONE''S APEX CLUB ORCHESTRA',
  'KING JOE',
  'JIMMIE NOONE''S APEX CLUB ORCHESTRA VOLUME ONE',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/4aplbZvtYLpb8U89vwLNyY',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:29',
  'SARA MARTIN',
  'MEAN TIGHT MAMA',
  'JIMMIE NOONE''S APEX CLUB ORCHESTRA 1922-28',
  'classic blues, ragtime, blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0GejgS68IOXPrViCPWoPv6',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:36',
  'ARCADIAN SERENADERS',
  'CARRY IT ON DOWN',
  'ARCADIAN SERENADERS',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0cxLmh1w2vCVEFqzualArq',
  'found',
  82.7,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:39',
  'JOHNNY DEDROIT AND HIS NEW ORLEANS ORCHESTRA',
  'BROWN EYES',
  'NEW ORLEANS IN THE 20''S',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:52',
  'CAB CALLOWAY AND HIS ORCHESTRA',
  'BASIN STREET BLUES',
  'HARLEM JAZZ 1921-31',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/607ZRaJVB9DhpCaZOJUD8x',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:52',
  'CLARENCE WILLIAMS JAZZ KINGS',
  'CANDY LIPS',
  'CLARENCE WILLIAMS JAZZ KINGS',
  'ragtime, swing music, boogie-woogie',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/33ddM6FgmkysmG8cBepqmQ',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '10:52',
  'MONK HAZEL AND HIS BIENVILLE ROOF ORCHESTRA',
  'IDEAS',
  'SIZZLING THE BLUES',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/09JPZUjx8zYtujkhdEFZZn',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
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
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:10',
  'Allen Toussaint',
  'Motion',
  'The Complete Warner Bros. Record',
  'cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1sD7LRiFI3ZYupwyFDw0W6',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:16',
  'James Booker',
  'Let Them Talk',
  'A Taste Of Honey- Live In New Or',
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0XpVuXY9Sc3Tfdka4yUIxS',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:20',
  'Dr. John',
  'Dorothy (Rebennack)',
  'Dr. John Plays Mac Rebennack - T',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2VJb3z9fTORzCqiRAgbd79',
  'found',
  79.5,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:50',
  'tom fischer',
  'DOUCE AMBIENCE',
  'no blues',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:51',
  'johnny adams',
  'cookin in style',
  NULL,
  'soul blues, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2wgBrNf7xjVKfkyQWk6znp',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:52',
  'marcia ball',
  'what''s a girl to do',
  NULL,
  'zydeco, cajun, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0U8I6G20YUbflMtbVjXKp4',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:53',
  'DAVE BARTHOLEMEW',
  'THE MONKEY',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:54',
  'big sam',
  'king of the party',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:54',
  'bonerama',
  'Ride Your Pony',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:55',
  'trombone shorty',
  'backatown',
  NULL,
  'brass band, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4ICmgorEOT19M7wdqYv2ti',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '11:56',
  'bonerama',
  'in the flesh',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:02',
  'New Orleans Nightcrawlers',
  'Funky Liza',
  'Funknicity',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4RotEf5oCe7uK9xt2Plhbz',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:14',
  'John Papa Gros',
  'Yes We Can',
  'Giants',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:17',
  'earl king',
  'handy wrap',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:25',
  'toyesauce',
  'as good as it gets',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:26',
  'Cha Wa feat. Irma Thomas',
  'Why You Wanna Do Me Like That',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:30',
  'John Boutte',
  'Southern Man',
  'Good Neighbor',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4SBm4WnmN1bSSSAfLVyp3b',
  'found',
  70,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:52',
  'Irma Thomas',
  'Soul Of A Man',
  'After The Rain',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/54WK7K8GBlemgkblHNdAFq',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '12:55',
  'Ivan Neville',
  'This Must Be The Place',
  'Touch My Soul',
  'jam band, soul blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0recPimKvrGzvi3Fr6x1fj',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:12',
  'dash rip rock',
  'string you up',
  NULL,
  'psychobilly, roots rock, rockabilly',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7yrSjhbLhElBt81jeFnLxS',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:13',
  'funk monkey',
  'wake-n-bake',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/68LqKRQH3Cyhbz4HvdDyYX',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:15',
  'North Mississippi Allstars',
  'Shake `Em On Down',
  'Hill Country Revue',
  'modern blues, southern rock, jam band',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/1xBVV8DXEcAVlR09kMBRjn',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:23',
  'Radiators',
  '16 Monkeys On A See Saw',
  'Welcome To The Monkey House',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:29',
  'steve conn',
  'the one and only truth',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0Svdv1B9D5pfnSmTRHuT54',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:32',
  'Sonny Landreth',
  'U.S.S. Zydecoldsmobile',
  'Live At Grant Street',
  'blues, blues rock, modern blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/6u1cZaKVTvo8mBSOkPrf1m',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:44',
  'brother tyrone',
  'personal manager',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:44',
  'james hunter six',
  'two birds with one stone',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '13:47',
  'Irma Thomas',
  'River Is Waiting',
  '50th Anniversary Celebration',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3Kk84LxHJbomDcM3NN41eP',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:04',
  'hound dog taylor',
  'dont blame me',
  'the best of',
  'classic blues, blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1ZItohuFi2ck8eOf7j5rVA',
  'found',
  79.3,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:05',
  'bb king',
  'crying wont help you',
  'singing the blues',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:06',
  'wanda jackson',
  'thunder on the mountain',
  'the party aint over',
  'rockabilly, psychobilly, rock and roll',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4eFc2uECJTbsZ0ciVZ601V',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:07',
  'coy hot shot love',
  'wolf call boogie',
  'sun records blues',
  'classic blues, blues, psychobilly',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/48TT4tmwtPkqP6tgrJ8tnh',
  'found',
  91.2,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:10',
  'James Booker',
  'Black Night',
  'King of the New Orleans Keyboard',
  'boogie-woogie, cajun, ragtime',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7ulVsqbqiS5AFWMNjYiNkG',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:10',
  'jb hutto',
  'young hawk''s crawl',
  'stompin at mother''s blues',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:12',
  'bukka white',
  'Baby Please Dont Go',
  '1968 country memphis blues',
  'blues, country blues, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4E6bT2REhzzB2E9dEGEf8C',
  'found',
  86,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:13',
  'blind lemon jefferson',
  'gone dead on you blues',
  'country blues',
  'country blues, blues, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6vH871qPREcihZD94djsdv',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:42',
  'howlin wolf',
  'moanin for my baby',
  'moanin in the moonlight',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/3GVbKBdl5s9ZqSONTBCf9H',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:43',
  'junior parker',
  'feelin'' bad',
  'sun original blues',
  'classic blues, blues, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5krehFQkD5hIIgfKz0mZ9f',
  'found',
  83.2,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:44',
  'john hammond',
  'shake for me',
  'southern fried',
  'blues, country blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1X1FyZ9nfyvMPXZJtICf3c',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:45',
  'john hammond',
  '32-20 blues',
  'vanguard visionaries',
  'blues, country blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4WgkbAerbRsPhX89VgwSUJ',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:45',
  'johnny shines',
  'give my heart a break',
  'johnny shines',
  'blues, classic blues, country blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1RMSL4DL7k9jVMoIQOne1o',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:47',
  'jimmie vaughan',
  'i hang my head and cry',
  'the pleasure is all mine',
  'blues, blues rock, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5BbQ27QHdhE4ILBE7Dm7KA',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '14:51',
  'LAzy Lester',
  'Im A Lover Not A F ighter',
  'all over you',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:11',
  'joe hill louis',
  'she may he yours',
  'sun original blues',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:12',
  'Link Wray',
  'Fire and Brimstone',
  NULL,
  'surf rock, rockabilly, proto-punk',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/3bEECCaIejir3Amq4iTpCg',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:12',
  'golden big wheeler',
  'bone orchard blues',
  'bone orchard',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:16',
  'john lee hooker',
  'let''s go out tonight',
  'the real folk blues',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4JjcjkUvtgf4qwOCaqbqoF',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:26',
  'BAd Smitty',
  'Smokestack Lightnin',
  'ACE 45',
  'blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1xwAYrFM38brQY2jgM1hKS',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:30',
  'rl burnside',
  'georgia women',
  'mr. wizard',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:31',
  'tmodel ford',
  'she asked me so i told her',
  'she a''int none of your''n',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:41',
  'guitar slim green',
  'shake em up',
  'stone down blues',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '15:42',
  'little freddie king',
  'fox hunt',
  'you dont know what i know',
  'blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0JkRFWPOViWnwlduIYvJDs',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '16:13',
  'donald byrd',
  'lament',
  'fuego',
  'hard bop, jazz funk, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2IBwQkafMrOheHtTI9h3tU',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '16:26',
  'poncho sanchez',
  'blue train',
  'trane''s delight',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5sNIblybXZ8EsxUP7IEjxU',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '16:27',
  'big maybelle',
  'candy',
  NULL,
  'blues, classic blues',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3eyNcSMZfRMJuxQnMk9oYS',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '16:33',
  'jon batiste',
  '''round midnight',
  'anatomy of angels',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5PfdX8Nfb0Ruosizjv3vZW',
  'found',
  86.3,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '16:38',
  'the three sounds',
  'repeat after me',
  'soul symphony',
  'hard bop, jazz, vocal jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6DKgHsHs69zBJAVWqiiaHr',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '16:44',
  'gerald wilson',
  'equinox',
  'new york,new sound',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '16:49',
  'david',
  'cousin esau',
  'keep the spirits singing',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:02',
  'jimmy smith',
  'back at the chicken shack',
  'back at the chicken shack',
  'hard bop, soul jazz, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0bv5vUJCvXM9G0cbjeikyY',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:04',
  'sonny stitt',
  'i remember bird',
  'i remember bird',
  'bebop, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6MSMK7zcFVCJW9Emptjutq',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:10',
  'flora purim',
  'primeira estrela',
  'speak no evil',
  'brazilian jazz, jazz fusion, latin jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3hJriQRRq9jR5zbPDeoTXz',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:17',
  'cyrus chestnut',
  'brother hawky hawk',
  'soul food',
  'christian jazz, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6Igj6Ieyg3EDC9A6HizzV5',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:21',
  'los hombres calientes',
  'james booker',
  'vol.5:carnival',
  'latin jazz, brass band, cajun',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3lwCkXdZN9IwmhXwSkUa9H',
  'found',
  78.4,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:33',
  'horace silver',
  'lonely woman',
  'song for my father',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6tLnACFUCVTrudp8NOLlHj',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:50',
  'james carter',
  'you never told me that you care',
  'the real question',
  'jazz, hard bop, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1wQvAZCusSCA2PoIejeHvB',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:52',
  'sarah vaughan',
  'misty',
  'live in japan,vol.1',
  'vocal jazz, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7gHFBNy0Qn86xGKJ9OdFTw',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '17:54',
  'joe williams and count basie',
  'every day i have the blues',
  'count basie swings,joe williams sings',
  'vocal jazz, big band, swing music',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1ZVV4uUYilEdZRySfKjvpx',
  'found',
  90.5,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:03',
  'herbie hancock',
  'cantaloupe island',
  'cantaloupe island',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1tckg6GRaTodmxnDd4Cxkl',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:05',
  'joe henderson',
  'caribbean fire dance',
  'mode for joe',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/7G8gepbudKDgEteyV4mU4j',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:26',
  'wess ''warmdaddy'' anderson',
  'dem dirty blues',
  'natural history',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0Gb7BPJw9ckMnRLGtv89aG',
  'found',
  80.4,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:29',
  'dakota staton',
  'i can''t quit you baby',
  'darling,please save your love for me',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:30',
  'lonnie liston smith',
  'desert nights',
  'expansions',
  'jazz funk, jazz fusion, acid jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/14LJ55dotv3mY4egjcVFzy',
  'found',
  77.4,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:43',
  'john coltrane and johnny hartman',
  'my one and only love',
  'john coltrane and johnny hartman',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0uPkCpuoERqrkBL06Art50',
  'found',
  90.3,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:52',
  'roy eldridge',
  'dale''s wail',
  'little jazz',
  'swing music, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/144Lz2V53YqfSuqziRFLZi',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:54',
  'nancy wilson',
  'never let me go',
  NULL,
  'vocal jazz, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1KYRbKVxBvEVvA0S0axwvS',
  'found',
  74.8,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '18:55',
  'wes montgomery',
  'bumpin''',
  'bumpin''',
  'jazz, hard bop, cool jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/610yNLPeKGsigKgouHgBxp',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '19:03',
  'Lloyd Lambert',
  'Hop & Jump',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:00',
  'Dave Bartholomew',
  'Jax Beer Boogie',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:02',
  'Weather Warlock',
  'Path To Complete Totality',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:03',
  'Soul Creole',
  'Trois rangs dub',
  'Single',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7fXLuuwv8fVJSVUNzrUl8W',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:08',
  'Clifton Chenier',
  'Ay-Tete Fee',
  'King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6p1gzUcEutBQr85CdhY9d9',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:08',
  'Clifton Chenier',
  'Boppin'' The Rock',
  'King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0pgep2XqOw4cR9IWtUs51R',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:12',
  'The Rolling Stones',
  'ZYDECO SON PAS SALES',
  'A Tribute to the King of Zydeco',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:18',
  'The Fabulous Thunderbirds',
  'Marked Deck',
  'The Fabulous Thunderbirds',
  'blues, classic blues, blues rock',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3VOC48ytljOgeOcjEPozVx',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:20',
  'Lil'' Band O'' Gold',
  '7 Letters',
  'Lil'' Band O'' Gold',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7gGfN5nLyxNXVSJ9BQAgSP',
  'found',
  87.1,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:23',
  'Brother Dege',
  'Where The Black Flowers Grow',
  'Aurora',
  'southern gothic, country blues',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3tgjo263hqpPrKmJXT4TPk',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:27',
  'Bob Dylan',
  'Masters of War',
  'Freewheelin'' Bob Dylan',
  'folk rock, folk, singer-songwriter',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7xVpkVkd1klTzLJEysIR7z',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:32',
  'Chris Lyons',
  'It''s Come Over Me',
  'Painters Street',
  'alt country',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/34AULNfZEr7QtLYqXaXM1O',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:36',
  'Lucinda Williams',
  'You Can''t Rule Me',
  'Good Souls Better Angels',
  'alt country, americana, outlaw country',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2c5i9rCK7kpvzGm0SpF4ek',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:40',
  'Warren Zevon',
  'Poor Poor Pitiful Me',
  'Warren Zevon',
  'singer-songwriter',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/5KTuCzrLewl3PuqcHRHhpN',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:44',
  'Andre Williams & The New Orleans Hellhounds',
  'If You Leave Me',
  'Can you Deal With It?',
  'northern soul',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1dmuvhL3Sjmmw1Ob9bGcIo',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:47',
  'Morning 40 Federation',
  'Sorry I Forgot',
  '45',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:50',
  'R Scully',
  'What Do You Talk About',
  'What Should I Wear',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '22:55',
  'Tasche De La Rocha & The Psychedelic Roses',
  'Blue Window',
  'Tasche De La Rocha & The Psychedelic Roses',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2ZdhY9ZlRZDfIP0AYX7z5J',
  'found',
  78.1,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:00',
  'K.C. Jones',
  'Queen Of The In Between',
  'Queen Of The In Between',
  'cajun, americana',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3hwVeE8gQM9iXsrLehGXTt',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:07',
  'Maddy Kirgo',
  'Try Harder',
  'Shadow On My Light',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1K1KYwt4P3FwtkNAGjxiPF',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:11',
  'William Onyeabor',
  'Atomic Bomb',
  'Atomic Bomb',
  'afrobeat',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6FDGkw2X2Pmp4AaQP8x6mX',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:18',
  'Sun Ra',
  'Nuclear War',
  'A Fireside Chat with Lucifer',
  'free jazz, experimental jazz, jazz',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2Dc4MWMRcM7coMtXKjf7sL',
  'found',
  98,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:26',
  'Taj Mahal',
  'Queem Been',
  'Senor Blues',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:31',
  'Quintron amd Miss Pussycat',
  'Not Good Enough',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:35',
  '9th Ward Marching Band',
  'The Boys Are Back In Town',
  'Sneakin'' Through The Streets',
  'brass band',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6BPNdWD5CKLT11vL1tnBR5',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:39',
  'Givers',
  'Atlantic',
  'In Light',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1VZpROrOO54BCinsg6UHuw',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:43',
  'Alex Cameron',
  'Real Bad Looking',
  'Jumping The Shark',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0VFBxr7B5RvXKBD2PinivT',
  'found',
  92.1,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:48',
  'Whip Appeal',
  'Turn Out To Be',
  'Shimmering Seed',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6W7diG7n85zoGwp9icosv9',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:53',
  'LCD Soundsystem',
  'X-Ray Eyes (Dub Remix)',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-04',
  '23:58',
  'Tribe Called Quest',
  'Scenario',
  'Low End Theory',
  'jazz rap, east coast hip hop, old school hip hop',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/23WwGxz4C59wG049xwCnrV',
  'found',
  72.2,
  '2026-03-05 08:04:53'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-05';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '00:24',
  'CARRTOONS',
  'LIGHTA feat. Rae Khalil',
  'Homegrown',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '00:25',
  'Little Simz',
  'Woman feat. Cleo Sol',
  'Sometimes I Might Be Introvert',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '00:26',
  'Tyjhier',
  'Bloom Where You''re Planted',
  'Bloom Where You''re Planted',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/0iAGanTqbbicUT5f7UW7oP',
  'found',
  100,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:22',
  'Jaelox',
  'Gentrification feat. High Heal Doula',
  'Rajae',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:26',
  'Charm Taylor',
  'FOLLOW THE MONEY',
  'SHE IS THE FUTURE',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:27',
  'Iman Europe',
  'Surrender',
  'Chrysallis',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/7l9Ac5tKjWEaN6Ng1Z5PJx',
  'found',
  74.8,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:30',
  'Bobbi Rae',
  'I Can Be feat. Allay Earhart',
  'I Can Be (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 08:04:53'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:31',
  'Feratu',
  'Typo',
  'Typo (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/1SvLn3H6ABr48oJtI4QD8t',
  'found',
  100,
  '2026-03-05 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:34',
  'glbl wrmng',
  'No ICE In NOLA feat. K''Ophie, Lucid Dreams, Damian Ch & Suave',
  'No ICE In NOLA (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:41',
  'Anjelika',
  'Fya feat. Ha-Sizzle',
  'Fya (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '01:42',
  'Tank and the Bangas',
  'Oak Tree',
  'Red Balloon',
  'alternative r&b',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/4kj92jveROrq8SVf7OyhIK',
  'found',
  100,
  '2026-03-05 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '02:33',
  'Meters',
  'Tippi-Toes',
  'Funkify Your Life- The Meters An',
  'funk, soul, jazz funk',
  'Overnight Music - Thursday',
  NULL,
  'https://open.spotify.com/track/4IC87geBnjbgduIfAz5xbd',
  'found',
  73.9,
  '2026-03-05 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '04:33',
  'Johnny Adams',
  'Cookin` In Style',
  'One Foot In The Blues',
  'soul blues, blues',
  'Overnight Music - Thursday',
  NULL,
  'https://open.spotify.com/track/2wgBrNf7xjVKfkyQWk6znp',
  'found',
  100,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
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
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '06:12',
  'Shabaka',
  'The Dimensions of Subtle Awareness',
  'Afrikan Culture',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '06:14',
  'Kamasi Washington [feat. Andre 3000]',
  'Dream State',
  'Fearless Movement',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '06:23',
  'Mulatu Astatke',
  'Mascaram Setaba',
  'Mulatu of Ethiopia',
  'ethiopian jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/6vSY1FnuOXKtdKgNjjMCKl',
  'found',
  100,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '06:39',
  'Charles Mingus',
  'Better Git Hot In Your Soul',
  'Three or Four Shades Of Blues',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '06:40',
  'Bill Frisell',
  'Small Hands',
  'In My Dreams',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0acNUAZsQ9snE0di0RPR0W',
  'found',
  87.4,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '06:48',
  'TJ Kirk',
  'Stomping Ground/ Untitled/ Green Chimney',
  'If Four Was One',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '07:03',
  'Joe Henderson and Alice Coltrane',
  'Earth',
  'The Elements',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '07:26',
  'Jamie Branch',
  'Simple Silver Surfer',
  'Fly Of Die ll: Bird Dogs of Paradise',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '07:32',
  'Grazyna Auguscik',
  'River',
  'Live Sounds Live',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7Evsse0GgnMFR26el5yCq1',
  'found',
  80,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '07:49',
  'Nduduzo Makhathini',
  'Amathongo',
  'In The Spirit Of Ntu',
  'jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7dII4RBxD5LxbkbQHlWfWJ',
  'found',
  100,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '07:55',
  'Chelsea Carmichael',
  'All We Know',
  'The River Doesn''t Like Strangers',
  'nu jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/43P9ATR9KbSpDlqsp2sGKW',
  'found',
  98,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '08:14',
  'Yusef Dayes',
  'Turquoise Galaxy',
  'Black Classical Music',
  'nu jazz, indie jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/443JNQpv6lz4wxnHZKV7wH',
  'found',
  72,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '08:17',
  '44th Move/ Alfa Mist',
  'Anthem',
  'Anthem',
  'nu jazz, indie jazz, ambient jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/32a8jbDTdYxLy489EwfK5Z',
  'found',
  81,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '08:23',
  'Apifera',
  'Beyond The Sunrays',
  '6 Visits',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '08:41',
  'Vels Trio',
  'enderness',
  'Yellow Ochre',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '08:44',
  'Black Flower',
  'Clap Hands',
  'Future Flora',
  'ethiopian jazz, nu jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2RkltQIPCo6jUOUCMXk4ID',
  'found',
  100,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '08:53',
  'Trioritat',
  'Death Pacito',
  'ALGO',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '11:11',
  'Jon Batiste',
  'Nocturne',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4OhTF2HxbbxFzGMAQYaFPx',
  'found',
  71.7,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '11:11',
  'TAKE SIX WITH AARON NEVILLE',
  'DO YOU KNOW WHAT IT MEANS TO MISS NEW ORLEANS?',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '11:14',
  'AARON NEVILLE',
  'ITS ALLRIGHT',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '11:28',
  'LEDISI',
  'FEELING GOOD',
  'LEDISI SINGS NINA',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '11:32',
  'MAHALIA JACKSON',
  'DON''T LET NOBODY TURN YOU AROUND',
  NULL,
  'traditional gospel, gospel, christmas',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3oOqSuuanq8NBbBCS6jLeL',
  'found',
  100,
  '2026-03-05 19:02:03'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '11:45',
  'Marcia Ball',
  'Peace, Love & BBQ',
  'Peace, Love & BBQ',
  'zydeco, cajun, blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1BYhQGwwigUjxiSKzCZXk1',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '11:45',
  'THE WRITE BROTHERS',
  'DO IT',
  NULL,
  'americana',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/03B9DFwD1NRWYB7ll5aqZk',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:00',
  'DAVE BARTHELOMEW',
  'SHRIMP AND GUMBO',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:07',
  'BEAU JOCQUE',
  'GIVE HIM CORNBREAD',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:20',
  'Jon Batiste',
  'Freedom (Big Freedia Remix)',
  'We Are',
  'new orleans bounce, bounce, ballroom vogue',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0bA4xeezZfNlNwiGibOMTI',
  'found',
  73.9,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:24',
  'JON BATISTE',
  'PINNACLE',
  'BIG MONEY',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6MEtH0EQP5rQb78gvvoF92',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:37',
  'THE NEVILLE BROTHERS',
  'ROCK''N''ROLL MEDLEY',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2OG06ETPfLmvVmsTDsFuRf',
  'found',
  85.4,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:43',
  'JO-EL SONNIER',
  'GUMBO RADIO',
  NULL,
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6Pwf222GUlC4VzeY1HaqVq',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:48',
  'zachary richard',
  'L''arbe est dans ses feuilles',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '12:56',
  'KERMIT RUFFINS',
  'i''m so new orlean',
  NULL,
  'brass band, cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5PPG6S0didC96fCXpwtIDY',
  'found',
  72.2,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:05',
  'monty alexander with herlin riley',
  'ONE MINT JULEP',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:26',
  'percy sledge',
  'if you''ve got the money i''ve got the time',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5gcHlegboHCbT0b28vBYYY',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:26',
  'professor longhair',
  'it''s my own fault',
  NULL,
  'cajun, zydeco, classic blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3r26dtaDtehrzXKrAXGX75',
  'found',
  93.7,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:29',
  'dixie cups',
  'iko iko',
  NULL,
  'doo-wop',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0hc44Di7G79vgVhwEwgZbJ',
  'found',
  82.7,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:32',
  'DONALD HARRISON, JR.',
  'iko iko',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:35',
  'LAKOU MIZIK',
  'IKO KREYOL',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:47',
  'Los Guiros',
  'Serpiente',
  'Alma De Cumbia',
  'electrocumbia',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5zGodAqsHVwOo1lZu4ZTsI',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '13:55',
  'Lee Dorsey',
  'Thank You',
  'Yes We Can Night People',
  'northern soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6c1nq5DRF1Nf7cHnaTJUDe',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
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
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:03',
  'Marvin Gaye',
  'Got To Give It Up',
  'Great Songs and Performances [19',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4JmZyfkzXWN7pHJsJpN6XP',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:07',
  'GLADYS KNIGHT',
  'LOVE OVERBOARD',
  'ALL OUR LOVE',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2dykYf0mZG217bYkiREKEh',
  'found',
  76.4,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:12',
  'Johnny Guitar Watson',
  'Superman Lover',
  'The Funk Anthology (CD01)',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4uSkp9MFh5VWMvmk6kz91a',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:24',
  'ASHORD & SIMPSON',
  'DON''T COST YOU NOTHING',
  'SEND IT',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:28',
  'Earth, Wind And Fire',
  'On Your Face',
  'Spirit',
  'funk, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1364cfVtDUV74zIeMl6ydQ',
  'found',
  89.5,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:33',
  'BARRY WHITE',
  'IT''S ECSTACY WHEN YOU LAY DOWN NEXT TO ME',
  'ALL TIME GREATEST HITS',
  'disco, soul, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3QXNBUYJX2aekx6mHQ14GZ',
  'found',
  94.9,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:43',
  'FUNKADELIC',
  'KNEE DEEP',
  'SINGLE',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:48',
  'Etta James',
  'I Want To Ta Ta You, Baby',
  'Life, Love & The Blues',
  'soul, soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6TllD0Szp2p1N11PswrgeJ',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '14:54',
  'KOOL & THE GANG',
  'GET DOWN ON IT',
  'THE VERY BEST OF KOOL 7 THE GANG',
  'disco, funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4Cv6ongCvJy9JfSkWVnb5D',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '15:10',
  'Stevie Wonder',
  'Superstition',
  'Talking Book',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4N0TP4Rmj6QQezWV88ARNJ',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '15:14',
  'LAKESIDE',
  'FANTASTIC VOYAGE',
  'GREATEST HITS',
  'funk, post-disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6lFQTBeL6VQcQ1ztAYPekp',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '15:27',
  'TEDDY PENDERGRASS',
  'WHEN SOMEBODY LOVES YOU BACK',
  'THE ESSENTIAL TEDDY PENDERGRASS',
  'philly soul, quiet storm, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7wJeXISGGTLVv2kBPtCJHw',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '15:32',
  'THE O''JAYS',
  'I LOVE MUSIC',
  'FAMILY REUNION',
  'philly soul, classic soul, motown',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/222TScMmzaZ0IdkvbLoin2',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '15:44',
  'THE COMMODORES',
  'BRICK HOUSE',
  'COMMODORES',
  'motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5VJjhHyG8NZ5xdgG6uTb3P',
  'found',
  73.6,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '15:48',
  'HEATWAVE',
  'THE GROOVE LINE',
  'HEATWAVE''S GREATEST HITS',
  'disco, funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3ptTr5IwiVaLcRDqfIypMs',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '15:58',
  'CON FUNK SHUN',
  'MS.GOT-THE-BODY',
  'THE BEST OF CON FUNK SHUN',
  'funk, quiet storm',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7GSIspdEqyY16qvcBo2l6j',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:02',
  'DIRTY DOZEN BRASS BAND',
  'JOHN THE REVELATOR',
  'Funeral For A Friend',
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2YDUeulONtt8IFIsZfmRst',
  'found',
  90.3,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:11',
  'clifton chenier',
  'baby please.',
  NULL,
  'zydeco, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1BEAqhqgxlSA6UsL3QgpfG',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:11',
  'wilbert harrison',
  'when the saints,.',
  NULL,
  'doo-wop, rockabilly, boogie-woogie',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/57uIlJwEbAwpPKhsmYsBaZ',
  'found',
  81.7,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:13',
  'bob dylan',
  'ballad of frankie lee and judas priest',
  NULL,
  'folk rock, folk, singer-songwriter',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1XXHPSNbmHgi8EJvO3yGyd',
  'found',
  95.8,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:13',
  'miles davis',
  'round midnight.',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/04NGy0LpM1gvAd1obCmz4z',
  'found',
  98,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:21',
  'andre williams',
  'my time will come',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6fBBCtkINfdmoNuaknpg4l',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:29',
  'etta james',
  'stop the wedding',
  NULL,
  'soul, soul blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7rCow4T8qTxnFWHeGGlvSa',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:29',
  'oscar brown jr',
  'sixteen tons.',
  NULL,
  'vocal jazz, soul jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2VAXzm5PswsE4Pw4TwrgUe',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:32',
  'cedric burnside',
  'get your groove on',
  NULL,
  'blues, modern blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7rTMCY2QFWN8iHD1JjCWye',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:32',
  'miles davis',
  'seven steps to heaven',
  NULL,
  'jazz, cool jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/681qNWaeSksUBFBqXxAknQ',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:39',
  'esther phillips',
  'when a woman loves a man',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2PFqgzG65dvpdsdIkMzPkA',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:41',
  'the neville brothers',
  'ain''t no sunshine.',
  NULL,
  'cajun, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/19Dyp8dTzhwJgOAmmfOjVo',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:45',
  'louisiana red',
  'got a girl with a dog won''t bark',
  NULL,
  'blues, classic blues, modern blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2wmUgWJP3VhavScfHloBKL',
  'found',
  74.2,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:49',
  'mable john',
  'i''m a big girl now',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6qNv8o2SI9wSCMg296YUSh',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:52',
  'daft Punk',
  'around the world',
  NULL,
  'french house, electronic, electro',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1pKYYY0dkg23sQQXi0Q5zN',
  'found',
  98,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '19:59',
  'dave van ronk',
  'dink''s song',
  NULL,
  'folk, traditional folk, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3HZuPDdDHJfYumgE6Iq4GZ',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:00',
  'ray charles',
  'hide nor hair',
  NULL,
  'soul, soul blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0alZ7VtyP8OBkdIhDuBvTX',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:05',
  'roscoe shelton',
  'crazy over you',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5PfMQfkOdR6sXIKMSiLPJV',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:07',
  'the ronettes',
  'is this what i get for loving you?',
  NULL,
  'christmas',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2F4ix8buVKDFhVH4yjOg2s',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:10',
  'lester bowie',
  'two become one',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:17',
  'robert parker',
  'cc rider.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:20',
  'dori grayson',
  'i can fix that for you',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2DEaCqZAzzrpHYGX9ezgyV',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:22',
  'snooks eaglin',
  'going to the river.',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4OZ4rmZjBInhxRiYDH7qHj',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:25',
  'the lostines',
  'frankie and eva',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:28',
  'dr lonnie smith',
  'devil''s haircut',
  NULL,
  'jazz funk, soul jazz, hard bop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5mzzX2lqcYnNXbxq3ttf3p',
  'found',
  73,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:37',
  'fats domino',
  'i know.',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0BHBKClEtbTdNCSXxLcqzv',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:39',
  'allen toussaint',
  'electricity.',
  NULL,
  'cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3CFOzOwsYW0U8xnvVsAwVR',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:44',
  'irma thomas',
  'make me a pallet on your floor',
  NULL,
  'classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7EvdUNEWvLBoFYENLk1lcN',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:48',
  'booker t jones',
  'everything is everything',
  NULL,
  'funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0uxa3TZEGrpskLrzFiwRGR',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:52',
  'dirty dozen brass band',
  'git up',
  NULL,
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/56jMWNwEhXzatfZZmvLDLY',
  'found',
  90.3,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '20:57',
  'dr john',
  'I been hoodood',
  NULL,
  'cajun, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7wE0MkXKVhcBNBo3NcZHKy',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:01',
  'snooks eaglin',
  'by the water.',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/51fWp2sgOhaWmnBGcaTKXk',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:04',
  'mavis staples',
  'will the circle be unbroken',
  NULL,
  'soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3qmSy9twfnc5sXZNdK54Sd',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:09',
  'barrett strong',
  'is it true?',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:11',
  'booker t jones',
  'crazy.',
  NULL,
  'funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3u6gQUoNxQaJe0BZCIROcr',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:14',
  'sony terry and brownie mcghee',
  'god and man',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:19',
  'JAMES BOOKER',
  'HE''S GOT THE WHOLE WORLD',
  NULL,
  'boogie-woogie, cajun, ragtime',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4ia3RhNxzSm6M5C2iTf0kn',
  'found',
  85.6,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:21',
  'roy young',
  'the age of sadness',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3qZ47XNaB3oyqsRhYqsgJf',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:25',
  'taj mahal',
  'ain''t it funky now.',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6RyixAVX5fBkma6t3zObn1',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:27',
  'aubrey ghent',
  'walk with me.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5H53IJ5UGQTxNroAwezfCZ',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:33',
  'aaron neville',
  'make your mama cry',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:33',
  'glen david andrews',
  'i fought the law.',
  NULL,
  'brass band, cajun, zydeco',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/41egAJe14Zb1lJ9Lev0Ph8',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:40',
  'lester bowie',
  'nessun dorma.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:40',
  'marion williams',
  'wicked messenger',
  NULL,
  'traditional gospel, gospel, soul blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4K8zjbBcC4UUW6QgAEg4d9',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:41',
  'lightnin hopkins',
  'shaggy dad',
  NULL,
  'blues, classic blues, country blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3YY9ndcUtM0W7tyQ7Cf3gz',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:41',
  'wilbert harrison',
  'just because,',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '21:59',
  'Harry Connick Jr.',
  'The Preacher',
  'Smokey Mary',
  'christmas, big band, vocal jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6jc05RNZubUuqa4wqbdPql',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:04',
  'Betty Shirley',
  'Ain''t Nobody''s Business If I Do',
  'SuMayy',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:20',
  'Allen Toussaint',
  'Shrimp Po-Boy, Dressed',
  'Songbook [Deluxe Edition] (Disc',
  'cajun',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/23RGenSDV2IwkxWdReaxm2',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:22',
  'Charlie Miller',
  'Peace Horn',
  'Peace Horn from New Orleans',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7Mn2TMn5XuULG6Vy6Cp0ST',
  'found',
  84.2,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:23',
  'John Rankin',
  'Chicken Gumbo',
  'Guitar Gumbo',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:36',
  'Jelly Roll Morton',
  'Black Bottom Stomp',
  'Birth Of The Hot',
  'ragtime, jazz, swing music',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3orMMCSWQHPBVpmuSl9Abg',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:39',
  'Danny Barker',
  'Can''t We Be Friends?',
  'New Orleans Jazz Man n Raconteur',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:42',
  'Kermit Ruffins',
  'Ma (He`s Making Eyes At Me)',
  'Swing This',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:45',
  'Leadbelly',
  'Angola Blues',
  'Leadbelly: Selected Sides 1934-1935',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:49',
  'Brother Tyrone',
  'It''s All Over Now',
  'Sweet Shop',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '22:55',
  'Subdudes',
  'All The Time In The World',
  'Primitive Streak',
  'cajun, zydeco, roots rock',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1LELS4cnAjPXl7VR0dafFS',
  'found',
  72.2,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:04',
  'VOW allstars',
  'me donkey want water',
  'live 2010 jazzfest',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:15',
  'Harry Connick, Jr.',
  'I Still Get Jealous',
  'Chnson du Vieux Carre',
  'christmas, big band, vocal jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5x5Gqo6WrhtX8eq0tsFt51',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:15',
  'Matt Lemmler',
  'Sea Journey',
  'Homecoming',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6VtQaw1Y9d7S9MkMUi2HSD',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:22',
  'Marcia Ball',
  'Down The Road',
  'Blue House',
  'zydeco, cajun, blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5WUAqkPCy8ZvIJNBNaiE1F',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:26',
  'Marva Wright',
  'Mr. Big Stuff',
  'Blues Queen of New Orleans',
  'zydeco, blues',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4TGgwUJNxJhk1D7Y6jxXbd',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:30',
  'Lynn Drury',
  'Baby Blues',
  'Come to My House',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7xQCxAzKxzfgMth0ZWSPxZ',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:33',
  'Germaine Bazzle',
  'Whisper Not',
  'Swingin` At Snug',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:37',
  'Mary Jane Hooper',
  'Psychedelphia',
  'Psychedelphia',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3pQs2POVe5UYbnqh1i7U7S',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:43',
  'John Hiatt and Roddie Romero',
  'You used to call me',
  'A Tribute to the King of Zydeco',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:48',
  'Rosie Ledet',
  'Sweet Brown Sugar',
  'Sweet Brown Sugar',
  'zydeco, cajun',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1381AWmBpgYP1Pm4FzXUdJ',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:52',
  'Lost Bayou Ramblers',
  'Blues De Bernadette',
  'Mammoth Waltz',
  'cajun, zydeco',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4kM6J0FKDqqIAxlMfTHPN9',
  'found',
  100,
  '2026-03-06 07:32:15'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-05',
  '23:56',
  'Lenny McDaniel',
  'I`m Leavin`',
  'Blues Side',
  'russelåter, cajun',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0Nw2LYXVEYefp0NEWoBoxk',
  'found',
  100,
  '2026-03-06 07:32:15'
);

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