-- WWOZ Database Export
-- Generated: 2026-03-05T08:05:51.486Z
-- Mode: INCREMENTAL
-- Last export: 2026-03-05 08:04:53
-- Days: 4
-- Tracks: 462

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-02',
  'https://open.spotify.com/playlist/29AIWoGXJoIhvbWM04mYlB',
  '{"totalTracks":184,"successfullyFound":118,"notFound":66,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-02 07:16:54',
  '2026-03-05 08:05:50'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-03',
  'https://open.spotify.com/playlist/4ChoMWokVtqMwA3VyqVc8E',
  '{"totalTracks":96,"successfullyFound":55,"notFound":41,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-03 07:39:57',
  '2026-03-05 08:05:50'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-04',
  'https://open.spotify.com/playlist/578G4JMFLtqDANdELxSUle',
  '{"totalTracks":163,"successfullyFound":109,"notFound":54,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-05 08:04:52',
  '2026-03-05 08:05:50'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-03-05',
  NULL,
  '{"totalTracks":7,"successfullyFound":2,"notFound":5,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-03-05 08:04:52',
  '2026-03-05 08:05:50'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-03-02';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:04',
  'Nicholas Payton',
  'Let It Ride',
  'Triune',
  'jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1iBzsbnJTL3RoWrv3zAXkE',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:12',
  'Irreversible Entanglements',
  'Lagrimas del Mar',
  'Open the Gates',
  'free jazz, experimental jazz, spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7Hn2QzqGHoVe81bMFBwVSX',
  'found',
  81.5,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:20',
  'Miles Davis',
  'Blues No. 2',
  'Circle in the Round',
  'jazz, cool jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0EaDbBpEwPtXF8dkL4sVCE',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:26',
  'Buddy Guy',
  'Hooker Thing',
  'Ain''t Done With the Blues',
  'blues, classic blues, blues rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6ktfWlozfz7MpBC9OVOKm8',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:28',
  'Buddy Guy',
  'One From Lightnin''',
  NULL,
  'blues, classic blues, blues rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1asIdR65yIpsYm9pGyCXHS',
  'found',
  98,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:29',
  'Ingfried Hoffmann',
  'Let Live and Die',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6xcMIOBFRPlH8W6ZUB8xk1',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:33',
  'Creole String Beans',
  'Let the Money Drop',
  'Golden Crown',
  'zydeco, cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2zMmwQeOP6yk7MDDv26KMa',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:37',
  'Burnt Sugar, The Arkestra Chamber',
  'Back Pain',
  'If You Can''t Dazzle Them With Your Brilliance',
  'indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0t6QWND9mOql5rn5PIDrYC',
  'found',
  87.4,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:44',
  'John Hammond',
  '2:19',
  'Wicked Grin',
  'blues, country blues, blues rock',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2uQfgaV796QLHJCVOP4bn1',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:49',
  'Johnnie Taylor',
  'Sixteen Tons',
  NULL,
  'blues, soul blues, zydeco',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1AGRC7WrU2KVgaU1VJSLBV',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:51',
  'Billy Paul',
  'Everything Must Change',
  'Got My Head on Straight',
  'philly soul, classic soul, soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7g998XsaG9lBUaDXuEs5xr',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '00:56',
  'Skeletons',
  'Marathon Man',
  'In the Kingdom of Dub',
  'retro soul',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2bLhKZHa4Ao477zfsiNPDv',
  'found',
  100,
  '2026-03-02 07:16:55'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:02',
  'Zeke Bleek',
  'Bleaker by the Week',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2SG7lImvcjHVhitKk4lxX7',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:04',
  'Amy Winehouse',
  'What Is It About Men',
  'Frank',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0dA0ono4Zz0IBc02pYlWIQ',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:08',
  'Helen Gillet',
  'Lettre a Kissinger',
  'ReBelle',
  'cajun',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0ulWucrpfGBeAglseZO2XC',
  'found',
  89.6,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:14',
  'Nuwki Nu',
  'War is not the Answer',
  'Cosmic Forces',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:15',
  'Sariyah Idan',
  'I''m a Warrior',
  'Live in Berlin',
  'dub, dubstep, native american music',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/01WD3nMWzHuKl0QrtCEGHA',
  'found',
  70.4,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:21',
  'Martin Luther King, Jr.',
  'Unjust Evil and Futile War',
  NULL,
  'spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/1ivirjVgZmgZfsOG70lcsv',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:25',
  'Allen Ginsberg',
  'America',
  NULL,
  'spoken word',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6XVVPboSP8bsaNHRditnk9',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:26',
  'Valerie June w/Carla Thomas',
  'African Proverb/Two Roads',
  'The Moon and Stars: Prescriptions for Dreamers',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:31',
  'Yusef Lateef',
  'Warm Fire',
  '1984',
  'jazz, hard bop, free jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0BNk2xPZB2fsu11ez91YR3',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:36',
  'Panorama Jazz Band w/Yulena Velasquez',
  'La Negra Atilia',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:39',
  'Paul McCartney & Wings',
  'Let It Be',
  'One Hand Clapping Sessions',
  '',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0G4Yve4fDmKGDdckGt6nC3',
  'found',
  75.3,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:41',
  'Burnt Sugar Arkestra Chamber',
  'Chicken Scratching Dre Shows SaxTone the Way',
  NULL,
  'indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3nNHIbOWfJ1qI71Yhou9U2',
  'found',
  89.8,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:41',
  'Burnt Sugar Arkestra Chamber',
  'Naomi''s Lullaby',
  'More Than Posthuman, Rise of the Mojosexual Cotillion',
  'indie jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/7jEihm5bMTaawebwfy5WJY',
  'found',
  91.6,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:45',
  'Pyeng Threadgill',
  'Love in Vain Blues',
  'Sweet Home: The Music of Robert Johnson',
  'soul blues',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/498RwTR8JYrsUdZNdh7W2i',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:48',
  'Ethan',
  'At the Labyrinth',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:50',
  'Hank Mobley',
  'This I Dig of You',
  'Soul Station',
  'hard bop, jazz, bebop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/3VBLGJLIeClZVG7HveHmG8',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '01:56',
  'Charles Mingus',
  'Duke Ellington''s Sound of Love',
  'Changes Two',
  'jazz, hard bop, bebop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/6hXQ9XEL2TBc9E0SgAvc0l',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:00',
  'King Pleasure',
  'Parker''s Mood',
  'Golden Days',
  'vocal jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5851IyaolohKE7xJL7TqdB',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:03',
  'Jack Kerouac w/Steve Allen',
  'Charlie Parker',
  'Poetry for the Beat Generation',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:07',
  'Melody Gardot, Donny McCaslin, Ben Monder, Craig Taborn',
  'The King of 52nd Street (Chan''s Declaration)',
  'The Passion of Charlie Parker',
  'vocal jazz, french jazz, jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/2Z49IHSe7C8lEPMKMVuDPY',
  'found',
  72.5,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:10',
  'Charlie Parker',
  'Koko',
  'Best of the Complete Savoy & Dial Studio Recordings',
  'bebop, jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0fh5g0221cWO1oYQw6d3aW',
  'found',
  100,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:14',
  'Charlie Parker w/Al Haig, Kenny Dorham, Max Roach, Tommy Potter',
  'Little Willie Leaps',
  NULL,
  'bebop, jazz, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0qOfllgfH0LAiJajpPvQmU',
  'found',
  95.2,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:17',
  'Fluid Motion',
  'Whispers',
  NULL,
  'free jazz, tropical music, hard bop',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/5qoE8WNUNs8KYXhRw566Mq',
  'found',
  73,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:23',
  'Billy Harper',
  'Amazing Grace',
  'Blueprints of Jazz',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:28',
  'Nina Simone',
  'Zongo',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:32',
  'Eartha Kitt',
  'Lilac Tree',
  NULL,
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:35',
  'Kat Edmondson',
  'I''d Be a Fool',
  'Old Fashioned Gal',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:40',
  'Krown/Washington/Batiste',
  'Another Day in the Life',
  'Soul Understanding',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:43',
  'The Afrodiziac''s Jazz',
  'Belomi Benna',
  'Immigration',
  'jazz funk, latin jazz',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/21w3sh1VAuzGsXzDZQQ9js',
  'found',
  98,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:51',
  'Col. Bruce Hampton & the Aquarium Rescue Unit',
  'Basically Frightened',
  NULL,
  'jam band, jazz fusion',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/59uT1xFkvMQxAyq1q2VVMM',
  'found',
  90,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:55',
  'John Hammond w/Tom Waits',
  'I Know I''ve Been Changed',
  'Wicked Grin',
  '',
  'The Dean''s List',
  'Dean Ellis',
  NULL,
  'not_found',
  NULL,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '02:57',
  'Louis Prima',
  'Buona Sera',
  'Angelina [Prima]',
  'swing music, big band',
  'The Dean''s List',
  'Dean Ellis',
  'https://open.spotify.com/track/0DXm5n7SBxCED9ssTvrx2J',
  'found',
  81.7,
  '2026-03-02 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '10:33',
  'Danny Barker',
  'Palm Court Strut',
  'New Orleans Jazz Man & Raconteur',
  '',
  'Traditional Jazz',
  'Dan Meyer',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '10:40',
  'Champion Jack Dupree (feat Allen',
  'Bring Me Flowers/Rub A Little Bo',
  'NOJHF Jazz Fest (D1)',
  '',
  'Traditional Jazz',
  'Dan Meyer',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:03',
  'Sally Baby''s Silver Dollars',
  'Devil''s Shoe String',
  'Sally Baby''s Silver Dollars',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:15',
  'Isaac Eady',
  'Oughta Be',
  'Amponsah',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/26oytTGMJkxvA8q2ab44xq',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:31',
  'Better Than Ezra',
  'Double Shot Of My Baby''s Love',
  'Death Valley EP',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1ZDU84iu27D3QUjhQw3lln',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:31',
  'David Bandrowski',
  'Spoil With The Rest',
  'Serpentine',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:47',
  'Andrew Jobin And Thick Smoke',
  'Lost Weekend',
  'Lost Weekend',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:48',
  'DGB',
  'Breaux Bridge Rag',
  'Doussan, Garrett, Benoit',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '11:52',
  'Daywalkers',
  'Long Time No Sea',
  'Down To The Quarter',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1qJEY1rXaoOntp9C0uU4fV',
  'found',
  74.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:02',
  'Galactic',
  'Bobski 2000',
  'Vintage Reserve',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/3usSGJY75q12cO88dFPJJq',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:14',
  'Honey Island Swamp Band',
  'Reincarnation Blues',
  'Honey Island Swamp Band',
  'cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5Wvym56itA0bZWqcLTQidX',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:21',
  'Drew Landry',
  'Power',
  'Exiles - The Dockside Tapes - Vol. 1',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:26',
  'Bas Clas',
  'Wonder Why',
  'Fortunes Told',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/6rSriwkdZMyEQbeCCU2LFc',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:28',
  'Dusky Waters',
  'Pass it On',
  'Pass It On',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/1W02kD5QvwT9pgSDjVKRsZ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:47',
  'Acantha Lang',
  'Til I Get it Right',
  'Til I Get It Right',
  'retro soul, soul blues, acid jazz',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2QCU31t6zZqcZ2ZNQMqQXH',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:49',
  'Sabine McCalla',
  'Save My Soul',
  'Folk',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/0IgDMAzTTrdNAo5shxkIxb',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:51',
  'Kenny Neal/Quiana Lynell/Lee Os',
  'Let Life Flow (2025)',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:55',
  'Sarah Quintana',
  'Baby Don''t',
  'Baby Don''t',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4oWnl9uV2amSlGWtoAXRze',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '12:59',
  'Meschiya Lake And The Little Big',
  'Hey Mary Wanna',
  'Bad Kids Club',
  'swing music, ragtime',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5Z6TNKutIQpLUfAZbVVGvu',
  'found',
  92,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:04',
  'Dave Bartholomew',
  'I`m Walking',
  'Walking To New Orleans',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:14',
  'Irma Thomas',
  'I`m Your Puppet',
  'My Heart`s In Memphis- The Songs',
  'classic soul',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/4HvYfVXRFLnpzHbKu8ruOw',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:17',
  'Paul Sanchez',
  'All The Broken Hearted Artists',
  'Love Always Finds A Way',
  'brass band, cajun, zydeco',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2CeFiYmdbV2dVYEORgwFc8',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:25',
  'John Papa Gros',
  'Yes We Can',
  'Giants',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:36',
  'The Nude Party',
  'Look Who''s Back',
  'Look Who''s Back',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/2W47LNJJ6D46rRTMnT8wxJ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:47',
  'The Nude Party',
  'Carolyn',
  'Look Who''s Back',
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/7DYeS5358nphVMk5Ibz49e',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:48',
  'Allen Toussaint',
  'Country John',
  'Allen Toussaint Collection',
  'cajun',
  'New Orleans Music Show',
  'Murf Reeves',
  'https://open.spotify.com/track/5cmT2hwMDGzNEeLq4nIp0B',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '13:52',
  'Robin Barnes',
  'Eh Ma Belle',
  NULL,
  '',
  'New Orleans Music Show',
  'Murf Reeves',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:04',
  'willie mitchell',
  'bum daddy',
  'the best of willie mitchell',
  'northern soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4vfZd8qNglo1Q0vnDKweoZ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:05',
  'HOWLIN WOLF',
  'How Many More Years',
  'MOANIN IN THE MOONLIGHT',
  'blues, classic blues, blues rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0MkINaEoNBJfG9G6ewd4xM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:07',
  'SUNNYLAND SLIM',
  'Everything''s Gonna Be Alright',
  'CHICAGO AIN''T NOTHIN'' BUT A BLUES BAND',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:10',
  'DON HOLLINGER',
  'I HAD A NIGHTMARE',
  'LOST DEEP SOUL TREASURES VOL.1',
  'southern gothic',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6ccj08mauvQobhjrZMRX0Y',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:12',
  'JOHNNY JENKINS',
  'LEAVING TRUNK',
  'TON-TON MACOUTE!',
  'blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5UoFBGgxGxOg8SmbqGcDHs',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:16',
  'ALBERT AMMONS',
  'Boogie Woogie Blues',
  'THE FIRST DAY',
  'boogie-woogie, ragtime, boogie',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/5OI0Fy5ydnnu34Z5YFCRPm',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:20',
  'DWAYNE DOPSIE',
  'BACK IN THE WOODS',
  'UP IN FLAMES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:23',
  'JB LENOIR',
  'SHOT ON JAMES MEREDITH',
  'VIETNAM BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:27',
  'BLIND TEDDY DARBY',
  'SHE THINKS SHE''S SLICK',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER 1929-37',
  'country blues, ragtime, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4yuwZOljDNu73opKtPCIfm',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:30',
  'MAXWELL STREET JIMMY',
  'YOU GOT TO REAP WHAT YOU SOW',
  'THE GEORGE MITCHELL COLLECTION',
  'country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4E3CZqWYs6f2vVMet6r1NM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:35',
  'PEG LEG HOWELL',
  'PEG LEG STOMP',
  'PEG LEG HOWELL AND HIS GANG',
  'country blues, blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/670gYZAOfPOhm0jTap50p0',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:37',
  'ROLLING STONES',
  '2120 SOUTH MICHIGAN AVE',
  NULL,
  'classic rock, rock',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1IrjpIRZCQP9B2sEBhsO4u',
  'found',
  70.4,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:39',
  'THOMAS SHAW',
  'stop and listen',
  'BORN IN TEXAS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:42',
  'BOBBY WOMACK',
  'JUBILEE (DON''T LET NOBODY TURN YOU AROUND)',
  'THE BRAVEST MAN IN THE UNIVERSE',
  'soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2gBzOz1qzxJUge1qphEBhU',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:44',
  'ROBERT JOHNSON',
  'CLIMBING HIGH MOUINTAINS',
  'SORROW COME PASS ME AROUND',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:47',
  'CLARENCE GARLOW',
  'BON TON ROULA',
  'LOUISIANA SWAMP BLUES',
  'zydeco, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/2YuhmmvGdRtSbuaaekJV4b',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:49',
  'GOOD ROCKIN'' CHARLES',
  'SHAKE YOUR BOOGIE',
  'THE DEVIL''S MUSIC',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1k1NaZgqJ1ipIoSAoznYIW',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:52',
  'PAPA LIGHTFOOT',
  'WINE, WHISKEY & WOMEN',
  'SOUTHERN BLUES MASTERS',
  'classic blues, blues, rockabilly',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/18iM3IW9YnQhEzPuoNL8BH',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '14:56',
  'JR KIMBROUGH',
  'LONESOME IN MY HOME',
  'SAD DAYS, LONELY NIGHTS',
  'blues, country blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3jt4oI3xqRTCMraQfU6XuE',
  'found',
  70.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:00',
  'JOHN FAHEY',
  'How Long',
  'THE DANCE OF DEATH AND OTHER PLANTATION FAVORITES',
  'folk',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6LmvspNZsfDeTR5pJQWSvG',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:04',
  'FREAKWATER',
  'QUEEN BEE',
  'END TIME',
  'alt country, americana, southern gothic',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/3QVU2p27KcKmag3sLKY23b',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:08',
  'doc watson',
  'country blues',
  'doc watson',
  'bluegrass, newgrass, traditional folk',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/4TXtgaRXTR68GKG9p9bZQU',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:12',
  'BILLY BIRD',
  'MILL MAN BLUES',
  'COUNTRY BLUES COLLECTOR ITEMS 1928-33',
  'country blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6Nteil5NpmYMyEXBtCFPKM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:15',
  'RL BURNSIDE',
  'rollin'' and tumblin''',
  'BURNSIDE ON BURNSIDE',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:20',
  'BOBBY PARKER',
  'DON''T DRIVE ME AWAY',
  'LOST DEEP SOUL TREASURES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:23',
  'TONY RANSON AND THE JACKSON FOUR',
  'CURIOSITY',
  'CURIOUSITIES: THE ACE 70s SINGLES AND SESSIONS',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:25',
  'LITTLE AARON',
  'east st. louis',
  'DOWN ON BROADWAY AND MAIN',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:27',
  'JAY MCSHANN',
  'HOOTIE BLUES',
  'BOPPERS AND THE BLUES',
  'blues, boogie-woogie, jazz',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0TCGKfuNsLNRgPZ061bovl',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:33',
  'TOMMY TUCKER',
  'My Babe',
  'MOTHER TUCKER',
  'blues, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/6LxhcLv6UIX9Z7D8s9W8pP',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:36',
  'LEROY WASHINGTON',
  'WILD CHERRY',
  'LOUISIANA SWAMP BLUES',
  'classic blues, cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7t0VAAFsoPi8vgSugWNBwI',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:39',
  'WALTER WOLFMAN WASHINGTON AND THE ROADMASTERS',
  'Glass House',
  'LIVE 2002',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:45',
  'WALTER DAVIS',
  'ASHES IN MY WHISKEY',
  'COMPLETE RECORDED WORKS IN CHRONOLOGICAL ORDER VOL.2',
  'blues, ragtime, classic blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/1se8lWU80UIe740wIfraUM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:48',
  'ROY MONTRELL',
  'OOH WOW',
  'BUCK JUMP JIVE VOL.8',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:51',
  'RUBBERLEGS WILLIAMS',
  '4-F BLUES',
  'BOPPERS AND THE BLUES',
  '',
  'Blues Eclectic',
  'Andrew Grafe',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:53',
  'MORRIS PEJOE',
  'SHE WALKED RIGHT IN',
  'STOMPIN'' VOL.5',
  'classic blues, blues',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0MSgVBezVF9VpHC49GCDI4',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:56',
  'WILLIE MITCHELL',
  'BAD EYE',
  'GREATEST HITS',
  'northern soul, classic soul',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/7d5UJFsmgvLRPxbMPza0Mt',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '15:57',
  'Allen Toussaint',
  'We The People',
  NULL,
  'cajun',
  'Blues Eclectic',
  'Andrew Grafe',
  'https://open.spotify.com/track/0nYip8A2BmutrnMvNdMfeg',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:00',
  'Brandee Younger',
  'Spirit U Will',
  'Somewhere Different',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3vFhPOosuunf5NpHdaM31e',
  'found',
  98,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:07',
  'Brandee Younger',
  'Beautiful Is Black',
  'Somewhere Different',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/3dmcXOt8lLxwHcJV9kjHw2',
  'found',
  98,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:14',
  'Brandee Younger',
  'Tickled Pink',
  'Somewhere Different',
  'experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/71FaCRVZuDQgO4h3qWb7Lk',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:23',
  'QUIANA LYNELL',
  'LA VIE EN ROSE',
  'PILLOW TALK',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:27',
  'QUIANA LYNELL',
  'COME SUNDAY/I WISH I KNEW (HOW IT WOULD FEEL TO BE FREE)',
  'A ;LITTLE LOVE',
  'jazz pop, vocal jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/4ixfWGQxiEUHQyk3mxMl1k',
  'found',
  97.8,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:30',
  'LILLIAN BOUTTE',
  'C''EST SI BON',
  'YOU''VE GOTTA ;LOVE POPS',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:50',
  'TOPSY CHAPMAN & SOLID HARMONY',
  'WRAP YOUR TROUBLES IN DREAMS',
  '3 IN 1',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '16:59',
  'Hot 8 Brass Band',
  'Big Tuba (Clean)',
  'Big Tuba',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:08',
  'Dave Stryker, Jared Gold, Mclenty Hunter Jr.',
  'Dexterity',
  'Blue Fire: The Van Gelder Session',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:14',
  'CHARLIE APICELLA & IRON CITY',
  'OYE COMO VA',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2ntcjDeUxMcgbaVxClvhpp',
  'found',
  90.6,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:22',
  'CHARLIE APICELLA & IRON CITY',
  'LEMON RIND',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/55zUtMoIqt47Wd69INZFwd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:32',
  'CHARLIE APICELLA & IRON CITY',
  'REMEMBERING B.B.KING',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/5FIDUvbPB4aCPEKEfTovr1',
  'found',
  90.8,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:41',
  'CHARLIE APICELLA & IRON CITY',
  'IDRIS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7m6ulA2cguNBmsi3dM43Xg',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '17:57',
  'CHARLIE APICELLA & IRON CITY',
  'BIG BOSS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2uRigALcdHBQPQ9ngOZwBY',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:08',
  'CHARLIE APICELLA & IRON CITY',
  'SPARKS',
  'CHARLIE APICELLA & IRON CITY LIVE IN NYC',
  'cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/2rGUxXIBshfRLjXqLPZ7UM',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:15',
  'Archie Shepp and The Attica Blue',
  'The Cry Of My People',
  'I Hear The Sound',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:23',
  'Archie Shepp and The Attica Blue',
  'Ballad For A Child',
  'I Hear The Sound',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:29',
  'NINA SIMONE',
  'WILD AS THE WIND',
  'WILD IS THE WIND - HIGH PRISTESS OF SOUL',
  '',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:37',
  'BILLIE HOLIDAY',
  'BODY AND SOUL',
  'THE SILVER COLLECTION',
  'jazz, vocal jazz, big band',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/7c7yHHFdYkqBzS1DG3UIFq',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '18:46',
  'Wes Montgomery',
  'Soft Winds',
  'In The Beginning',
  'jazz, hard bop, cool jazz',
  'Jazz from Jax Brewery',
  'Maryse Dejean',
  'https://open.spotify.com/track/0OjssFAEgBjUz8h5QRffcL',
  'found',
  98,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:00',
  'Jackie HArris',
  'No Kind Of Man',
  'CHESS 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:06',
  'Charles Sheffield',
  'I Got Fever',
  'Goldband 45',
  'northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4vY5EZZHZS2b0oW9lzey55',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:07',
  'bILLY bOY aRNOLD',
  'pRISONERS pLEA',
  'VIVID 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5csDnVK953wIwOcXktOayj',
  'found',
  79,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:09',
  'Sonny Boy Williamson',
  'One Way Out',
  'CHECKER 45',
  'blues, classic blues, country blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/45o8oihNTaFdxnAmm4SRHp',
  'found',
  89.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:17',
  'Eddie Bo',
  'I Had Little Girl',
  'AT LAST 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:18',
  'Gerald McCauley',
  'Wondering',
  'TIMMION 45',
  'retro soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0Iv3jXkYpZfngAC4dqpc8P',
  'found',
  70,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:19',
  'SOuthland Gospel',
  'Ive MAde A Name In Jesus',
  NULL,
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:21',
  'Charles Clark',
  'Hidden Charms',
  'ARTISTIC 45',
  'ragtime',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0cgODWN43Po3Jkm37cOR5V',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:24',
  'Irma Thomas',
  'Hittin On Nothing',
  'INSTANT 45',
  'classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/25y7e0hFdW0coA6CP0JBZD',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:26',
  'Kip ANderson',
  'Watch You Work It Out',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:31',
  'Tes TAylor',
  'Dont Lie',
  'OKEH 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:33',
  'Muddy Waters',
  'All Aboard',
  'CHESS 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1EiMZTzOWtmq3Yw72Lym80',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:39',
  'The FAntastic Family Aires',
  'Jesus I Love You',
  'RC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:44',
  'Chet Poison Ivey',
  'Shake A Poo Poo',
  'TRC 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:44',
  'Zilla MAyes',
  'All I Want Is You',
  'TOU-SEA 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/5hjimJL3xC0VIjYuzPBvRY',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:45',
  'Josphine TAylor',
  'Good Lovin',
  'MAR V LUS 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:51',
  'Helen Hollins SIngers',
  'Deliverence',
  'HOB 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:54',
  'Bo Diddley',
  'Shes fFine, Shes Mine',
  'CHECKER 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '19:56',
  'Johnny Adams',
  'Life Is Just A Struggle',
  'RIC 45',
  'soul blues, blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/2G2KhcfJGxiGWdFQo6QUEa',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:01',
  'Idris Muhammad',
  'Im LAzy Thats All',
  'Turns This Mutha Out',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:13',
  'Gabrielle Cavassa',
  'Prisoner of Love',
  'Diavola',
  'vocal jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/51I6YF51LiQf3bZALtnHUO',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:15',
  'KoKo TAylor',
  'I Got What It TAkes',
  'CHECKER 45',
  'blues, classic blues, soul blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4HiVCsnJH9P35ASXLL60ip',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:18',
  'Barbara West',
  'Im A Fool For You Baby',
  'RONN 45',
  'northern soul, soul jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6QfIETJzqQK84JN46rqLRv',
  'found',
  89.5,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:20',
  'The Kelley Brothers',
  'HAvent I Been Good To You',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:24',
  'Elder WArd ad the Gospel Four',
  'The LAst Road',
  'Sacred SOul-D vine Spirituals Vol 3',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:33',
  'JAmes Carr',
  'At The DArk Emnd Of the STreet',
  'The Goldwax Story',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:34',
  'Aretha Franklin',
  'Are YOu Sure',
  'ARETHA with tthe Ray Bryant Combo',
  'soul, motown, classic soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/0qlEfa1IwCNGtqToVL4jwI',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:39',
  'HArold Melvin and the Blue Notes',
  'I Hope That We Can Be Togther Soon',
  'To Be True',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:40',
  'Jeff PArker',
  'My Ideal',
  'Forfolks',
  'ambient jazz, experimental jazz, free jazz',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/7j904X3sfe3J7lrBbu1XcR',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:44',
  'PAtsy Cline',
  'Heartaches',
  'Sentimentally Yours',
  'classic country',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6ytSu75pkFMciW5ra0fRtJ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:52',
  'John Lee Hooker',
  'Im So Excited',
  'VEEJAY 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/104zXhgxLs3iMhCr2sRwkP',
  'found',
  83.2,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:58',
  'Elmore James',
  'Cry For Me',
  'VEEJAY 45',
  'blues, classic blues, blues rock',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/6FFgsh7OcF7iLWBunCDiXu',
  'found',
  90.6,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:58',
  'Lightnin SLim',
  'You Know Youre So Fine',
  'EXCELLO 45',
  '',
  'Blues and R&B',
  'Gentilly Jr.',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '20:58',
  'Lillian Offitt',
  'Miss You So',
  'EXCELLO 45',
  'classic blues',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/1oW7XRcjW7HwyYpowzmib1',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '21:05',
  'Betty JAmes',
  'Im A Little Mixed Up',
  'CEE JAY 45',
  'classic blues, blues, northern soul',
  'Blues and R&B',
  'Gentilly Jr.',
  'https://open.spotify.com/track/4cLPvcojgZHpaxP7d5akhG',
  'found',
  88,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:05',
  'fabiana palladino',
  'stay with me through the night',
  'fabiana palladino',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0tBQ1zZ7nfPiBwOEpHTxqd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:05',
  'october london',
  'make me wanna',
  'the rebirth of marvin',
  'retro soul, neo soul, contemporary r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7aTcdBz0stpZqhqbnDCXBI',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:06',
  'october london',
  'dive',
  'the rebirth of marvin',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:08',
  'olivia dean',
  'dive',
  'messy',
  'pop soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/36vmaZyO0iAE6FZ7287fg2',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:12',
  'meshell ndegeocello',
  'I wonder If I Take You Home',
  'ventriloquism',
  'neo soul, indie jazz',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1k2Nu0StGWVtGWqDX8ntTj',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:19',
  'Khruangbin, Leon Bridges',
  'C-side',
  'Texas Sun - ep',
  'neo-psychedelic, retro soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1uKXFp5BcdHf7grmjIDQLF',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:21',
  'FKJ, SANTANA',
  'greener',
  'GREENER - SINGLE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3LBYQK2nwnwKfi2tkvfpRG',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:25',
  'EZRA COLLECTIVE',
  'REASON IN DISGUISE (FEAT. JORJA SMITH)',
  'REASON IN DISGUISE (FEAT. JORJA SMITH)',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:28',
  'CLEO SOL',
  'WHEN I''M IN YOUR ARMS',
  'ROSE IN THE DARK',
  'neo soul, alternative r&b, uk r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/47s5hKfwGXliAAB8wKMiNo',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:36',
  'LUCKY DAYE',
  'HERICANE',
  'HERICANE-SINGLE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/64fITmtln0OJqcxPf09vnY',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:39',
  'SOLANGE',
  'Junie',
  'A SEAT AT THE TABLE',
  'alternative r&b, neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5lMugQF80AuN6uukFJLT58',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:43',
  'TERRANCE MARTIN, ALEX ISLEY',
  'ACROSS THE STREET',
  'I LEFT MY HEART IN LADERA',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:46',
  'Moses Sumney',
  'Gold Coast',
  'Gold Coast',
  'art pop, indie soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7oFuhAAM6OK0pdHkD4NsXB',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:53',
  'D''ANGELO',
  'Africa',
  'VOODOO',
  'neo soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/6FTBZdL2sXXUSBXMwrQTut',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '22:59',
  'FOUSHEE',
  'STILL AROUND',
  'POINTY HEIGHTS',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:02',
  'HIATUS KAIYOTE',
  'BREATHING UNDERWATER',
  'CHOOSE YOUR WEAPON',
  'neo soul, indie soul, alternative r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4UOSM66BYQRD4YbOIkcTO8',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:10',
  'ROBERT GLASPER',
  'BETTER THAN I IMAGINED (FEAT. HER AND MISHELL NDEGEOCELLO)',
  'BLACK RADIO III',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:13',
  'FULL CRATE',
  'A STORM ON A SUMMERS DAY (FEAT. GAIDAA',
  'STILL GROWING - EP',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:17',
  'GALIMATIAS',
  'LAYING LOW (2019)',
  'LOST CARGO',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1yc02ZmwOXOtWzbnFoqBsQ',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:19',
  'saint mercedes',
  'patience',
  'patience - single',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:23',
  'vulfpeck',
  'tender defender (feat. theo katzman)',
  'clarity of cal',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:28',
  'FRANCIS AND THE LIGHTS',
  'MAY I HAVE THIS DANCE',
  'FAREWELL, STARLITE!',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3yPD6CHGE1xdJBWyu6ZBKk',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:30',
  'OLIVIA DEAN',
  'CARMEN',
  'MESSY',
  'pop soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/3yT3bPR522kvTTIhjebahC',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:35',
  'FRANK OCEAN',
  'FOREST GUMP',
  'CHANNEL ORANGE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:39',
  'EMILY KING',
  'REMIND ME',
  'SCENERY',
  'pop soul',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/5Y55KLlrLZr8BwLkYQ7QDd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:42',
  'CHRISTIAN KURIA',
  'TELL ME WHEN',
  'BORDERLINE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/4IrukTHhqJsr8SEpqz2Zx4',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:46',
  'JUNGLE',
  '3:11(MORE AND MORE) IT AIN''T EASY',
  'FOR EVER',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:49',
  'IZYBEATS, MODESTY',
  'THIS THING',
  'EDGEHILL',
  'soca, aor',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/0bLLZLNn2dG2N3vFetX2fe',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:54',
  'DABEULL, JORDAN LEE',
  'LAST NIGHT (MIXED)',
  'CAFE KITSUNE MIX BY LAZYWAX (DJ MIX)',
  'funk, nu disco',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/1tVRiqlU0rJ899fnX6xIKc',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:56',
  'GOURDAN BANKS',
  'KEEP YOU IN MIND',
  'KEEP YOU IN MIND - SINGLE',
  '',
  'Kitchen Sink',
  'Derrick Freeman',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-02',
  '23:57',
  'MOONCHILD',
  'CURE',
  'VOYAGER',
  'neo soul, indie soul, contemporary r&b',
  'Kitchen Sink',
  'Derrick Freeman',
  'https://open.spotify.com/track/7u5Bd9mzvZJLSuNSArnMLd',
  'found',
  100,
  '2026-03-03 07:39:57'
);

DELETE FROM wwoz_tracks WHERE date = '2026-03-03';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:03',
  'Lloyd featuring Andre 3000 & Nas',
  'I Want You (Remix)',
  'Steeet Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:08',
  'Jill Scott',
  'Norfside (feat. Tierra Whack)',
  'To Whom This May Concern',
  'neo soul, quiet storm, alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5KiEDWQf8wHc6dLt39MA8X',
  'found',
  71.3,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:10',
  'Smino, Thundercat, and reggie',
  'Hoe-nouns',
  'Maybe in Nirvana',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:12',
  'Saba & Jean Deaux',
  'Photosynthesis',
  'Bucket List Project',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/37Bkd2OPVmuvxrj7q7l0ne',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:15',
  'Emeryld',
  'Hope You''re Happy (feat. EARTHGANG)',
  'Young',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/54GIqRUit4ZG4vk5gj03Oj',
  'found',
  70,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:19',
  'Miguel',
  'All I Want Is You (feat. J. Cole)',
  'All I Want Is You (feat. J. Cole) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:25',
  'Gorillaz',
  'The Moon Cave (feat. Asha Puthli, Bobby Womack, Dave Jolicoeur,',
  'The Mountain',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:30',
  'KAYTRANADA',
  'BULLETS (feat. Little Dragon)',
  '99.9%',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:35',
  'Yaya Bey',
  'the evidence (Exaktly remix)',
  'the evidence (Exaktly remix) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4OBBAroG36tuWGCVDQ493r',
  'found',
  80.8,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:38',
  'Greentea Peng',
  'Stones Throw',
  'Stones Throw - Single',
  'alternative r&b, neo soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6tvFTSXewRjEWDonmDTmg3',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:41',
  'Yebba',
  'Yellow Eyes',
  'Jean',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6xYi9wfZb81gJIVQ95qPNl',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:44',
  'Adrian Sherwood and Nightmares on Wax',
  'Flippin'' Eck',
  'In A Space Outta Dub',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:50',
  'Foushee',
  'do you have a soul?',
  'Pointy Heights',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:51',
  'Hannah Macklin and Horatio Luna',
  'Leopard Love',
  'To the Tooth Two - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '00:58',
  'Childish Gambino',
  'Atavista',
  'Atavista',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6Lj4RhwPsVfMn7tsA5i8jW',
  'found',
  100,
  '2026-03-03 07:39:57'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:00',
  'Don Toliver and Toro y Moi',
  'Madonna',
  'Hole Erth',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:03',
  'Tom Misch',
  'Slow Tonight',
  'Full Circle',
  'indie soul',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2H3L0xj5L4OlYFlRjhJQN5',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:08',
  'Ms Ray & Nourished by Time',
  'Miss You',
  'Miss You - Single',
  'indie electronic',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6JSb9ZQroda8Lgd4rF8o60',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:11',
  'Sault',
  'God, Protect Me from My Enemies',
  'Chapter 1',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0yCBRfjBgCjK0LBXOppEzW',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:18',
  'ELIZA',
  'Major',
  'Major - Single',
  'alternative r&b, neo soul, uk r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4q4uLhe5EVIQ1WsrT15nkv',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:24',
  'Daniel Caesar',
  'Get You (feat. Kali Uchis)',
  'Freudian',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2uP6t2J5MEwhr9rDkAAzwh',
  'found',
  74.8,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:30',
  'Tyler, The Creator, Brent Faiyaz, Fana Hues',
  'Sweet / I Thought You Wanted to Dance',
  'Call Me If You Get Lost: Estate Sale',
  'r&b, alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3EG9FJ0ToLfgnc1IG2Z1wz',
  'found',
  98,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:40',
  'Nicholas Payton',
  'Jazz Is a Four-Letter Word',
  'Afro-Caribbean Mixtape',
  'jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6z5EnYmdUrRI9XXc1kVVOV',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:48',
  'Wynton Marsalis',
  'The Worst Thing (feat. Natalie Merchant)',
  'United We Swing: Best of the Jazz at Lincoln Center Galas',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '01:56',
  'James Blake',
  'The First Time Ever I Saw Your Face',
  'Covers',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0iOuOHywtfaQEcWKeyuH3m',
  'found',
  100,
  '2026-03-03 10:30:07'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
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
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
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
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:11',
  'The melatauns',
  'Coffee and Chickory',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:14',
  'Sunny Side',
  'Is You Is Or Is You Ain''t My Ba',
  'The Felicity Sessions',
  'swing music',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7BWyu9Jf73ROcQl6U83Tul',
  'found',
  93,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:19',
  'Camellia Jazz Band',
  '''Tain''t Nobody''s Bizness If I Do',
  'That''s My Home',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:22',
  'Kermit Ruffins',
  'Ain`t Misbehavin',
  'Swing This',
  'brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0prKTiY7JvElsSjWFiLOtr',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:29',
  'Preservation Hall Jazz Band',
  'Ain`t She Sweet',
  'Preservation Hall Hot 4 With Duk',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:34',
  'Fats Waller And His Rhythm',
  'Oooh! Look-A There, Ain`t She Pr',
  'The Early Years, Part 2 (1935-36',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:37',
  'Don Ewell',
  'Gee Baby, Ain`t I Good To You',
  'Music To Listen To Don Ewell By',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6lsEDOco3J2Fak9bzXtHQC',
  'found',
  93.9,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:42',
  'Calamity Jazz',
  'There Ain`t No Sweet Man Worth T',
  'Cookin` With Calamity',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0uVQ31l2ukHfe4oOKpSMDH',
  'found',
  85.9,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:48',
  'Tuba Skinny',
  'Tricks Ain`t Walkin',
  'Rag Band',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '09:53',
  'Don Vappie',
  'I Want To Be Happy',
  'Swingin` With Finn',
  'afro-cuban jazz, cajun, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2hmyCmbA1faWJNN6j4I6x8',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:03',
  'Louis Armstrong',
  'I`ve Got A Feeling I`m Falling',
  'Satch Plays Fats - A Tribute To',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7MHyRApG9yln6S6xcUY3PA',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:06',
  'Dr. Michael White',
  'Nobody Knows The Way I Feel This',
  'Crescent City Serenade',
  'ragtime, brass band, cajun',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1Xf7LyKko7V2PCff0FH5k3',
  'found',
  94.6,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:10',
  'Mark Braud',
  'Fidgety Feet',
  'Shake It And Break It',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:25',
  'Ken Paige',
  'Your Feets Too Big',
  'Ain''t Misbehavin (Original Broadway',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:37',
  'Hannah Kreiger Benson',
  'Hannah Kreiger Benson Live in WWOZ Studio',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:46',
  'Doreen Ketchens',
  'Don`t You Feel My Leg',
  'Doreen`s Jazz New Orleans Vol. V',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:53',
  'Silver Leaf Jazz Band',
  'Creepy Feeling',
  'Jelly`s Last Jam',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/4yz1w7thGNzCqBFBiYaT0n',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '10:57',
  'Pfister Sisters',
  'We Just Couldn`t Say Goodbye',
  'All`s Well That`s Boswell',
  'boogie-woogie',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6jRj8eBqDBfl7LtBFDyENV',
  'found',
  84,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:07',
  'joe lastie jr and lastie family gospel',
  'do lord',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:14',
  'snooks eaglin',
  'i must see jesus',
  NULL,
  'blues, classic blues, country blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4rZ73BahxvCZFnrIVYQPi9',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:20',
  'coco robicheaux',
  'walking with the spirit',
  'spiritland',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/19Wsy5tByWd0IoMY1Qfvpk',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:30',
  'voice of wetlands allstars',
  'bayou breeze',
  'jazzfest live 2010',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:39',
  'new orleans rhythm conspiracy',
  'dancin ground',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/28aG84X20y5DGEvNQPdLct',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:43',
  'hot 8 brass band',
  'jisten to me',
  'rock with the hot 8 brass band',
  'brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2Ma97KGlylsITpf7vmw9tY',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:56',
  'Galactic & Irma Thomas',
  'Lady Liberty',
  'audience with the queen',
  'jam band, jazz funk, funk rock',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1SKe4wKuS1BoSLi7oTemWF',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '11:57',
  'ernie k-doe',
  'a place where we can be free',
  'here come the girls',
  'classic blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0yElfqhXDaONIXdWWelbNR',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:01',
  'Stooges Brass Band',
  'Spain W EQ',
  'Thursday Night House Party',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:10',
  'THE RUMBLE',
  'MY PEOPLE',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:14',
  'the meters',
  'feels so good',
  'live at rozy''s',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:21',
  'the radiators',
  'party til the money runs out',
  NULL,
  'jam band, cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0BWaXZzAWCFqHn6DEBSi3c',
  'found',
  92,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:24',
  'snooks eaglin',
  'win your love for me',
  NULL,
  'blues, classic blues, country blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/31Wn00lKTq5OcmEAUA4VxK',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:25',
  'alex mcmurray',
  'these dreams in me',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:30',
  'happy talk band',
  'forget me not',
  'total death benefit',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/253NoCV23QZhDXc387Ttf9',
  'found',
  88,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '12:56',
  'bonerama',
  'empty world (so much love)',
  'so much love',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:07',
  'Strange Roux',
  'Hand In The Water',
  'Midnight Dancer',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/2BqHGciz26TsDXTrWZJQZV',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:13',
  'Strange Roux',
  'Midnight Dancer',
  'Midnight Dancer',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5SkMwSpVlH5R3PSyYiWNKr',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:18',
  'King James and The Special Men',
  'The End Is Near',
  'Act Like You Know',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:22',
  'hollyrock',
  'bad influence',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6z1M0OLGpQhEDm92CkXRJu',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:32',
  'clint maedgen',
  'hangin on for my baby''s arms',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4G5l2neJRhzTT8ROQvs66r',
  'found',
  93,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:41',
  'Govt Majik',
  'Progress',
  'Live at Broadside',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '13:59',
  'eddie bo',
  'lover and a friend',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6rnwkwv4GngbJMRUpMnEDA',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:04',
  'sun ra',
  'space Fling',
  'the other planes of there',
  'free jazz, experimental jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4Al0qcaJRU5ZD2FH9k5eqs',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:25',
  'carl allen',
  'alter ego',
  'tippin',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/1Zy3fdidXhspCYxSb3eXL1',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:39',
  'grant green',
  'wives and lovers',
  'solid',
  'hard bop, jazz, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6gbJpfFr4MHXvHiEI4uVCn',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:39',
  'john scofield',
  'mr B',
  'memories of home',
  'jazz fusion, jazz, jazz funk',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/7JQcAXmvIVxEbSazNxyuj9',
  'found',
  74.5,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:52',
  'robrt glasper',
  'madiba',
  'code derivation',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '16:53',
  'alex ventling',
  'You Stepped Out of a Dream',
  'code derivation',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/3h9uat1cYqxbogZGUMqdbM',
  'found',
  72.2,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:04',
  'Makaya McCraven',
  'Awaze (feat. Josh Johnson)',
  'Hidden Out! - EP',
  'nu jazz, experimental jazz, indie jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/61zmDO7Gwj1GttH8iFGvVf',
  'found',
  73.9,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:04',
  'john ellis and double wide',
  'meat pie',
  'fireball',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:12',
  'gene ammons',
  'Blue Velvet',
  'gentle jug',
  'jazz, hard bop, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/6b4T6S04grMsLMLrNuj2aB',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:15',
  'melissa aldana',
  'No pidas Imposibles',
  'Filin',
  'jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/4arQRUWUZolqyT3KzED8H4',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:37',
  'gonzalo rubalcaba',
  'Smile',
  'A Tribute to Beny More',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:37',
  'jeremy Pelt',
  'for the culture',
  'Our community will not be erased',
  'jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5VyhDlll6gIanznhIhfu3s',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '17:37',
  'miguel zenon',
  'como fue',
  'El arte de bolero',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:01',
  'Terence Blanchard',
  'Tom and Jerry',
  'breathless',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'Bill Evans',
  'Speak Low',
  'Crosscurrents',
  'jazz, cool jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5paqecHl898VwEauWJHBEy',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'Dave Douglas',
  'My first rodeo',
  'Four freedoms',
  'free jazz, jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5HVlYXXGFrhRANTnRnLzLq',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'nicholas payton',
  'the most valuable thing',
  'Notes from the Zen Gangster',
  'jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5Fc5nGE1l3K7L9KX3AKbWb',
  'found',
  88.7,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:02',
  'sml',
  'old myth',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:11',
  'Bill evans',
  'When I Fall In Love',
  'Cross currents',
  'jazz, cool jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/0wTzwfSmGUCjrhBnPMrcq5',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:11',
  'bill evans',
  'Night and Day (1938)',
  'crosscurents',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:19',
  'bobbier gentry',
  'here''s that rainy day',
  'windows on the world',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:45',
  'Nels Cline, Craig Taborn, Marcus Gilmore',
  'Forge',
  'Trio of Bloom',
  'experimental jazz, free jazz, jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/0jQLuCF7mu5kop85WsnKBD',
  'found',
  83.2,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:46',
  'dom salvador',
  'Musica faz Parte',
  'jazz is dead 024',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:47',
  'Out Of/Into',
  'Familiar Route',
  'Motion II',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:50',
  'Marion brown',
  'Vista',
  'Entrance Music',
  'free jazz, ambient jazz, experimental jazz',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  'https://open.spotify.com/track/5Fg2Py9I15pPCPzC2iZsbn',
  'found',
  98,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '18:50',
  'james brandon Lewis',
  'remember brooklynn abd Moki',
  'apple cores',
  '',
  'Jazz from Jax Brewery',
  'T.R. Johnson',
  NULL,
  'not_found',
  NULL,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '22:28',
  'Los Po-Boy-Citos',
  'Oye Mamacita',
  'Hasta',
  'latin jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/0ZosDk71khOF95b0SYUByl',
  'found',
  100,
  '2026-03-04 07:47:28'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-03-03',
  '23:16',
  'Dash Rip Rock - PAIN PILLS NEVER',
  'Pain Pills Never Expire',
  'A Song In Everyone',
  'psychobilly, roots rock, rockabilly',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/73t9XvBGcHKDMVxRyUc2cK',
  'found',
  74.2,
  '2026-03-04 07:47:28'
);

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