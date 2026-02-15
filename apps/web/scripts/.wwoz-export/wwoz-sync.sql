-- WWOZ Database Export
-- Generated: 2026-02-15T07:57:08.344Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-15 07:56:07
-- Days: 3
-- Tracks: 483

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-12',
  'https://open.spotify.com/playlist/4lnbl1y50U5d8iuYeFRGe6',
  '{"totalTracks":171,"successfullyFound":107,"notFound":64,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-13 07:28:34',
  '2026-02-15 07:57:07'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-13',
  'https://open.spotify.com/playlist/14eiKM0haSrLcepjFKw9sD',
  '{"totalTracks":126,"successfullyFound":87,"notFound":39,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-14 07:35:29',
  '2026-02-15 07:57:07'
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
  '2026-02-15 07:57:07'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

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