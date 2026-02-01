-- WWOZ Database Export
-- Generated: 2026-02-01T07:34:23.945Z
-- Mode: INCREMENTAL
-- Last export: 2026-01-31 10:30:09
-- Days: 3
-- Tracks: 605

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-29',
  'https://open.spotify.com/playlist/2KFtxG097JXui9HLB8qVFI',
  '{"totalTracks":206,"successfullyFound":118,"notFound":88,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-01-29 08:07:21',
  '2026-02-01 07:34:19'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-01-30',
  'https://open.spotify.com/playlist/4iEyRzHsVncmwDjDPGOyFk',
  '{"totalTracks":208,"successfullyFound":135,"notFound":73,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-01-30 07:22:02',
  '2026-02-01 07:34:19'
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
  '2026-02-01 07:34:19'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-01-29';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:31',
  'Good News Bas',
  'Is It Still Summer? feat. Iljane',
  'Flood Warnings',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:32',
  'Mac Infinity',
  'Feel No Ways',
  'FEEL NO WAYS (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/1TGc39To7JC6Q3WXKVFhLl',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:34',
  'Good News Bas',
  'Get Paid feat. Mac Infinity',
  'Get Paid (SINGLE)',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '00:44',
  'Jon Batiste',
  'Petrichor',
  'Big Money',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/7jmeenh8fzx9gxhJfMq2r2',
  'found',
  100,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '01:32',
  'Mickey Factz',
  'bring it back home to me',
  'One Above All',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  NULL,
  'not_found',
  NULL,
  '2026-01-29 08:07:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '02:33',
  'Earl King',
  'Mardi Gras In The City',
  'King Of New Orleans',
  '',
  'Overnight Music - Thursday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-29 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '04:33',
  'Claire DeBrett',
  'The Mardi Gras Dance',
  'Cadien Chansons Du Bayou',
  '',
  'Overnight Music - Thursday',
  NULL,
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:07',
  'Mike Dillon',
  'Waltz While You Sleep',
  'Mike Dillon',
  'jam band, cajun',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2NKjAkLZQq2ysa4Oq427kH',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:08',
  'Maridalen',
  'Koral',
  'Maridalen',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0dPxHD183nCG40RawgOncy',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:12',
  'Chris Corsano',
  'Low Experience',
  'The Key (Became The Important Thing (And Then Just Faded Away))',
  'free jazz, experimental jazz, avant-garde',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/6WNM2lCUu2T7NLIb8s8tUG',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:12',
  'The Awakening Orchestra',
  'The Desc(Diss)ent',
  'Volume ll: To Call Her to a Higher Plain',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/11pezMiv2Oz7eS4QDmhXbT',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:25',
  'Linda May Han O',
  'Strange Heavens',
  'Strange Heavens',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:33',
  'Bill Evans',
  'Peace Piece',
  'Everybody Digs Bill Evans',
  'jazz, cool jazz, jazz ballads',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/58yFroDNbzHpYzvicaC0de',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:40',
  'Keith Jarrett',
  'Koln, January 24, 1975 Part ll c',
  'The Koln Concert',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:46',
  'James Singleton String Quartet',
  'Lento',
  'Gold Bug Crawl',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '06:51',
  'Colluctor',
  'Continuation',
  'Continuation',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '07:06',
  'Charles Mingus Sextet',
  'Fables of Faubus',
  'Bremen 1964 & 1975',
  'jazz, hard bop, bebop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2Cvpb5vlITM7JYE0LQxByn',
  'found',
  83.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '07:20',
  'Grachan Moncour',
  'Thandiwa',
  'Some Other Stuff',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '07:42',
  'Miles Davis',
  'In A Silent Way',
  'In A Silent Way',
  'jazz, cool jazz, hard bop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/07mM15LHxoWaQwHcLn2ZgF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:02',
  'Bitchin Bajas',
  'Lanquidity',
  'Switched On Ra',
  'space rock, krautrock, ambient jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2MCWogZJ7AcXkRwRN0xV73',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:02',
  'Herbie Hancock',
  'Hidden Shadows',
  'Sextant',
  'jazz, jazz fusion, jazz funk',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/24hwI6OhnNKAOpRDmoSi3q',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:13',
  'Joe Henderson',
  'Black Narcissus',
  'Power To The People',
  'hard bop, jazz, jazz ballads',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3IbZO1Ml6LyntT83JZ2VG4',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:18',
  'Donald Byrd',
  'The Dude',
  'Electric Byrd',
  'hard bop, jazz funk, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5tcx0hDhFwLR3ThQXHfxF1',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:26',
  'James Carter',
  'Blue Hawaiian',
  'Gold Sounds',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:35',
  'Horacee Arnold',
  'Sing Nightjar',
  'Tales Of The Exonerated Flea',
  'jazz fusion, free jazz, jazz funk',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7hr6iGfC1WPvW7GG1pTkAJ',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:45',
  'Jack DeJohnette''s Directions',
  'Fantastic',
  'Unittled',
  'jazz fusion',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3yUj9CpPho7zJaYrsN1w7I',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '08:59',
  'Dr. Lonnie Smith',
  'tch Doctor',
  'Jungle Soul',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:05',
  'Gerald French And The Original T',
  'Bogalusa Strut',
  'A Tribute To Bob French',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:08',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:11',
  'Lars Edegran',
  'I`m Gonna Sit Right Down And Wri',
  'Lars Edegran Presents Lionel Fer',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:16',
  'Jazzology All Stars',
  'Blue Turning Grey Over You',
  '50th Anniversary Jazz Bash',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:21',
  'Tim Laughlin',
  'Farewell Blues',
  'Blue Orleans',
  'ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2j1nW7SCLNOK2RXDIgKkIP',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:29',
  'Jack Teagarden',
  'Sugar',
  '100 Years From Today',
  'big band, swing music, jazz',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/6lgdGwpwllJZRye9ZWKCbu',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:32',
  'Kevin Louis & the Palm Court Jazz Band',
  'Pennies From Heaven',
  'Last Chance To Dance',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3J9dYLIFHf3MX2oIPPzKlb',
  'found',
  86.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:37',
  'Preservation Hall Jazz Band',
  'Corrina, Corrina',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:52',
  'Blu Lu Barker',
  'I Feel Like Laying In Some Other Women''s Arms',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:54',
  'Little Queenie',
  'If Ever I cease To Love',
  'Purple Hearts',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/42X7UAxXvRPg8JigOwrmYh',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:56',
  'Alberta Hunter',
  'Take Your Big Hands Off It',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:57',
  'Kyle roussel/ Irma thomas',
  'True',
  NULL,
  'classic soul',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2JZwBaSBGvvaN6ncQFTGiF',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '09:57',
  'Louis Cottrell, Jr',
  'You Don`t Love Me',
  'New Orleans- The Living Legends',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:05',
  'Al Hirt',
  'NEW ORLEANS',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4WH8Y5I8XNzMGImp8yERPe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:06',
  'Pete Fountain',
  'Stomp, Mr Henry Lee',
  NULL,
  'big band, ragtime, swing music',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3yIgg0OMYJS8PBkh28uKfC',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:10',
  'Mari Watanabe',
  'Stompin At The Savoy',
  'Old Friends',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:16',
  'Shake''Em Up Jazz Band',
  'I Double Dare You',
  'The Boy In The Boat',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:20',
  'Seva Venet',
  'Give Me That Good New Orleans Ja',
  'New Orleans Banjo Vol. 1 Musieu',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1lBjUT2nsBkBgtucz6u50F',
  'found',
  92.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:24',
  'Gauthe`s, Jacques Creole Rice Ye',
  'Cassoulet Stomp',
  'Cassoulet Stomp',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:29',
  'Red Hot Brass Band',
  'Go To The Mardi Gras',
  'Hot Off The Press',
  'brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/4i66nbKrkrQARH8RPCouHe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:33',
  'Fats Waller And His Rhythm',
  'Got A Bran` New Suit',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:36',
  'Wild Magnolias',
  'New Suit',
  'They Call Us Wild',
  'cajun, zydeco, brass band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/48gaRnJBOc3xNp7UoV7cOX',
  'found',
  82.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:45',
  'Charlie Gabriel',
  'That''s a Plenty',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:46',
  'Pfister Sisters',
  'Everybody Loves My Baby',
  'New Orleans',
  'boogie-woogie',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0ITOMpaTDjwJBx7gmMFIV2',
  'found',
  84,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:49',
  'Tuba Skinny',
  'Mardi Gras Mambo',
  'Mardi Gras EP 2021',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '10:56',
  'Original Tuxedo Jazz Band',
  'Exactly Like You',
  'Original Tuxedo JB Centennial',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:04',
  'Professor Longhair',
  'Big Chief, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:06',
  'Professor Longhair',
  'Big Chief, Pt. 2',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:10',
  'Earl King',
  'No City Like New Orleans',
  'Hard River To Cross',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:14',
  'Earl King',
  'Street Parade',
  'Mardi Gras In New Orleans [Mardi',
  'new orleans bounce, classic blues, cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5PClcZsB3xCF2nDycBrsb7',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:18',
  'MICHAEL PELLERA WITH JOHNNY V. AND JAMES SINGLETON',
  'BULLDOG RUN',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:24',
  'ORIGINAL PIN STRIPE BRASS BAND',
  'I ATE UP THE APPLE TREE',
  NULL,
  'brass band, cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6Ioq8xVNU65YABcoPlPzlU',
  'found',
  91.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:30',
  'DAVE FAT MAN WILLIAMS',
  'I ATE UP THE APPLE TREE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:36',
  'LULU & THE BROADSIDES',
  'THAT''S A PRETTY GOOD LOVE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5FIAKon4CWIpliYCW5PcoR',
  'found',
  74.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:38',
  'Wild Magnolias',
  'Fire Water',
  'They Call Us Wild',
  'cajun, zydeco, brass band',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0ntargjdcVC7MW0J6VQfEX',
  'found',
  82.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:43',
  'Dr. John',
  'Mardi Gras Day',
  'Mos` Scocious- Anthology (CD01)',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/601JYRxTp2djH0iF5sEmSe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:51',
  'Charmaine Neville Band',
  'If I Ever Cease To Love',
  'Queen Of The Mardi Gras',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/74KtUkoIffKvXMR1B1EES3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '11:57',
  'HELEN GILLET',
  'DQTSM',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3BM1g486LdsEesXjlM8Aji',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:03',
  'MAHALIA JACKSON',
  'DON''T LET NOBODY TURN YOU AROUND',
  NULL,
  'traditional gospel, gospel, christmas',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3oOqSuuanq8NBbBCS6jLeL',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:05',
  'JESSIE HILL',
  'NATURALLY',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:10',
  'Nolatet',
  'Bongo Joe',
  'Dogs',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5GUCfCRlSInar2igvragMS',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:28',
  'Tank And The Bangas',
  'Cafe Du Monde',
  'Red Balloon',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:33',
  'MACEO PARKER',
  'ROCK STEADY',
  NULL,
  'jazz funk, funk, soul jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/03sGuhK9eaqwZOFuLMIwdB',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:43',
  'CHRIS KENNER',
  'SOMETHING YOU GOT',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/25RjrV1Zw6y6ROYs1me2gJ',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:45',
  'Don Vappie',
  'Absolutely',
  'Creole Blues',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:55',
  'louie michot',
  'TI COUER BLEU',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:56',
  'balfa brothers',
  'la danse du mardi gras',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '12:57',
  'Meters',
  'Hey Pocky A-Way',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4RvopSUhdibG1zPwgYAMHl',
  'found',
  73.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:05',
  'Meters',
  'People Say',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/746CCMLis8SK64lLVXMF1d',
  'found',
  73.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:16',
  'the clash',
  'guns of brixton',
  'london calling',
  'punk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1d0RJmZXAncCnTYHFlhaj4',
  'found',
  91.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:23',
  'the clash',
  'know your rights',
  NULL,
  'punk',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5XtFjSwftFzhQsq0le0rTF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:32',
  'Bobby Charles',
  'Why Are Peolpe Like That',
  'Secrets Of The Heart',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:35',
  'Happy Talk Band',
  'Other Than Everything, Everythi',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:46',
  'Rough Seven',
  'St. Anthony',
  'Give Up Your Dreams',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '13:54',
  'Malevitus',
  'Sugar and Salt',
  'Malevitus',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5ClX1PeIey5OwxKsETTczz',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:01',
  'Dr. John',
  'Eleggua',
  'Locked Down',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5zbKKnn0Ar6EMkP9q7nzd9',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
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
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:08',
  'BILL WITHERS',
  'KISSING MY LOVE',
  'STILL BILL',
  'soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/262qk9k0LTyMXmjH9YT2xU',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:11',
  'Meters',
  'Hey Pocky A-Way (Single Version)',
  'Rejuvenation',
  'funk, soul, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7Jea2uirtEcZMqUTjuvJtq',
  'found',
  73.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:15',
  'JAMES & BOBBY PURIFY',
  'I''M YOUR PUPPET',
  'SHAKE A TAIL FEATHER!',
  'northern soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6H8WMHCov3QGaPLbpOMpcJ',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:17',
  'Joe Simon',
  'I Need You, You Need Me',
  'Best Of Joe Simon',
  'philly soul, classic soul, northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2qp7vrDPvoo0I5CI8JUDmx',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:20',
  'Bobby Blue Bland',
  'I Need Your Love So Bad',
  'Members Only',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4BuoEvRdm26Fgia0gHsM2V',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:24',
  'BETTY EVERETT',
  'AIN''T GONNA CRY',
  'AT HER BEST',
  'northern soul, doo-wop, motown',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6bwRo6ZZY4IMsqHFKuklP0',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:27',
  'Albert King',
  'I Get Evil',
  'New Orleans Heat',
  'blues, classic blues, blues rock',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0V9RMOrY4i89IBIBqDLYdW',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:31',
  'STEVIE WONDER',
  'THAT GIRL',
  'ORIGINAL MUSIQUARIUM',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5oNi6zJgIcGh8pv3XlmZb3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:36',
  'Chocolate Milk',
  'Say Won`t Cha',
  'Ice Cold Funk- The Greatest Groo',
  'funk, post-disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/30aIAA5c5m6Xl3zrzpZCJD',
  'found',
  80.2,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:41',
  'G.Q.',
  'SITTING IN THE PARK',
  'TWO',
  'disco, post-disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/079XHGz5pinsXizxTcJUfX',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:44',
  'Big Al Carson',
  'Dip My Dipper',
  'Take Your Drunken Ass Home',
  'zydeco, cajun',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3yJMepo0DH7VdZqDcmyd0l',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:51',
  'Koko Taylor',
  'Don`t Put Your Hands On Me',
  'Force of Nature',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2WX1Opbc92E3zwBThDJUAb',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:54',
  'ENCHANTMENT',
  'Sunshine',
  'THE BEST OF ENCHANTMENT',
  'quiet storm, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5piWzIoOx8VJbtWHP3KYOX',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '14:59',
  'Aretha Franklin',
  'Until You Come Back To Me (Tha',
  '30 Greatest Hits [Disc 2]',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3iX0BMs9dX9CsgrHhiB173',
  'found',
  81.5,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:08',
  'Johnny Guitar Watson',
  'Ain`t That A Bitch',
  'The Best Of The Funk Years',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5tcrRMV4ibCLHx8s2yp2O3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:13',
  'SOLOMON BURKE',
  'CRY TO ME',
  'THE VERY BEST OF SOLOLMOM BURKE',
  'soul, soul blues, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0sDeU2murnLh4yVHQ5IV70',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:16',
  'Lee Dorsey',
  'Lottie Mo',
  'Great Googa Mooga (Cd 1)',
  'northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/59Vvb8xnK2YoToN5wfOs8Z',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:18',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda',
  'Thirty Years and Still Wild',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:19',
  'Bo Dollis & The Wild Magnolias',
  'Handa Wanda, Pt. 1',
  'Mardi Gras In New Orleans [Mardi',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:22',
  'LATIMORE',
  'QUALIFIED MAN',
  'STRAITEN IT OUT',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5bCrFgw4doVSYLQpoJdR4x',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:26',
  'Snooks Eaglin',
  'Lipstick Traces',
  'The Crescent City Collection',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:30',
  'JERRY BUTRLER',
  'AIN''T UNDERSTANDING MELLOW',
  '20TH CENTURY MASTERS',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:34',
  'Johnny Guitar Watson',
  'Telephone Bill',
  'The Funk Anthology (CD02)',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/55VYCKfhY4S6mPM3dee2Cj',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:39',
  'Dr. John',
  'Food For Thot',
  'The Best Of The Parlophone Years',
  'cajun, zydeco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/0pS0ArJxesOWbEbRBDKKBh',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:43',
  'ROTARY CONNECTION',
  'LOVE HAS FALLEN ON ME',
  'HEY,LOVE',
  'classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/12P5G3TPyFc0Jpi4Ys3044',
  'found',
  92.8,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:48',
  'BILL WITHERS',
  'LET ME BE THE ONE YOU NEED',
  'THE BEST OF BILL WITHERS',
  'soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/22beaVB5KBAffAVT6NhpJ2',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:56',
  'JOCELYN BROWN',
  'SOMBODY ELSE''S GUY',
  'SINGLE',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '15:57',
  'TONYA BOYD-CANNON & DA TRUTH BRASS BAND',
  'EVERYWHERE ELSE IT''S TUESDAY',
  'SINGLE',
  'brass band, footwork',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4aruXzSviX46ixqKG9mAM9',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:07',
  'ellis marsalis',
  'softly as in a morning sunrise',
  'on the first occasion',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0tUfo9y9UjzgweLTdtHrMK',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:13',
  'Emmet Cohen',
  'spillin'' the tea',
  'Uptown In Orbit',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/1MrBiLHSHib7J1vOmZhNTj',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:20',
  'The Dave Brubeck Quartet',
  'How High The Moon',
  'Jazz At Oberlin',
  'jazz, cool jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/1JSJA9Ju2bdqRghnTXabU2',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:29',
  'Snooks Eaglin',
  'Nine Pound Steel',
  'Live In Japan',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:36',
  'Herbie Hancock',
  'Tell Me A Bedtime Story',
  'The Essential Herbie Hancock',
  'jazz, jazz fusion, jazz funk',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/6eimz6jvlZaPwtflDWCTa0',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:36',
  'Miles Davis',
  'E.S.P.',
  'The Essential Miles Davis',
  'jazz, cool jazz, hard bop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/61K5CsgNZy69TFzrsFS1XM',
  'found',
  81.6,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:41',
  'Joe Henderson',
  'Johnny Come Lately',
  'Lush Life',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/6klmQRMwixVFcjxUndqTp3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:48',
  'Kenny Garret & Pharoah Sanders',
  'Sketches Of MD',
  'Live At The Iridium',
  'jazz, jazz fusion, free jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/29Ly6ilQ5zfnNZQOiFwZK0',
  'found',
  81.5,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '16:59',
  'John Michael Bradford',
  'Monie',
  'Something Old, Something New',
  'jazz funk, brass band, cajun',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/7cEJzvZWMHk0czM16qV1ky',
  'found',
  82.1,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:14',
  'Nicholas Payton',
  'Hangin'' In and Javin''',
  'Smoke Session',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:14',
  'Nnenna Freelon',
  'The Meaning Of The Blues',
  'Jazz After Dark',
  'vocal jazz, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/629xvARvFaQOjTqGc6nAaZ',
  'found',
  93.7,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:20',
  'Nubya Garcia',
  'Fly Free',
  'Nubya''s 5ive',
  'nu jazz, jazz, indie jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5vOACtNZ1QU7Qv3PJARUDR',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:33',
  'Oliver Nelson',
  'Stolen Moments',
  '''THE BLUES AND THE ABSTRACT TRUTH'' (Impulse! Records)',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/1sce5VJvCOYYDAR9rp9KdG',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:40',
  'Sonny Rollins',
  'Tune Up',
  'Newk''s Time',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/2uKNim3AX8fos0QuUv62Da',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:46',
  'Charles Mingus',
  'Farewell, Farwell',
  'Jazz Classics',
  'jazz, hard bop, bebop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4citv7RrPPQO3DVbA604b8',
  'found',
  78.9,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '17:53',
  'Nancy Wilson',
  'These Golden Years',
  'Turned To Blue',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:10',
  'Pat Metheny',
  'In On It',
  'Side-Eye',
  'jazz fusion, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/7jKhWfwscF6ZYXCKM9iA9k',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:10',
  'Terrence Martin & Curly',
  'Final Thought',
  'Curly',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:27',
  'Branford Marsalis',
  'Mr. Steepee',
  'Crazy People Music',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:27',
  'John Clotrane',
  'Mr. P.C.',
  'The Atlantic Years',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:33',
  'Herlin Riley',
  'The Crossbar',
  'New Directions',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5jM46z8x7M1KJsZOHGPVsQ',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:41',
  'Tito Puente',
  'New Arrival',
  'Calle 54',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5jvwfgu3bwWyLh1OcmvugM',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '18:54',
  'Johnny Adams',
  'Blue Gardenia',
  'The Verdict',
  'soul blues, blues',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/5QOschV0NMGDvN6DqmvW7C',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:00',
  'DIRTY DOZEN BRASS BAND',
  'JOHN THE REVELATOR',
  'Funeral For A Friend',
  'brass band, jam band, cajun',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2YDUeulONtt8IFIsZfmRst',
  'found',
  90.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:04',
  'mahalia jackson',
  'when the saints#',
  NULL,
  'traditional gospel, gospel, christmas',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3dqHgnU7v6p1eBlDaitYtX',
  'found',
  81.7,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:12',
  'edith wilson with doc straine',
  'it''s gonna be a cold cold winter',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/50u1CtuGJX1EOZRTueQeeC',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:12',
  'sonny boy williamson',
  'nine below zero',
  NULL,
  'roots rock, blues, classic blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4swf6Tl5tJCLhdo7Cpuazk',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:15',
  'Bob Howe & Frankie Griggs',
  'The Hottest Stuff In Town',
  'Them Dirty Blues',
  'ragtime',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0cppqPO5sjvWNTVlge0GkA',
  'found',
  89.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:18',
  'jimmy shaw',
  'the right to love you',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:19',
  'jackie mittoo',
  'get up and get it',
  'the keyboard king of studio one',
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4KKLXmRB71huKAf5vS0t9A',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:22',
  'jimmy shaw',
  'we''re gonna make it.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:30',
  'Betty Harris',
  'There''s A Break In The Road',
  NULL,
  'northern soul, soul jazz',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0CokZkflJLq2mE4ZBwpWFw',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:30',
  'jimmy shaw the mighty hannibal',
  'wake up.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:31',
  'mary jane hooper',
  'harper valley pta.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5uX7qH7hyt5ulypk6FGFoh',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:37',
  'jackie mittoo',
  'juice box',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5i37sTuV3K3IbBWHNuXihe',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:37',
  'jimmy shaw the mighty hannibal',
  'big chief hug-um an'' kiss-um',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:37',
  'jimmy shaw the mighty hannibal',
  'hymn no 5',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:49',
  'mitty collier',
  'pain.',
  NULL,
  'northern soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2RMYWiLkrJOIKiiTjgh28E',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:52',
  'jimmy shaw the mighty hannibal',
  'black girl',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '19:55',
  'mable john',
  'stay out of the kitchen',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0I4GvWSMxMzorS3YTQji5F',
  'found',
  91.2,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:02',
  'baby washington',
  'it''ll never be over for me',
  NULL,
  'northern soul, doo-wop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2Co8otif6KH0pIMwzNrIdf',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:02',
  'jimmy shaw the mighty hannibal',
  'same ole fool again',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:03',
  'jimmy shaw the mighty hannibal',
  'party life',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:10',
  'chuck jackson and maxine brown',
  'hold on i''m coming.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:11',
  'jimmy shaw the mighty hannibal',
  'i got that will',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:12',
  'jackie mittoo',
  'black organ',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3MZm4t1kRJ2e5JyaYQpjrF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:12',
  'the foundations',
  'jerkin'' the dog',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5VEcEIS8pyq7uOEbsPy1q3',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:18',
  'jimmy shaw the mighty hannibal',
  'motha goose breaks loose',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:24',
  'jimmy shaw the mighty hannibal',
  'sputnik 69',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:27',
  'the mighty sparrow',
  'russian satellite',
  NULL,
  'calypso, soca, parang',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5FGc1IRSeb4DqtdVucFf9a',
  'found',
  84.7,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:32',
  'jimmy shaw the mighty hannibal',
  'fall in love with me',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:38',
  'jackie shane',
  'in my tenement',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0cf14MaYcwoYrpLHFrJegI',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:38',
  'jimmy shaw the mighty hannibal',
  'my name is hannibal',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:39',
  'jackie mittoo',
  'reggae rock',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/00hPnVmMynXSUIeIXapFZE',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:41',
  'jimmy shaw the mighty hannibal',
  'baby sister',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:44',
  'little ann',
  'one way street',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4EBWQ9peB7oehL3K7U4T2p',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:46',
  'jimmy shaw the mighty hannibal',
  'stay away from the crack',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:49',
  'the trinikas',
  'remember me,',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5zYNA33su43OcRKLYgeeFI',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:51',
  'jimmy shaw the mighty hannibal',
  'show me the money.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '20:54',
  'jackie mittoo',
  'oboe',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4QGoeQ77QvTihnoG3wGogJ',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:03',
  'jimmy shaw the mighty hannibal',
  'who told you that?',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:07',
  'Zilla MAyes',
  'All I Want Is You',
  'TOU SEA 45',
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5hjimJL3xC0VIjYuzPBvRY',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:15',
  'doris duke',
  'to the other woman (i''m the other woman',
  NULL,
  'soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2nRk3PqhhekI963sCvoRrm',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:15',
  'jimmy shaw the mighty hannibal',
  'operation G.O.D. news break: god''s the only cure for crack',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:21',
  'ella washington',
  'the grass is always greener',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0kziLNaWRBy1jgGul4o3SL',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:21',
  'jimmy shaw the mighty hannibal',
  'what the blind man sees',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:23',
  'jimmy shaw the mighty hannibal',
  'the old ball game',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:26',
  'jackie mittoo',
  'killer diller',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2hUuLfZEqlAGqlp5aWmcaU',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:30',
  'jimmy shaw the mighty hannibal',
  'rerun',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:32',
  'the devonnes',
  'i couldn''t build a world with you on the outside',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1KkwnFkwvF3aHKktgbozKx',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:35',
  'jimmy shaw the mighty hannibal',
  'love is funny',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:37',
  'ann sexton and the masters of soul',
  'you''ve been gone too long',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:41',
  'jimmy shaw the mighty hannibal',
  'take a chance on me',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:43',
  'marva whitney',
  'unwind yourself.',
  NULL,
  'funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0h7pMUK2EKEj7E4gGvhDO5',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:44',
  'jimmy shaw the mighty hannibal',
  'ain''t nobody perfect',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:48',
  'marie queenie lyons',
  'fever.,',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/03o3ZWoDz3yQ1EGIGlQrkR',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:54',
  'jackie mittoo',
  'hot tamale.',
  NULL,
  'rocksteady, dub, roots reggae',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5BXNlV5rOz5sfBMEOJEZyb',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:54',
  'jimmy shaw the mighty hannibal',
  'obama stomp',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '21:54',
  'jimmy shaw the mighty hannibal',
  'the truth shall make you free',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:08',
  'Big Chief Romeo Bougere ft Dawn Richard',
  'I''m Feeling Good! (remix)',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:11',
  'Champion Jack Dupree',
  'Death of Big Bill Broonzy',
  'Champion Jack''s Natural & Soulful Blues',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:12',
  'Champion Jack Dupree',
  'Don''t Leave Me Mary',
  'Champion Jack''s Natural & Soulful Blues',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7bfd7R8V77RcZi7rZ3Nj6q',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:15',
  'Champion Jack Dupree',
  'Rampart Street Special',
  'Champion Jack''s Natural & Soulful Blues',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/62QHQDCHBqen10phLDzQ2e',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:16',
  'Champion Jack Dupree',
  'Walking the Blues',
  'Two Shades of Blue',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4g4mTh2VIVOKj28cfVyX27',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:25',
  'Champion Jack Dupree',
  'Harelip Blues',
  'Two Shades oif Blue',
  'classic blues, blues, boogie-woogie',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0mh8lhIUzBi69nZZDe5Fgp',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:26',
  'Muddy Waters',
  'Back to the Chicken Shack',
  'Muddy Waters Live in Paris, 1968',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:28',
  'Muddy Waters',
  'Train Fare Home',
  'Muddy Waters Live in Paris, 1968',
  'blues, classic blues, blues rock',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/27F9rTl4ehEsix8eVI9I0Z',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:35',
  'Lil Green (& Big Bill Broonzy)',
  'Why Don''t You Do Right',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:36',
  'Lil Green (& Big Bill Broonzy)',
  'How Can I Go On?',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:40',
  'Lil Green (& Big Bill Broonzy)',
  'Country Blue Blues',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:41',
  'Lil Green (& Big Bill Broonzy)',
  'If I Didn''t Love You',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:46',
  'Django Reinhardt',
  'Night and Day (1938)',
  'Minor Swing',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:47',
  'Django Reinhardt',
  'Nuages',
  'Minor Swing',
  'swing music, jazz, french jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6LCy9KJjMcAkyEHrAcXVfN',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:52',
  'Doug Clark & the Hot Nuts',
  'LET''S HAVE A PARTY',
  'Nuts to You with Doug Clark & the Hot Nuts',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:54',
  'Doug Clark & the Hot Nuts',
  'Gay Cabalerro',
  'Nuts to You with Doug Clark & the Hot Nuts',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:57',
  'Doug Clark & the Hot Nuts',
  'A Soldier',
  'Nuts to You with Doug Clark & the Hot Nuts',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '22:58',
  'Lil Green (& Big Bill Broonzy)',
  'My Mellow Man',
  'Romance in the Dark',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:05',
  'Benin Vodun',
  'Polyrythmie pour Hevioso',
  'Benin Vodun',
  'riddim',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/45ga4WWvnra1hyXOTJAkiF',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:06',
  'Petit Miguelito',
  'JULIA',
  'Petit Miguelito',
  'zouk, kompa, coupé décalé',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7MTtDMqz9GZecoAeOZE5E8',
  'found',
  98,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:14',
  'Vincent Ahehehinnou',
  'Y a pas moyen',
  'Benin Passion',
  'afrobeat, highlife',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5KXqN3DDXitZ9adllW4xYb',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:22',
  'Sedjro Bona, Norbeka',
  'Ovi',
  'Sedjro Bona, Norbeka',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/08lFWM2E9mxmjLDFTWUrl6',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:25',
  'Mama Franco',
  'Fo Sabi Fo',
  'Benin Passion',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4IgG283RX2SuAqZytHkcnO',
  'found',
  76.3,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:27',
  'Vodoun Benin',
  'Vodunche',
  'Benin Pasion',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:37',
  'Gnonnas Pedro',
  'Djedjevi Gnin',
  'Benin Pasion Vol 2',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:39',
  'Clement Melome',
  'Angelina',
  'Benin Pasion Vol. 2',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:44',
  'Dave Ferrato',
  'Later, On Decatur',
  'Later, On Decatur',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4ws5E5xmWSdBacSO8MGZWD',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:47',
  'El Rego',
  'Feeling You Got',
  'Legends of Benin',
  'afrobeat, afro soul',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7d9K7WaGycc1rRnHs7vo15',
  'found',
  100,
  '2026-01-30 07:22:02'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-01-29',
  '23:55',
  'Honore Avolonto',
  'Tin Lin Non',
  'Legends of Benin',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-01-30 07:22:02'
);

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