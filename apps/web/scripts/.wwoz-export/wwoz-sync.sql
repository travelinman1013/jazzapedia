-- WWOZ Database Export
-- Generated: 2026-02-07T07:28:40.901Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-06 10:30:07
-- Days: 3
-- Tracks: 513

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-04',
  'https://open.spotify.com/playlist/18Q3xNwZf2bb81IAHt6Txv',
  '{"totalTracks":144,"successfullyFound":70,"notFound":74,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-05 07:51:41',
  '2026-02-07 07:28:39'
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
  '2026-02-07 07:28:39'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-06',
  'https://open.spotify.com/playlist/3aWADe7vKNcOK8I6kPys0p',
  '{"totalTracks":182,"successfullyFound":116,"notFound":66,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-07 07:28:39',
  '2026-02-07 07:28:39'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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

DELETE FROM wwoz_tracks WHERE date = '2026-02-06';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:09',
  'Buddy Rich',
  'Chameleon',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:40',
  'ARC',
  'ARC',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:40',
  'Frank Zappa',
  'Waka/Jawaka',
  'Waka / Jawaka',
  'progressive rock, psychedelic rock, art rock',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4RNNUgRlBQt7dTqSOWy5kN',
  'found',
  98,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:41',
  'James Fernando',
  'Persistence',
  'Philly 3',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/3mt8YlpMaUlX1HpnsC43aZ',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '06:50',
  'Alexa Tarantino',
  'Provoking Luck',
  'The Roar and the Whisper',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0YERdfBLGxDjM5YZX6aosp',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:01',
  'Jazz Sabbath',
  'War Pigs (Live)',
  'Jazz Sabbath Live',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:09',
  'Marques Carroll',
  'Olivia Dances WIth The Keys',
  NULL,
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0M0A9T1NKj5uoorRMjTEb7',
  'found',
  98,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:14',
  'Dave Stryker',
  '9 Summer Night',
  'Blue Fire',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:18',
  'Harry Connick, Jr.',
  'Mardi Gras In New Orleans',
  'Chanson du Vieux CarrÃ©',
  'big band, christmas, vocal jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/14era6xqyLlqPC72zLqYTg',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:32',
  'Christian McBride Big Band',
  'Moanin''',
  'Without Further Ado Vol. 1',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:37',
  'Makaya McCraven',
  'Dark Parks (feat. Jeff Parker)',
  'Hidden Out! - EP',
  'nu jazz, experimental jazz, indie jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/69TxVfWupMvTqToyTnMtNn',
  'found',
  74.8,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:41',
  'Melissa Aldana',
  'Las Rosas No Hablan',
  'Filin',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:45',
  'Michael Wolff',
  'Swamp',
  'Sunny Day',
  '',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/0c7zGxzQaa4qf8CuvBj22a',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '07:56',
  'Joshua Redman',
  'The Ocean',
  'Trios Live',
  'jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/1NGf8FvPcCau3GuEZcfluv',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:01',
  'Joshua Redman Elastic Band',
  'The Crunge',
  'Momentum',
  'jazz funk, jazz fusion, jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/4r85o4Jl8fVzgScwiAPiQe',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:23',
  'Harry Connick Jr.',
  'Funky Dunky',
  'She',
  'big band, christmas, vocal jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/35XoZs4C4w3TITrVkKJLPM',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:23',
  'Wajdi Cherif',
  'Wajdi Cherif_Live at FTH Theatre_Rio Reverie',
  'Live at FTH Theatre NYC',
  '',
  'The Morning Set',
  'Dave Dauterive',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:29',
  'Fergus McCreadie',
  'Climb Through Pinewood',
  'The Shieling',
  'jazz',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/5UUWinK2PhVnYSJbzaEQOG',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '08:52',
  'Joshua Redman',
  'Balance',
  'Beyond',
  'jazz, jazz ballads',
  'The Morning Set',
  'Dave Dauterive',
  'https://open.spotify.com/track/7hFEtS0Pu7CiP7KVVLO3D1',
  'found',
  98,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:07',
  'Louis Armstrong',
  'Potatohead Blues',
  'The Essential Louis Armstrong [S',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:10',
  'Billie And DeDe Pierce',
  'Eh La Bas',
  'Gulf Coast Blues',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0DUlro5NRZ4lu3B9T5m8eq',
  'found',
  86.2,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:13',
  'King Oliver And His Dixie Syncop',
  'What Ya Want Me To Do',
  'King Oliver - Volume Two - Great',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:16',
  'Sweet Emma Barrett',
  'Chinatown',
  'New Orleans- The Living Legends',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1INpCPgOFkILHEPjC7x8NF',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:20',
  'Baby Dodds Trio',
  'Wolverine Blues',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2lUXRj3pLfvOdKwFOxjYRw',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:23',
  'Don Ewell',
  'Honey Hush',
  'Solo Piano 1969-1973 (Disc 1)',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2wzlnSIdEn99GSgNsdvCCV',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:27',
  'Albert Nicholas',
  'Please Don`t Talk About Me When',
  'Kornhaus Theater, Baden 1969',
  'ragtime, swing music, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1XDrS3aSLQwOrb5xACAY7Y',
  'found',
  87.9,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:35',
  'Fats Waller And His Rhythm',
  'Got A Bran` New Suit',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:38',
  'Don Ewell',
  'Gee Baby, Ain`t I Good To You',
  'Music To Listen To Don Ewell By',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6lsEDOco3J2Fak9bzXtHQC',
  'found',
  93.9,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:43',
  'Baby Dodds Trio',
  'Chocko Me Feendo Hey',
  'Jazz A`La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6QE7ArLBZCgfBu7uSZJSH1',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:46',
  'Sweet Emma',
  'Somebody Stole My Gal',
  'Sweet Emma The Bell Gal At Dixie',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:50',
  'King Oliver And His Dixie Syncop',
  'New Orleans Shout',
  'King Oliver - Volume Two - Great',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:53',
  'Albert Nicholas',
  'That`s A Plenty',
  'Albert`s Back In Town',
  'ragtime, swing music, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6DnN15MV6Ze3VdYhAPy6kh',
  'found',
  92.4,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '09:59',
  'Louis Armstrong',
  'Sugar Foot Stomp',
  'The Essential Louis Armstrong [S',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4MJN13h2Zl7KJPuL98SMFx',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:02',
  'Fats Waller And His Rhythm',
  'I`ve Got My Fingers Crossed',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:05',
  'Baby Dodds Trio',
  'Tootie Ma Is A Big Fine Thing',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/17QS5h4YToOTKsPsjSAl2x',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:08',
  'Billie And DeDe Pierce',
  'Some Of These Days',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/3BmwcB9ZKEAiDWY5SMpTjf',
  'found',
  83.2,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:11',
  'King Oliver And His Dixie Syncop',
  'Willie The Weeper',
  'King Oliver - Volume Two - Great',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1He2qOXvtQa8ZIQ1gFKnFH',
  'found',
  81.1,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:13',
  'Louis Armstrong',
  'Cornet Chop Suey',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/17ePXPR7ozFN1IJxPH6Fql',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:17',
  'Billie And DeDe Pierce',
  'Get A Working Man',
  'Gulf Coast Blues',
  'cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2UtoxMiITEc70DHUA4r4Og',
  'found',
  83.2,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:20',
  'Johnny Dodds',
  'After You`ve Gone',
  'Clarinet Wobble Vol 3',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0V5l4SfVY37xe4MB58Y202',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:23',
  'Louis Armstrong',
  'Dipper Mouth Blues',
  '032725 Riccardi Interview',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2u5ZOMRkBa2wIgCdlgFxkE',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:26',
  'Sweet Emma',
  'Bill Bailey',
  'Sweet Emma The Bell Gal At Dixie',
  'ragtime, zydeco, cajun',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/0jkAafX7qZvpZJCydbcxYq',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:30',
  'King Oliver`s Creole Jazz Band',
  'Weather Bird Rag',
  'Louis Armstrong And King Oliver',
  'ragtime, jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/23zcIUHxGpMeIun5tKXkGv',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:32',
  'Baby Dodds Trio',
  'My Indian Red',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1VVcNmW450cKwe7HPR6XyZ',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:35',
  'Sweet Emma Barrett',
  'I Get The Blues When It Rains',
  'New Orleans Traditional Jazz Leg',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:39',
  'Johnny Dodds',
  'Billy Goat Stomp',
  'Clarinet Wobble Vol 3',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/2fLL46MwrZDI7OlJrY7exz',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:43',
  'Fats Waller',
  'The Sheik Of Araby',
  'The Definitive Fats Waller - Vol',
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/4uYHdEtFe4a1FsoA7raaZH',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:46',
  'Louis Armstrong',
  'All Of Me',
  'Louis` Love Songs',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/1Fqc8lvWjs5i6TZAnME7gb',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:49',
  'Fats Waller And His Rhythm',
  'I Got Rhythm',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'the Jazz Police',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:52',
  'Louis Armstrong',
  'A Monday Date',
  'The Complete Hot Five And Hot Se',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6y1ZCbI47GmUxpwZn21rV5',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '10:55',
  'Baby Dodds Trio',
  'Corinne Died On The Battlefield',
  'Jazz A`La Creole',
  'ragtime',
  'Traditional Jazz',
  'the Jazz Police',
  'https://open.spotify.com/track/6CvUGjlfGDYGFCOBUVj6Ik',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:00',
  'Hawkettes',
  'Mardi Gras Mambo',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:08',
  'louis armstrong',
  'mardi gras march',
  NULL,
  'jazz, swing music, vocal jazz',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0gcWlbt55p4WnqbxR9HUgC',
  'found',
  91,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:10',
  'LOUIS DUMAINE AND HIS JAZZOLA EIGHT',
  'TO-WA-BAC-A-WA',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:12',
  'original zenith brass band',
  'If I Ever Cease to Love',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:14',
  'dave bartholomew',
  'carnival day',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6JHF4NG2PeyzL7AFa4VOID',
  'found',
  100,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:19',
  'rebirth brass band',
  'all on a mardi gras day',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:39'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:26',
  'delfeayo marsalis',
  'uptown on mardi gras day',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:27',
  'chief adjuah',
  'xodokan iko',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:31',
  'Big Cheif Monk Boudeaux and Spyboy Jwan Boudeaux The Golden Eagl',
  'Hey La Hey',
  'Slip Don;t Fall',
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:35',
  'irma thomas, cyril neville, george porter, jr, ivan neville',
  'Carnival Time',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:40',
  'trombone shorty',
  'got to get ready',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:47',
  'cyril neville & the uptown allstars',
  'big chief jolly',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '11:53',
  'papa mali',
  'FIRE WATER',
  NULL,
  'southern gothic',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6iPIEgLuxY85dORzMo3Mqj',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:01',
  'algiers brass band',
  'Hey Pocky Way',
  NULL,
  'brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6uzHjWnKJx87MBh4GNXgOo',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:05',
  'krewe du belge',
  'grand chef',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/2FdY1vAkp2gWSbyDukk3jZ',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:10',
  'kermit ruffins',
  'do the fat tuesday',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:17',
  'cha wa',
  'Wild Man',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:37',
  'john gros',
  'Hurricane',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:37',
  'john gros',
  'quitters never win',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:41',
  'subdudes',
  'Big Chief',
  NULL,
  'cajun, zydeco, roots rock',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5MPo6FQJXvvAhsjVd5MEV2',
  'found',
  72.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:44',
  'Mannie Fresh, Big Freedia, Galactic, Dee-1',
  'Act Like You Know',
  'Act Like You Know',
  'southern hip hop, new orleans bounce, bounce',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/7vT2Lw5EDtJ3uKvs4ZiAno',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:48',
  'dr john, professor longhair, earl king, meters',
  'Big Chief',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '12:57',
  'bobby charles',
  'Mardi Gras Song',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0XKfazOv99B8H4mK74CFWu',
  'found',
  90.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:05',
  'tin men',
  'Chocko Mo Feendo Hey',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:08',
  'mahogany brass band',
  'indians jumping on fire',
  NULL,
  'brass band, cajun',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/5cSjWxGzzrEAxfh8WxV1Da',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:13',
  'spy boy shotgun slim',
  'Shallow Water',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:18',
  'ray brackens',
  'come on it''s carnival',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:23',
  'catahoulas',
  'Tootie Ma',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:30',
  '79rs gang',
  'dead & gone',
  NULL,
  'brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0Lere1P3GJ7sxKxeZusell',
  'found',
  90.7,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:33',
  'flagboy giz',
  'Downtown',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:41',
  'Big CHIEF MONK BOUDREAUX & the golden eagles',
  'SHOTGUN JOE',
  NULL,
  'cajun, brass band, zydeco',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/6BWHpty604MHFhcxRMEICO',
  'found',
  75.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:45',
  'monogram hunters',
  'sew sew sew',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0yy44S7MteDtrKaPoOY0Su',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:52',
  'Wild Tchoupitoulas',
  'BROTHER JOHN',
  NULL,
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/0RYad80nMcq0XY9xHO6FBq',
  'found',
  84.7,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:52',
  'spirit of fi yi yi & the mandingo warriors',
  'healing process',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  'https://open.spotify.com/track/1xYxD2TkyNBybJTlR8bVCL',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '13:53',
  'june victory',
  'hold ''em joe',
  NULL,
  '',
  'New Orleans Music Show',
  'Black Mold or Bill DeTurk',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:00',
  'Amos Milburn',
  'Chicken Shack Boogie',
  'IMPERIAL 45',
  'boogie-woogie, swing music, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/757W13ufg2eOYRGK9UUN7k',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:03',
  'Eddie Boyd',
  'Drifting',
  'CHESS 45',
  'blues, classic blues, boogie-woogie',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5tmOV3bvxhk8BkDUb75Mhl',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:07',
  'Elmo JAmes',
  'Rollin and Tumblin',
  'FIRE 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3L3HnJjAIysPV0sxjFoR2Q',
  'found',
  70,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:09',
  'Lightning Slim',
  'Just MAde Twenty One',
  'EXCELLO 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:12',
  'Charles Sheffield',
  'I Got Fever',
  'Goldband 45',
  'northern soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4vY5EZZHZS2b0oW9lzey55',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:14',
  'Lee Moses',
  'Time and Place',
  'Front PAge',
  'soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6NrwaVjdLbYsU9Omdbzgtp',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:18',
  'Slim HArpo',
  'Little Queen Bee',
  'Excello 45',
  'classic blues, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/0LGMzrSfGl6ZSIWtVFJYOC',
  'found',
  75.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:20',
  'Howlin WOlf',
  'Howlin for My Darling',
  'CHESS 45',
  'blues, classic blues, blues rock',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5mkEl9NxZf8VW7IIffh7VE',
  'found',
  89.9,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:23',
  'Whispering Smith',
  'Mean Woman Blues',
  'EXCELLO 45',
  'classic blues, cajun, blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/5yjjcg9054XTpOdXIaxUJt',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:25',
  'Jimmy Robins',
  'I Cant Please You',
  'Gerhart 45',
  'northern soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3qdxCJAqsHPsowg91RJCU2',
  'found',
  86,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:30',
  'Mary JAne Hooper',
  'Ive Got Reasons',
  'Power-Pac 45',
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7Gmb33nmkxVETieoPSiukO',
  'found',
  83.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:33',
  'Earl King',
  'Trick BAg',
  'IMPERIAL 45',
  'new orleans bounce, classic blues, cajun',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6bbm9n1aZ3KKqsfvWYO18r',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:35',
  'Bobby POwell',
  'Do Something For Yourself',
  'WHIT 45',
  'northern soul',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/6ju32X2jqmIo6jNbul3aPH',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:38',
  'OV Wright',
  'Ace of Spades',
  'BACK BEAT 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:41',
  'Hal PAige',
  'After Hour Blues',
  'FURY 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:45',
  'Jmes Carr',
  'Stronger Than Love',
  'GOLDWAX 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:47',
  'Lawdy LAwdy',
  'Junior Wells',
  'STATES 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:50',
  'Frankie Lee Sims',
  'Misery Blues',
  'ACE 45',
  '',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4ZwXa3DW8ZEETSZ6sOC6GX',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:53',
  'Jimmy McCracklin',
  'The Bitter and The Sweet',
  'IMPERIAL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '14:57',
  'Eddie Bo',
  'Check Your Bucket',
  'Bo SOund 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:03',
  'Koko TAylor',
  'Wang Dang Doodle',
  'CHECKER 45',
  'blues, classic blues, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/1cXc92MX9kFjMrrDsvdf9w',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:07',
  'Joe Hudson',
  'Hoo Wee Pretty Baby',
  'EXCELLO 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:11',
  'Albert Washington',
  'You Gonna Miss Me',
  'FINCH 45',
  'northern soul, soul blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3d0TWvmeiDMe12QMtdyKzP',
  'found',
  93.4,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:11',
  'handsome Earl',
  'Eevrybody Got To Cry',
  'VIN 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:14',
  'Southland SPiritual Singers',
  'Rock Me',
  'SACRED SOUL 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:20',
  'Huey Smith and the Clowns',
  'Little Liza Jane',
  'ACE 45',
  'boogie-woogie, doo-wop',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/4ldGeYdmBytywTmcOoL2HQ',
  'found',
  83.9,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:21',
  'MAgic Sam',
  'Looka Whatcha Done',
  'COBRA 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:23',
  'Bo Diddley',
  'im High Again',
  'CHECKER 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:26',
  'BB KIng',
  'And Like That',
  'KENT 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:29',
  'Eddie Burns',
  'HArd Hearted Woman',
  'HARVEY 45',
  'blues, modern blues, classic blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3lJ4DjGx072cOSTpEfVC3P',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:32',
  'Sonny Boy Williamson',
  'Dont Start Me Talking',
  'CHECKER 45',
  'blues, classic blues, country blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/3mzHVjE0AuJBI3H7Wx75TY',
  'found',
  73.5,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:35',
  'Little Applewhite',
  'Hand Me Down My Shotgun',
  'High WAter 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:39',
  'Precious Bryant',
  'Dont You Wanna Jump',
  'Fool me Good',
  'blues, country blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/2bMIOyyaHH0EUtt9bKGMZZ',
  'found',
  86,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:44',
  'Little Sonny',
  'Orange Pineapple Cherry Blossom Pink',
  'WHEELSVILLE 45',
  '',
  'The Blues Breakdown',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '15:47',
  'Wild Child Butler',
  'Jelly JAm',
  'JEWEL 45',
  'blues',
  'The Blues Breakdown',
  NULL,
  'https://open.spotify.com/track/7qBzjLEedMgn3hDLrCbu37',
  'found',
  86.9,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:02',
  'Samara Joy',
  'No More Blues',
  'Portrait',
  'vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1Y8FFe5ZLw3k002uBeXQJU',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:07',
  'Miles Davis',
  'I Thought About You',
  'Love Songs',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/6cqDz44YJno8pJmTd8eKrD',
  'found',
  89.8,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:12',
  'Ellis Marsalis',
  'Dear Dolores',
  'Loved Ones',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0jv4VBk7t1pds3F8k3i9om',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:25',
  'Chet Baker',
  'I Fall In Love Too Easily',
  'My Funny Valentine',
  'jazz, cool jazz, vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0F845nujLVqCb0XMZCh5Pc',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:34',
  'Roderick Harper',
  'Look Into Your Eyes',
  'Confidence',
  'vocal jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4nST0dQhCOZc1PRqXqMVkH',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:37',
  'JD Allen',
  'You Are Too Beautiful',
  'Love Letters The Ballad Sessions)',
  'hard bop, jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/26zZuMaWxRQOv8XhKqd230',
  'found',
  98,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:44',
  'Steve Turre',
  'United',
  'Colors for the Masters',
  'latin jazz, afro-cuban jazz, jazz funk',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7CK4C44vTHtiZj06aziVQD',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:51',
  'Christian McBride Big Band f/Jeffrey Osborne',
  'Back In Love Tonight',
  'Without Further Ado Vol 1',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '16:53',
  'John Coltrane',
  'All Or Nothing At All',
  'Ballads',
  'jazz, jazz ballads, cool jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/79lOA9cjiispflDp40oCuQ',
  'found',
  83.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:04',
  'Lakecia Benjamin',
  'Noble Rise',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:12',
  'Gonzala Rubacalba, Yainer Horta 7 Joey Calveiro',
  'Te Quedaras',
  'A Tribute To Benny More and Nat King Cole',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:15',
  'The Afrodiziac''s Jazz',
  'Immigration',
  'immigration',
  'jazz funk, latin jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2pPvtcYPz3QDBpg9Vvx0iX',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:23',
  'Gregory Agid',
  'Mystery Blues',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/1Ux2iz2HAdoDl9WeAM4Z0F',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:25',
  'Herlin Riley',
  'Borders Without Lines',
  'Perpetual Optimism',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/5mrtCmMRDHNyfaqssLLAtW',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:34',
  'Michael Wolff',
  'Movie Night',
  'Sunny Day',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/15VpLhmMrTRQjcqB3NpY8e',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:41',
  'Chick Corea Christian McBride Brian Blade',
  'Windows-Live',
  'Trilogy 3',
  'jazz fusion, jazz, latin jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/2hTRFIb8fFCAyiDsuk88Da',
  'found',
  98,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:50',
  'Nicholas Payton w/Esperanza Spalding Karriem Riggins',
  'Gold Dust Black Magic',
  'Triune',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '17:55',
  'Modern Jazz Quartet',
  'La Ronde Suite',
  'Django (Rudy Van Gelder Remaster',
  'cool jazz, jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7pkXaoEDDMloIR9Jevl2yJ',
  'found',
  86.4,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:01',
  'Joey DeFrancesco',
  'A Change Is Gonna Come',
  'Project Freedom',
  'jazz',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/0z3appBiwBR7PrjfyRE6Rg',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:08',
  'Jack McDuff',
  'Mellow Gravy',
  'The Prestige Years',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:14',
  'Dr Lonnie Smith',
  'The World Weeps',
  'Breathe',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4tg0KZUPj7ER5rl00xsI9b',
  'found',
  89.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:25',
  'Charles Earland',
  'The Count Is In The House',
  'Stomp',
  'jazz funk, soul jazz, hard bop',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/7G6yjB7CNs3IfE6Ois3I2F',
  'found',
  76,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:36',
  'Sullivan Foortner',
  'Daahoud',
  'Southern Nights',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:49',
  'Steven Oquendo Latin Jazz Orchestra',
  'El Que Se Fue',
  'A Salute to Tito & Tito',
  'latin jazz, big band',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  'https://open.spotify.com/track/4fdTgxBGytsy3yD299EPCJ',
  'found',
  83.3,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '18:50',
  'Michika fulumori',
  'There Is Always Light',
  'Eternity And A Day',
  '',
  'Jazz from Jax Brewery',
  'Charles Burchell',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:07',
  'rory gallagher',
  'moonchild',
  NULL,
  'blues rock, blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/400XN4PpJ4sFByiegnHFZi',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:12',
  'jimmy thackery',
  'edward''s blues',
  NULL,
  'blues, modern blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6cRDUCoVdu4LISiop8jZhv',
  'found',
  84.8,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:18',
  'eric gales',
  'save yourself',
  NULL,
  'modern blues, blues rock, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0Q7SPiDtEPTDEcLxKhQGJp',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:18',
  'jimmie rodgers',
  'gambling polka dot blues',
  NULL,
  'traditional country, classic country, bluegrass',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2bgu6qcMr5Gyad6JqezIox',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:29',
  'ma rainey',
  'sweet rough man',
  NULL,
  'classic blues, blues, ragtime',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/62EoPZVylvGUYIAIlJj94i',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:32',
  'jack kelly & his memphis jug band',
  'HIGHWAY NO. 61 BLUES',
  NULL,
  'ragtime, country blues, traditional country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0oETu3ciPSvJ8F3m2sahpM',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:40',
  'hoyt axton',
  'never been to spain',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/75JNwfdXwUHiJAUng5GFFI',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:40',
  'three dog night',
  'never been to spain',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4czsX9Yl9As2oC3pjRkARq',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:45',
  'toronzo cannon',
  'been better to you',
  NULL,
  'blues, modern blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/28r6UUyRHjFEfjq35K7f1o',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:50',
  'larkin poe',
  'bleach blond bottle blues',
  NULL,
  'blues rock, modern blues, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3cRhk3aGHPTe4aptRyQAJW',
  'found',
  88.8,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:52',
  'badgerino',
  'I''m Shakin''',
  NULL,
  'blues rock, blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4iCn10vgSHAPQogLt9auUo',
  'found',
  83.2,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '19:58',
  'cactus & warren haynes',
  'no need to worry',
  NULL,
  'psychedelic rock, blues rock, acid rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4HlKQwq7HVJmKOuMsaAM9K',
  'found',
  78.7,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:09',
  'robert pete williams',
  'goodbye slim harpo',
  NULL,
  'country blues, blues, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/6jgxQSwXuwvTBoSiq5M0q2',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:12',
  'mississippi fred mcdowell',
  'mama says I''m crazy',
  NULL,
  'blues, classic blues, country blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4znofhdZ5Bwl6n66s5adIk',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:16',
  'the wesley jefferson blues band',
  'the wolves are howling',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:22',
  'RL Burnside',
  'everything is broken',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:27',
  'Tom Waits',
  'Come on Up To the House',
  'Mule Variations',
  'singer-songwriter, southern gothic',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/7zhbOCrOKbncbqKvSwQx9R',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:37',
  'Buddy Guy',
  'Trick Bag',
  'Ain''t Done With The Blues',
  'blues, classic blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/05TorTxmQUmFf9GKG719zD',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:37',
  'eddy clearwater & los straitjackets',
  'monkey paw',
  NULL,
  'blues, classic blues, blues rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/4ydU8PWYjuLamfZ3KmrQ1r',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:38',
  'tedeschi trucks band & leon russell',
  'Space Captain',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:46',
  'johnny winter',
  'I love everybody',
  NULL,
  'blues, blues rock, classic blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5oSxhWtNKdlyAPUEk5A1u0',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:49',
  'steepwater band',
  'off the rails',
  NULL,
  'blues rock, modern blues, southern rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3NAFsbMFGTe7nIUkMWlE0Y',
  'found',
  84.5,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:53',
  'bobby rush & kenny wayne shepherd',
  'hey baby (what are we gonna do)',
  NULL,
  'blues rock, blues, modern blues',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0A6qE97WhRoULRzABXLFvF',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '20:57',
  'mason rack band',
  'black betty',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:07',
  'patsy montana',
  'old nevada moon',
  NULL,
  'traditional country, classic country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/26GhTTx1bLOuWsWxfBSicQ',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:10',
  'dan hicks & his hot licks',
  'shorty falls in love',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/3vgeKxQBeJ5vUwQf7n7ZtQ',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:12',
  'matt bunsen & the burners',
  'life on the road 2.0',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/2WJxQ5v1wYS7gqG1T1cHCu',
  'found',
  90.1,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:17',
  'kenny bill stinson',
  'sunday night in shreveport',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:22',
  'mark rubin',
  'goon with a hammer',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:24',
  'marty stuart',
  'catalina',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:27',
  'james mcmurtry',
  'safe side',
  NULL,
  'alt country, americana, outlaw country',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/78mKI61YrlGlHzr6TO4SSN',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:31',
  'dave alvin',
  'black sky',
  NULL,
  'alt country, americana, roots rock',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0Qc8WOY2NEd5t4U3zfWFNx',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'Dr. John',
  'Mardi Gras Day',
  NULL,
  'cajun, zydeco',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'The Meters',
  'Fire On the Bayou',
  NULL,
  'funk, soul, jazz funk',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/0BRETWVsgLUOyuw1GQdhiG',
  'found',
  100,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'cadillac john nolden & bill abel',
  'give it all to me baby',
  NULL,
  '',
  'Music of Mass Distraction',
  'Black Mold',
  NULL,
  'not_found',
  NULL,
  '2026-02-07 07:28:40'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-06',
  '21:36',
  'robbie robertson',
  'osage oil boom',
  NULL,
  'native american music',
  'Music of Mass Distraction',
  'Black Mold',
  'https://open.spotify.com/track/5CT03vQttU9NE2jEwT3rEY',
  'found',
  100,
  '2026-02-07 07:28:40'
);