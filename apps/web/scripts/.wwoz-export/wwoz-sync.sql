-- WWOZ Database Export
-- Generated: 2026-03-08T09:30:07.272Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-08 08:11:01
-- Days: 3
-- Tracks: 319

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-05',
  'https://open.spotify.com/playlist/4SassxkBAsRUHgQarZ59II',
  '{"totalTracks":131,"successfullyFound":89,"notFound":42,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-05 08:04:52',
  '2026-03-08 09:30:06'
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
  '2026-03-08 09:30:06'
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
  '2026-03-08 09:30:06'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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