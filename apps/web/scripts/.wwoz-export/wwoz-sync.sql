-- WWOZ Database Export
-- Generated: 2026-02-27T07:41:19.416Z
-- Mode: INCREMENTAL
-- Last export: 2026-02-27 07:39:38
-- Days: 4
-- Tracks: 529

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-24',
  'https://open.spotify.com/playlist/2hEjvN8nPjUiyOAIsH8Tmq',
  '{"totalTracks":140,"successfullyFound":93,"notFound":47,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-24 07:50:20',
  '2026-02-27 07:41:18'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-25',
  'https://open.spotify.com/playlist/4o0s8sOOPKUq6tgmM30Y7P',
  '{"totalTracks":147,"successfullyFound":105,"notFound":42,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-26 07:22:38',
  '2026-02-27 07:41:18'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-26',
  'https://open.spotify.com/playlist/5BxgWAVDXNcc0w7PWHfR7V',
  '{"totalTracks":206,"successfullyFound":159,"notFound":47,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-26 07:22:38',
  '2026-02-27 07:41:18'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  '2026-02-27',
  NULL,
  '{"totalTracks":2,"successfullyFound":2,"notFound":0,"lowConfidence":0,"duplicates":0}',
  'https://wwoz.org/programs/playlists',
  '2026-02-27 07:39:37',
  '2026-02-27 07:41:18'
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;

DELETE FROM wwoz_tracks WHERE date = '2026-02-24';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:01',
  'Frank Ocean',
  'Lost',
  'channel ORANGE',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3GZD6HmiNUhxXYf8Gch723',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:06',
  'MF DOOM',
  'Rapp Snitch Knishes (feat. Mr. Fantastik)',
  'Mm..Food',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:08',
  'Jamila Woods',
  'VRY BLK (feat. Noname)',
  'HEAVN',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2EnEj7XoToBRxQ9PRaCEYp',
  'found',
  83,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:11',
  'Mateo Santiago',
  'Running (feat. BADBADNOTGOOD)',
  'Running (feat. BADBADNOTGOOD)',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:13',
  'Wax Tailor',
  'No Dawn To Wake',
  'No Dawn To Wake - Single',
  'trip hop, plunderphonics, nu jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/59Pw5qegy9AcuXeYmkDuJp',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:16',
  'Dua Saleh',
  'Glow (feat. Bon Iver)',
  'Of Earth & Wires',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3Qy4hBI9YBIt3yNYPMXPn8',
  'found',
  71.3,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:18',
  'Jordan Rakei and Tom McFarland',
  'Easy To Love',
  'Easy To Love - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:21',
  'Marco Benevento',
  'Frizzante',
  'Frizzante - Single',
  'jam band',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3j0sbeYDIjP2QBbrwSQvaO',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:26',
  'Holly Walker and Maribou State',
  'Otherside',
  'Hallucinating Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:29',
  'Elder Island',
  'Bamboo',
  'Seeds in Sand - EP',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1pVfS4D24dzoW6rwR7KFES',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:34',
  'Bonobo',
  'Return To Air',
  'Flashlight - Single',
  'trip hop, downtempo, nu jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6CxfaUiVzPPjxtyDwjiH6q',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:40',
  'Jamie xx',
  'KILL DEM',
  'KILL DEM - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5CE0k1VmTXgCtaa5L288LP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:44',
  'MFK and Toprak Baris',
  'No Lie (feat. Aquarius Heaven)',
  'No Lie - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:49',
  'Fiorious and Joe Goddard',
  'Loverboy (Benjamin Frohlich Remix - Edit)',
  'Loverboy Remixes - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:53',
  'Oscar Farrell',
  'Dream Therapy (ft. Sampha) (George FitzGerald remix)',
  'Dream Therapy (ft. Sampha) (George FitzGerald remix) - Single',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '00:57',
  'Ledbyher',
  'YU (feat. Biig Piig)',
  'The Elephant',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:02',
  'Rhye',
  'Feel Your Weight',
  'Blood',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6bRVkUr1fyZVX4XwQ4RpaR',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:05',
  'Yaya Bey',
  'Blue',
  'Fidelity',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/1rUWEVR78iRaXXuSHyz6KP',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:08',
  'JID and Jill Scott',
  'To B Honest',
  'To Whom This May Concern',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:12',
  'Arlo Parks',
  'Green Eyes',
  'Collapsed in Sunbeams',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/5iwTDcZSrVq71HjMjNno5c',
  'found',
  100,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:15',
  'Baby Rose',
  'Fight Club (feat. Georgia Anne Muldrow)',
  'Through and Through',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:20',
  'Martina Topley-Bird and Trick',
  'Christiansands',
  'Pre-Millennium Tension',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:24',
  'Yves Tumor',
  'Licking An Orchid (feat. James K)',
  'Safe in the Hands of Love',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 07:50:21'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:28',
  'Young Fathers',
  'I Heard',
  'TAPE TWO',
  'experimental hip hop',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3zgptmNsfqy1JscBOebsYJ',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:32',
  'Handsome Boy Modeling School',
  'I''ve Been Thinking (feat. Cat Power)',
  'White People',
  '',
  'Adjacent',
  'Benny Poppins',
  NULL,
  'not_found',
  NULL,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:37',
  'Gorillaz',
  'Tomorrow Comes Today',
  'Gorillaz',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3qdDjz9kOvquEFbvXBYOMQ',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:42',
  'Nightmares on Wax',
  'You Wish',
  'In a Space Outta Sound',
  'trip hop, downtempo, acid jazz',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/6G6M4fl2I0eqEQnzyTwR8m',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:46',
  'Charlotte Day Wilson',
  'Patchwork',
  'Patchwork',
  'alternative r&b',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/3n5EsLJkjOwYVpx2yE7k4Y',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:47',
  'Flea',
  'Thinkin Bout You',
  'Honora',
  'funk rock',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/4LiSdLjUXbS4daVzBJCTwH',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:52',
  'Sade',
  'Soldier of Love',
  'Soldier of Love',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/0bgsj8kz5zWbQ6njk2Oqoz',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '01:58',
  'James Blake',
  'I Had a Dream She Took My Hand',
  'Trying Times',
  '',
  'Adjacent',
  'Benny Poppins',
  'https://open.spotify.com/track/2hUOnJj6B7938kFBcPO6l5',
  'found',
  100,
  '2026-02-24 10:30:06'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:06',
  'Alabaster DePlume',
  'Not My Ask',
  'To Cy & Lee',
  'ambient jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/52oFxv3QwuMBydy7MU3oWK',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:06',
  'Rotary Connection',
  'Magical World',
  'Aladdin',
  'classic soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/06NKgkCqNpHZjqVyLdXdaI',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:08',
  'Paul Simon',
  'Can''t Run But',
  'In the Blue Light',
  'singer-songwriter',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5gSwQihHUXvC5H4SBCo03D',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:11',
  'Tom Waits',
  'Alice',
  'Alice',
  'singer-songwriter, southern gothic',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6flhPfJHRcQ1jiXojPen9J',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:17',
  'Brandee Younger',
  'Gadabout Season',
  'Gadabout Season',
  'experimental jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5Z4YeqJLy2Ik0NYr0xlfh7',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:20',
  'Makaya McRaven feat. Brandee Younger',
  'So Ubuji',
  'In These Times',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:24',
  'Marvin Pontiac',
  'Small Car',
  'The Legendary Marvin Pontiac',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2Aj0VVWg10s0tDGrZ5bsKr',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:30',
  'Ignacio Cervantes',
  'La Encantadora',
  NULL,
  'classical piano',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4dziTkjuebdZ1CcHiMIF0k',
  'found',
  76.4,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:36',
  'Dusty Springfield',
  'Just a Little Lovin',
  'Dusty in Memphis',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7zpS4UzyAsNGxWz0AyRP3b',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:36',
  'Illinois Jacquet',
  'Port of Rico',
  NULL,
  'swing music, jazz, hard bop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/25wcxxmSx7jlpkQTgqpojg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:37',
  'Barbara Lewis',
  'Snap Your Fingers',
  'Baby, I''m Yours',
  'northern soul, doo-wop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/486DaeZjbBVsY6VWueOCkH',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:40',
  'Barbara Lewis',
  'How Can I Say Goodbye',
  'Baby, I''m Yours',
  'northern soul, doo-wop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7kZ7C3MWAQcyhwgKQX8fzY',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:41',
  'James Brown',
  'Then You Can Tell Me Goodbye',
  'Say It Loud',
  'funk, soul, motown',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4sE5aSHafBivFI9qk2HQMR',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:45',
  'Mose Allison',
  'Lost Mind',
  'Seventh Son',
  'vocal jazz, jazz, cool jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2v6tdM8IUaLpcTxUeyCmEX',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:49',
  'Barbara Acklin',
  'Am I The Same Girl',
  'Greatest Hits',
  'northern soul, classic soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6NVzt2cA5Mgjd3pQjU1xwD',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:53',
  'Eddie Kendricks',
  'If You Let Me',
  'People....Hold On',
  'motown, classic soul, philly soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2dcssVSC1OiONrbqAyUTqb',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:56',
  'Dick Stusso',
  'In Heaven',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1eb2yiCEEOcsH2bBQ1DCBH',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '06:59',
  'Natural Lateral',
  'Houdini''s Notes',
  'Tapestry of Life',
  'nu jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6vXJbsAo7uobHsnAYJhw7t',
  'found',
  98,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:05',
  'Jack Wilson',
  'Kinta',
  'The Two Sides of Jack Wilson',
  'hard bop, bebop, soul jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2X5oWhFObT3MrSILpN55lT',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:11',
  'Jeff Parker',
  'Get Dressed',
  'the new breed',
  'experimental jazz, ambient jazz, free jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1yaUlIHswoTErFAyLFZcnq',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:12',
  'Nina Simone',
  'Love Me or Leave Me',
  NULL,
  'vocal jazz, soul jazz, soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2XzHou7MZzOBQBqjWw86Nt',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:16',
  'Anna Laura Quinn',
  'Speak Low',
  'Open the Door',
  'vocal jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7v2MRItaDig7GYH8WDTv9H',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:21',
  'Richard Galliano',
  'Spain',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:29',
  'Turtle Island String Quartet',
  'Sidewinder',
  'Metropolis',
  'classical crossover',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7vaF8XNNmJBmY3fh79zDhD',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:34',
  'Los Miticos Del Ritmo',
  'Don''t Stop til You Get Enough',
  NULL,
  'electrocumbia, chicha, cumbia',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/57xHD2Q6xWgwr60WzB72Uw',
  'found',
  84.4,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:37',
  'DIZZY GILLESPIE',
  'MANTECA',
  'MANTECA',
  'bebop, jazz, afro-cuban jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2nH9vhGDkvhsx1BS6d7uec',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:40',
  'Skatalites',
  'Ska-ra-van',
  NULL,
  'ska, rocksteady, reggae',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0KvxZUhJlg0kWGydUzZd7A',
  'found',
  75,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:40',
  'Skatalites',
  'smiling',
  NULL,
  'ska, rocksteady, reggae',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/0Qk6jJVBibpstT0BhsRB57',
  'found',
  75,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:45',
  'Bill Landford & The Landfordaires',
  'Run On for a Long Time',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7Abd9YZHgmzHwoMBeNnRmI',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:47',
  'Ze Roberto',
  'Lotus 72 D',
  NULL,
  'bossa nova, brazilian jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/25JrVa0pOZhb4WvuCK1JVk',
  'found',
  72,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:50',
  'Dope Lemon',
  'Home Soon',
  'Hounds Tooth',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/7C5Ria90yxc4a0REG1D23U',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '07:53',
  'Dizzie Gillespie',
  'Unicorn',
  'Free Ride',
  'bebop, jazz, afro-cuban jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2nuD3zk0lrBx1pfJ78jdA1',
  'found',
  70.2,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:03',
  'Khan Jamal',
  'The Known Unknown',
  'Infinity',
  'free jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1Pw1wGb42T6VqRsepROdZP',
  'found',
  98,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:12',
  'Abbey Lincoln',
  'come sunday',
  'Abbey Is Blue',
  'vocal jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3ZTY98dv9uq9oBcX3a4NEB',
  'found',
  88.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:16',
  'Abbey Lincoln',
  'Softly as in a Morning Sunrise',
  'Abbey Is Blue',
  'vocal jazz, jazz',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3u4pnjX6xrI1cGlYnxnW1Z',
  'found',
  95.3,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:19',
  'Swan Silvertones',
  'Milky White Way',
  'Amen',
  'traditional gospel, gospel',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/3Qcm6p5dARXivwF00iaSZb',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:22',
  'TPOK Jazz',
  'Osili Obebi',
  NULL,
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:25',
  'T-Bone Walker',
  'T Bone Shuffle',
  NULL,
  'blues, classic blues',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/6bl7UHHcx1OY9tbvvnSssc',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:32',
  'Mighty Blue Kings',
  'Cadillac Boogie',
  'Meet Me Uptown',
  'swing music, boogie-woogie',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/5jsuPRZB571DTuXxOkvegv',
  'found',
  89.5,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:35',
  'Gene Chandler',
  'Turn On Your Lovelight',
  NULL,
  'doo-wop, northern soul',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2JuNUF9aRgKPdWy1VqC2cv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:38',
  'Allen Toussaint',
  'We Are the People',
  NULL,
  'cajun',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/2X6Iu5fHHo0qTwJcSZuTiW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:50',
  'Brother Jack McDuff',
  'Can''t Get Satisfied',
  'Tobacco Road',
  'soul jazz, jazz funk, hard bop',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/4puePsM4A8DRcdCc3RA0ZU',
  'found',
  78.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:54',
  'Young Holt Unlimited',
  'Medley In Crowd, Wade in the Water, Ain''t Nothing Money',
  'On Stage',
  '',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '08:56',
  'Curtis Mayfield',
  'We Got To Have Peace',
  'Roots',
  'classic soul, soul, motown',
  'The Morning Set',
  'Fox Duhon or Mark LaMaire',
  'https://open.spotify.com/track/1Hqtsr4UAaj495dQxFqdk8',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:08',
  'Catherine Russell and Sean Mason',
  'Ain''t Got Nobody To Grind My Cof',
  'My Ideal',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:12',
  'Catherine Russell',
  'Aged and Mellow',
  'Bring It Back',
  'vocal jazz, swing music, jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/02cCntRCrtgojL45e9oNnu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:22',
  'Tuba Skinny',
  'Cold Morning Shout',
  'Pyramid Strut',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:26',
  'George Finola',
  'Milenberg Joy',
  'New Orleans After Hours',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:31',
  'Peter Bocage',
  'Mama`s Gone, Goodbye',
  'Peter Bocage With The Creole Ser',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1bh5eiyVvajqpRiqmrYz1N',
  'found',
  90.6,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:40',
  'Baby Dodds Trio',
  'Wolverine Blues',
  'Jazz A''La Creole',
  'ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/2lUXRj3pLfvOdKwFOxjYRw',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:46',
  'Seva Venet',
  'I Wanna Dance',
  'The Storyville Stringband Of New',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/4LUKl2xgEOiEfFhL5HpgEg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:49',
  'Louis Armstrong',
  'Honeysuckle Rose',
  'Essential Louis Armstrong 2',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0amJunMZCmdKl30JouAkTd',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:56',
  'Maxine Sullivan, Bob Haggart',
  'Get Out and Get Under the Moon',
  'Enjoy Yourself',
  'vocal jazz, swing music, jazz ballads',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1qTO0HFCBhJEpjkEUxCKOs',
  'found',
  74,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '09:59',
  'Sidney Bechet',
  'Honeysuckle Rose',
  'Jazz At Storyville',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/1Y25339aU2Ae89NOclcS6p',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:06',
  'Preservation Hall Jazz Band',
  'Tootie Ma Is A Big Fine Thing',
  'The 50th Anniversary Collection',
  'brass band, swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/67NIuRLoNNukVtK98YeyUu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:11',
  'Louis Armstrong',
  'I Can`t Give You Anything But Lo',
  'Portrait Of The Artist As A Youn',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/7trsX0rP1cLi1RaE1S9LFI',
  'found',
  93.8,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:15',
  'Bobby Henderson',
  'Blue Turning Grey Over You',
  'A Handful Of Keys',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:19',
  'Topsy Chapman And Magnolia Jazz',
  'Please, Don`t Talk About Me When',
  'Fine And Mellow',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:25',
  'Shotgun Jazz Band',
  'Raining in My Heart',
  'Don''t Give Up the Ship',
  'swing music, ragtime',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/0ZmzIMFoosLFSKM5mza3fJ',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:35',
  'Fats Waller',
  'The Joint Is Jumping',
  NULL,
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:36',
  'Fats Waller',
  'THE JITTERBUG WALTZ',
  NULL,
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/3IeebgUYCGyhFra2EzUD29',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:40',
  'Fats Waller',
  'Sweet and Slow',
  NULL,
  'swing music, ragtime, big band',
  'Traditional Jazz',
  'Leslie Cooper',
  'https://open.spotify.com/track/6ltHNDLRmJKiFPcdv8lNMy',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:44',
  'Danny Barker & New Orleans Rhyth',
  'Bill Bailey Won`t You Please Com',
  'American Griot',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:49',
  'Kermit Ruffins And The Barbecue',
  'I Can`t Give You Anything But Lo',
  '#Imsoneworleans',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '10:56',
  'Doyle Cooper Jazz Band',
  'Mahogany Hall Stomp',
  'Yeah You Right',
  '',
  'Traditional Jazz',
  'Leslie Cooper',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:05',
  'govt majik',
  'the bass age',
  'bass age',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:09',
  'papa grows funk',
  'i got the blues over you',
  'live at the leaf',
  'funk, funk rock, jazz funk',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1phw4wnW0bLH7BPgllnzkR',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:25',
  'neville brothers',
  'rosa parks',
  'live on planet earth',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:25',
  'rebirth brass band',
  'the law',
  NULL,
  'brass band, zydeco, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6lx7tlUggJV4sbDSToYpIU',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:26',
  'dumpstaphunk',
  'justice 2020',
  'where do we go from here',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:30',
  'gravity A',
  'simple man',
  'new beginnings',
  'jam band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4kOt9ogF44F7UNeqIPEtsJ',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:47',
  'dr john',
  'hello god',
  'parlophone years',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4yQ0ivXPldRtlm5p9lsYz2',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:47',
  'sam and the soul machine',
  'gun',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0FxotNOM4kR4HnAJHT72G9',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:51',
  'Fats Domino',
  'I Hear You Knocking',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/13EV66QJMXIHSJS5SHZjRB',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:53',
  'art neville',
  'please don''t leave me',
  'fats domino tribute',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '11:56',
  'ROBBIE ROBERTSON',
  'GOING TO THE RIVER',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:07',
  'Earl King',
  'Some People',
  'Street Parade, featuring The Meters',
  'classic blues, new orleans bounce, cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/0DJHEeWHLIExBUqOOz2Gh1',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:08',
  'galactic with Irma Thomas',
  'love''s gonna find a way again',
  'AUDIENCE WITH THE QUEEN',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:11',
  'IRMA THOMAS',
  'TWO WINTERS LONG',
  'STRAIGHT FROM THE SOUL',
  'classic soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/6IB3gmytuTAjA1wJWeGXJv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:17',
  'Isaac Eady',
  'Love And Gratitude',
  'Amponsah',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/5xcACqvLHi6DXJtxTZreZg',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:21',
  'Colin Davis and the Night People',
  'Pathways',
  'Pathways',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:29',
  'quickening',
  'see ya at da pawty',
  'begin again',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4ADkMTDRADi0VPgiFbEdkU',
  'found',
  74.1,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:32',
  'percy J',
  'that feeling',
  NULL,
  'cajun',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4t9V6UsTrQwtLJzxynPXHu',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:53',
  'henry butler',
  'riders on the storm',
  'the game has just begun',
  'cajun, zydeco, blues',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/4WyMwOsoBzVLPGhvm4sKiv',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '12:58',
  'Art Neville',
  'Cha Dookie Doo',
  'SPECIALTY 45',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:07',
  'Funk Monkey',
  'So Swell',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/1xlLRCanv5W7vVcGZrwoLe',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:12',
  'Bonerama',
  'Ohio',
  'so much love',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:18',
  'JOHN',
  'Hurricane',
  NULL,
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:31',
  'corey henry',
  'muddy waters',
  'lapeitah',
  'brass band',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/7FmNlTPZG8cm4asEql9tEF',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:52',
  'Walter Wolfman Washinton',
  'Blue Moon Risin''',
  'Blue Moon Risin''',
  '',
  'New Orleans Music Show',
  'Cole Williams',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '13:59',
  'lee dorsey',
  'holy cow',
  NULL,
  'northern soul',
  'New Orleans Music Show',
  'Cole Williams',
  'https://open.spotify.com/track/58smfvnOg9Wn7koHxsvJ8V',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:07',
  'SLIM',
  'IN THE MIX',
  NULL,
  'go-go',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1Na3VFYU3erIgl3JhpFiwO',
  'found',
  87.5,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:14',
  'AFRIKA BAMBAATAA',
  'SAY IT LOUD',
  'DECADES OF DARKNESS',
  'miami bass, old school hip hop, funk melody',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/5F7JjaY7hlVqkqwBiVXSKW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:19',
  'World Saxophone Quartet',
  'Bluocracy Part 1',
  'Political Blues',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:25',
  'Rahsaan Roland Kirk',
  'Blacknuss',
  'Does Your House Have Lions- The',
  'free jazz, hard bop, jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2Jrxzhhn8bisav40zymdVL',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:31',
  'JAMES BALDWIN',
  'INVENTORY/ON BEING 52',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:39',
  'WILLIAM PARKER QUARTET',
  'O''NEAL''S PORCH',
  'O''NEAL''S PORCH',
  'free jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1mz8cZjPGjkwLj4EazgKK3',
  'found',
  90.7,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:55',
  'JAMES CARTER',
  'NUAGES (CLOUDS)',
  'CHASIN'' THE GYPSY',
  'jazz, hard bop, jazz ballads',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2BMIOcIFmfp5YHvNTDnhah',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '22:56',
  'SONNY AND LINDA SHARROCK',
  'BLACK WOMAN',
  'BLACK WOMAN',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:08',
  'SONNY AND LINDA SHARROCK',
  'APOLLO',
  'PARADISE',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:08',
  'SONNY AND LINDA SHARROCK',
  'PEACEFUL',
  'PARADISE',
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:13',
  'SHIRLEY BASSEY',
  'LIGHT MY FIRE',
  NULL,
  'easy listening',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/3gBL7kYrPRLw12Mgon4vpW',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:18',
  'FAIROUZ',
  'BI LAYL WE CHITI',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:20',
  'FAIRUZ',
  'ZAHRAT AL JANOUB',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/1aY6HxEK0Kkhc0b5Jcnfwf',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:29',
  'TOM ZE',
  'VOICE INVENTE',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:30',
  'TOM ZE',
  'UI (VOCE INVENTA)',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:32',
  'TOM ZE',
  'UM E UM',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:34',
  'TOM ZE',
  'MENINA AMANHA DE MAMHA',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:37',
  'JORGE BEN',
  'POR CAUSA DE VOCE, MENINA',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/0ygiNW94gn3qPhYrijUiC2',
  'found',
  90.7,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:44',
  'HOLLY COLE',
  'ONION GIRL',
  NULL,
  'vocal jazz',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2eED5bs5upyzSbzHZFBTM1',
  'found',
  100,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:44',
  'JORGE BEN',
  'MEDLEY',
  NULL,
  '',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  NULL,
  'not_found',
  NULL,
  '2026-02-25 08:05:34'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-24',
  '23:54',
  'Susannah McCorkle',
  'The Waters of March',
  'Concord Jazz Sampler Vol.2',
  'vocal jazz, jazz, bossa nova',
  'The Freaknologist Lunatique Show',
  'David Kunian',
  'https://open.spotify.com/track/2HDdFE3LzgZ2ZWVXS0jEQF',
  'found',
  100,
  '2026-02-25 08:05:34'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-25';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
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
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:09',
  'Ted Nash, Steve Cardenas, Ben Allison',
  'Ida Lupino',
  'Healing Power: The Music of Carla Bley',
  'ambient jazz, jazz, big band',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5Yu4dE4pSmxj4toO386uCc',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:16',
  'Joshua Redman',
  'Borrowed Eyes',
  'Words Fall Short',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:21',
  'Anat Fort',
  'Mumbo Jumbo',
  'The Dreamworld of Paul Motian',
  'ambient jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5b4wA08eg4DvDac8TQQjLD',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:27',
  'Thelonious Monk',
  'Bluehawk',
  'Thelonious Monk Alone in San Francisco',
  'jazz, bebop, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/1K4d8wa5NanzH425a42DMn',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:30',
  'Abdullah Ibrahim',
  'Mississippi',
  'Mukashi',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2g2aNAhS4zQH8aXzz7Wz7n',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:37',
  'Wes Montgomery',
  'Just Walkin''',
  'Bumpin''',
  'jazz, hard bop, cool jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0CjskN9uilgo2ykSeajcdL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:41',
  'Chief Adjuah (Christian Scott)',
  'Isadora',
  'WWOZ on CD, Vol. 41: Tuned In',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:48',
  'Dave Liebman',
  'Moon and Sand',
  'Trust and Honesty',
  'free jazz, jazz, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5gtj2QHZ9XMtSptVDfhDGW',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '06:54',
  'Tommy Flanagan',
  'West Coast Blues',
  'Something Borrowed, Something Blue',
  'jazz, hard bop, jazz ballads',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5PCuMBiFhrK36wK6QZMph2',
  'found',
  89.8,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:00',
  'Ginger Baker',
  'Mountain Time',
  'Horses & Trees',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:04',
  'CHARLES MINGUS',
  'FABLES OF FAUBUS',
  'MINGUS AH UM CHARLES MINGUS',
  'jazz, hard bop, bebop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5RWzKLxXVzkJQ702yWfp1w',
  'found',
  98,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:13',
  'Tom Harrell',
  'Four the Moment',
  'Moving Picture',
  'jazz, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/4emzW9xDiDjxj0Es931vQr',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:19',
  'Chamber 3',
  'The Sparks',
  'Transatlantic',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0UkqQwzRdZn4N2WqX3V64j',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:25',
  'Marc Johnson & Eliiane Elias',
  'B Is for Butterfly',
  'Swept Away',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:29',
  'Danny Gatton',
  'Poinciana',
  'Hot Rod Guitar: The Danny Gatton Anthology',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:35',
  'Jane Ira Bloom',
  'Song Patrol',
  'Early Americans',
  'free jazz, jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0MdieeA1hEPf0MwgLVzGc6',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:38',
  'Bill Frisell',
  'Listen',
  'The Intercontinentals',
  'jazz, jazz fusion, free jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6bQnov5zdkxiWKh35THilJ',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:45',
  'John Zorn, George Lewis, Bill Frisell',
  'News for Lulu',
  'News for Lulu',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:50',
  'Eddie Harris',
  'Freedom Jazz Dance',
  'The In Sound',
  'soul jazz, jazz funk, hard bop',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0KciFkq67qqNrfmvbX1FCR',
  'found',
  98,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '07:59',
  'Maceo Parker',
  'Blues for Shorty Bill',
  'Southern Exposure',
  'jazz funk, funk, soul jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0ZwigTmCBUwtVEvjx8RjDd',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:04',
  'New Orleans Social Club feat. John Boutte',
  'Why',
  'Live at Jazz Fest, 2007',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:10',
  'Michael Wolff',
  'In My Life',
  'Sunny Day',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/0qktVoSI4D5XjBe3gJBuvC',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:14',
  'Martin Taylor',
  'My Funny Valentine',
  'Portraits',
  'french jazz, newgrass',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/2512svUPLf5QGeU9Aop6pb',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:20',
  'Jazz Sabbath',
  'Behind the Wall of Sleep',
  'Jazz Sabbath Live',
  'jazz, jazz fusion',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/3aosuOCbTCRKj98AmRiUCu',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:30',
  'Lisa Hilton',
  'Getaway',
  'Getaway',
  'jazz',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6mxNrCbQNO64yS8rClyfa7',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:34',
  'Harvey Mandel',
  'Senor Blues',
  'Harvey Mandel: Essential Guitar Masters',
  'blues rock',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/6IiClqQ3heJIuJl5f679lM',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:40',
  'Julian Lage',
  'Talking Drum',
  'Scenes from Above',
  '',
  'The Morning Set',
  'Breaux Bridges',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:45',
  'Astral Project',
  'Cowboy Bill',
  'The Legend of Cowboy Bill',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5DPtsrSZkNOR5j4PbJH0QB',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:52',
  'Leo Kottke',
  'A Child Should Be a Fish',
  'Ice Water',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/7qv9Jd4axVqRiwNHqKWHCB',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '08:56',
  'Allen Toussaint''s Jazzity Project',
  'Traffic',
  'Going Places',
  '',
  'The Morning Set',
  'Breaux Bridges',
  'https://open.spotify.com/track/5GskQ4hlFkBzNvpdX7XZE1',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:07',
  'FATS WALLER',
  'THIEF IN THE NIGHT',
  'THE COMPLETE FATS WALLER VOL III',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:09',
  'GLADYS BENTLEY',
  'RED BEANS AND RICE',
  'THE COMPLETE BLUES SESSIONS OF GLADYS BENTLEY ETC',
  'classic blues, blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/7dUyDmlnk1Qh4Gfcnvwhvu',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:22',
  'EDDIE LANG',
  'RAINBOW DREAMS',
  'EDDIE LANG 1927-32',
  'ragtime, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5zoY4qZQ6KnInZ7ofwnFrw',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:22',
  'MILLS BLUE RHYTHM BAND',
  'JAZZ COCKTAIL',
  'MILLS BLUE RHYTHM BAND RHYTHM SPASM',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0iQvdJ6smJlg9grGUhgLX4',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:23',
  'ETHEL WATERS',
  'GEORGIA BLUES',
  'ETHEL WATERS 1929-31',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5vvW2ve5g1q1VOwT3h7Kiy',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:25',
  'ADRIAN ROLLINI AND HIS ORCHESTRA',
  'TAP ROOM SWING',
  'SWING LOW',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:34',
  'SIDNEY BECHET',
  'WILD MAN BLUES',
  'SIDNEY BECHET MASTER MUSICIAN',
  'jazz, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1avicIA4wxyqVM6ieO127A',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:36',
  'FLETCHER HENDERSON AND HIS ORCHESTRA',
  'HOP OFF',
  'FLETCHER HENDERSON ON COLUMBIA VOL 3',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6gHerfTkZ02OKcZKBkQbm0',
  'found',
  91.6,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:37',
  'FRANKIE HALF PINT JAXON',
  'SPANK IT',
  'FRANKIE HALF PINT JAXON 1927-40',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0ll2LX8kKF40Hxpy0ElzCv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:50',
  'JOHNNY DODDS TRIO',
  'BLUE PIANO STOMP',
  'BLUE CLARINET STOMP',
  'ragtime, jazz, swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1jtEZInC3ItmHlDlYuPZrU',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:50',
  'VICTORIA SPIVEY',
  'FUNNY FEATHERS BLUES',
  'VICTORIA SPIVEY vol. 2',
  'classic blues, blues, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/4kE8VBAsywtqarHxAi3u4j',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '09:53',
  'HENRY ALLEN AND HIS NEW YORK ORCHETRA',
  'SWING OUT',
  'HENRY ALLEN AND HIS NEW YORK ORCHETRA 1929-30 VOLUME TWO',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:01',
  'REUBEN',
  'ZUDDAN',
  'CHICAGO IN THE 30''S',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:05',
  'EARL HINES AND HIS ORCHESTRA',
  'NUMBER 19',
  'THE FATHER JUMPS, EARL HINES AND HIS ORCHESTRA',
  'big band, swing music, ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0stLt6PLoDG8O73A8ZkaMD',
  'found',
  90.2,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:07',
  'ALPHONSE TRENT AND HIS ORCHESTRA',
  'I''VE FOUND A NEW BABY',
  'THE TERRITORY BANDS',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:17',
  'McKENZIE AND CONDON''S CHICAGOANS',
  'LIZA',
  'EDDIE CONDON 1927-38',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/36mq96wgfeBD4mQ0KGEUol',
  'found',
  78.2,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:19',
  'ETHEL WATERS',
  'SOMEDAY SWEETHEART',
  'ETHEL WATERS 1926-29',
  'ragtime, vocal jazz, classic blues',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/5uxvuBioXCqSYnXXmDTVeD',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:22',
  'BIX BEIDERBECKE',
  'WAY DOWN YONDER IN NEW ORLEANS',
  'BIX BEIDERBECKE VOLUME 1 SINGIN THE BLUES',
  'ragtime, big band, jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0kcYhUfAlMlvx6xiZg2CQa',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:31',
  'LOUIS DUMAINE AND HIS JAZZOLA EIGHT',
  'TO-WA-BAC-A-WA',
  'NEW ORLEANS IN THE 20''S',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:31',
  'NEW ORLEANS WILLIE JACKSON',
  'BAD BAD MAMA',
  'NEW ORLEANS WILLIE JACKSON 1926-28',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:34',
  'SAM MORGAN''S JAZZ BAND',
  'Sing On',
  'NEW ORLEANS WILLIE JACKSON ETC...',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/47r2oQIKM62sNR7rMm9Kv1',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:44',
  'LOUIS ARMSTRONG AND THE MILLS BROTHERS',
  'MY WALKING STICK',
  'LOUIS ARMSTRONG AND THE MILLS BROTHERS',
  'jazz, swing music, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/1cmFSOro9FogB7gZBmA2YG',
  'found',
  91.9,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:44',
  'THE CATS AND THE FIDDLE',
  'THURSDAY EVENING SWING',
  'KILLIN'' JIVE',
  'swing music',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3yOthLpRoQyFj35WgbFJLw',
  'found',
  88,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:47',
  'KING COLE TRIO',
  'HIT THAT JIVE JACK',
  'NAT KING COLE TRIO',
  'christmas, vocal jazz',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/3uP0c239ViiuuLasXAsEPL',
  'found',
  88,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:56',
  'HALFWAY HOUSE ORCHESTRA',
  'SNOOKUM',
  'HALFWAY HOUSE ORCHESTRA',
  'jazz house',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/6J16inOnTtSop3AFlxcMms',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:56',
  'JOHNNIE MILLER''S NEW ORLEANS FROLICKERS',
  'PANAMA',
  'new orleans stomp',
  '',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/0B4dXHVSfhWtWYsWOnWSeR',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '10:56',
  'PARENTI''S LIBERTY SYNCOPATORS',
  'MIDNIGHT PAPA',
  'MIDWAY DANDE ORCHESTRA AND PARENTI''S LIBERTY SYNCOPATORS',
  'ragtime',
  'Traditional Jazz',
  'Tom Saunders',
  'https://open.spotify.com/track/2jCqm6Jbdae2bzrsOfJogz',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
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
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:09',
  'James Booker',
  'Come Rain Or Come Shine',
  'A Taste Of Honey- Live In New Or',
  'boogie-woogie, cajun, ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/2uF9Yfwmiha58ehyxxDH1w',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:15',
  'John Rankin',
  'FRANKIE AND JOHNNY',
  'fess mess',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:19',
  'Pfister Sisters',
  'I Wish I`d Never Seen New Orlean',
  'New Orleans',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:23',
  'Professor Longhair',
  'Cry To Me',
  'Crawfish Fiesta',
  'cajun, zydeco, classic blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/33tlCHWbOyEz5h2B3f6SID',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:27',
  'The Iguanas',
  'Oye Isabel',
  'Live At Wolf Trap',
  'tejano, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5sw7lCJewstZOsizUzh3lZ',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:35',
  'Spencer Bohren',
  'Ring Them Bells',
  'Tempered Steel',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:41',
  'johnny adams',
  'i wonder where our love has gone',
  'one foot in the blues',
  'soul blues, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3ODqNM7CFPC3nSPTlVuRk4',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:54',
  'the tin men',
  'turn my lights back on',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:55',
  'Irma Thomas',
  'Early In The Morning',
  'Simply Grand',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0ouaambLAssCxBC7yEmevA',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '11:55',
  'danny barker',
  'get yourself a job girl',
  NULL,
  'ragtime',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4bu90LJli55M7iveTt4Xg7',
  'found',
  92,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:00',
  'Dr. John',
  'Mack The Knife',
  'Ske-Dat-De-Dat- The Spirit Of Sa',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:07',
  'john papa gros',
  'quitters never win',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:16',
  'Clarence Gatemouth Brown',
  'Swamp Ghost',
  'American Music, Texas Style',
  'blues, classic blues, modern blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3qNPf3xGO6FfBBvc6uBSja',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:23',
  'George Porter Jr. & Runnin'' Pard',
  'Tito''s Dumpling Machine',
  'Porter''s Pocket',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:29',
  'Dr. John',
  'Life`s A One Way Ticket',
  'N`Awlinz Dis, Dat Or D`udda',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0IIKwgbx4hCi3uYEeZ8Icv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:35',
  'little freddy king',
  'do she ever think of me',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:37',
  'Tab Benoit',
  'I Got Loaded',
  '2002 - Wetlands',
  'blues, cajun, modern blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/5QCzPYNwsFyMnU5MudD4pn',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:43',
  'steve conn',
  'the one and only truth',
  NULL,
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/0Svdv1B9D5pfnSmTRHuT54',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:47',
  'Beau Jocque',
  'Going To The Country',
  'Check It Out, Lock It In, Crank',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '12:57',
  'Nathan & The Zydeco Cha Chas',
  'Your Mama Don`t Know',
  'Your Mama Don`t Know',
  'zydeco, cajun',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3eggFAvoYTPXEgCLo8JjyT',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:01',
  'down in new orleans',
  'lil nathan and zydeco big timers',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:07',
  'Funk Monkey',
  'Break in The Road',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7jYKCBjzTH48S5LrDLltr5',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:11',
  'Jon Batiste',
  'We Are',
  'We Are',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7cx51c7voFYPh3MjkocCwD',
  'found',
  70.8,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:18',
  'bonerama',
  'Ride Your Pony',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:20',
  'Trombone Shorty',
  'Backatown',
  'Backatown',
  'brass band, jazz funk',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4ICmgorEOT19M7wdqYv2ti',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:29',
  'Ivan Neville`s Dumpsta Funk',
  'Meanwhile',
  'WWOZ CD #30- Dues Paid',
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:44',
  'toyesauce',
  'as good as it gets',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:45',
  'mike doussan',
  'I Believe',
  NULL,
  'roots rock',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/4Jfd03B9DGogjHtjfrXhas',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:48',
  'leigh harris',
  'down home girl',
  NULL,
  '',
  'New Orleans Music Show',
  'Missy Bowen',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:54',
  'marcia ball',
  'mama''s cooking',
  NULL,
  'zydeco, cajun, blues',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/7dZk0jyZQe3YETYX2Rev0I',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '13:56',
  'Irma Thomas',
  'River Is Waiting',
  '50th Anniversary Celebration',
  'classic soul',
  'New Orleans Music Show',
  'Missy Bowen',
  'https://open.spotify.com/track/3Kk84LxHJbomDcM3NN41eP',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:02',
  'hound dog taylor',
  'Rock Me',
  'beware of the hound',
  'classic blues, blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5mwfmN8lnJDM56QUReNCi0',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:03',
  'lazy lester',
  'I Hear You Knocking',
  'i hear you knockin',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/4QhIUtkgUda6EX3ERME49c',
  'found',
  72.6,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:04',
  'john lee hooker',
  'she shot me down',
  'big soul of john lee hooker',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6sQLXdi8Jv6JNhrOI5f5BE',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:07',
  'buddy guy',
  'boogie family style',
  'breaking out',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6O0bez24yXEk8v6OlWiEjN',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:09',
  'jelly roll kings',
  'i didn''t know',
  'rocking the juke joint down',
  'blues, footwork, modern blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/3SoeWGX9UoumvXIkPpeL0j',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:11',
  'albert king',
  'cadillac assembly line',
  'best of',
  'blues, classic blues, blues rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5gScIkPauKuBnNRHx8Srnk',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:23',
  'lil poochie and hezekiah early',
  'i got my eyes on you',
  'natchez burning',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:26',
  'blind willie mctell',
  'broke down engine blues',
  'rough guide to blind willie mctell',
  'blues, country blues, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/3pv4AWo4JMFi00CrvOfbOo',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:33',
  'jerry mccain',
  'she''s tough',
  'she''s tough',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6E1J2FgYZZWG4lKXPON4jv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:35',
  't-model ford',
  'nobody gets me down',
  'pee wee get my gun',
  'blues, modern blues, footwork',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0Cak0ZnnZcQBZaWGtvq6Cg',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:36',
  'clifton chenier',
  'i may be wrong',
  'bogalusa boogie',
  'zydeco, cajun',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/6OIz9hrUQGeOeqJSMgq3CX',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:46',
  'fleetwood mac',
  'shake your money maker',
  'peter green''s fleetwood mac',
  'classic rock, yacht rock, soft rock',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/2mfhygiEDr8zKKTDW8mxcI',
  'found',
  85.4,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:46',
  'willie williams',
  'wine headed woman',
  'bea and nbaby records vol 3',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/5YI2VohIHawpJg3RL8zAry',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '14:52',
  'MABEL FRANKLIN',
  'LET''S DO THE WIGGLE',
  'STOMPIN'' 2',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:03',
  'washboard chaz blues trio',
  '1st shot got him',
  'mix it up',
  'zydeco',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/0kTgPsgM72mLs6i9qrTSPK',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:06',
  'tbone walker',
  'cold cold feeling',
  'imperial recordings',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:07',
  'Johnny Sketch & The Dirty Notes',
  'The Getaway',
  'The Big Awesome',
  'cajun, brass band',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7wcRGPAL9B6UGjJIUVZ5Gt',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:10',
  'drink small',
  'bowlegged woman',
  'i know my blues are different because they are mine',
  'soul blues, blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/2Q6p8STYOem6PabCnOfGlI',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:18',
  'dr. john',
  'how come my dog don''t bark',
  NULL,
  'cajun, zydeco',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/180AIwUcBxCWRiWsPLTkyJ',
  'found',
  90.9,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:19',
  'george smith',
  'oopin doopin oopin',
  'little george smith rpm collection',
  'blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/7BSoyGvAvpHClPZc0McHxo',
  'found',
  84.4,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:20',
  'boy blue',
  'joe lees rock',
  'wolf pack',
  '',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1OnGeXiSbWeUNH6HHsZY99',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:36',
  'brownie mcghee & sonny terry',
  'dark road',
  'sonny terry & brownie mcghee',
  'blues, country blues, classic blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/15sCODWaJgDYm020YWb6gm',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '15:56',
  'lightning hopkins',
  'shake that thing',
  'mojo anthology',
  'blues, classic blues, country blues',
  'Sittin'' at the Crossroad',
  'Big D',
  'https://open.spotify.com/track/1uBEqAVuK19wdnswrerWcF',
  'found',
  72,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:20',
  'los hombres calientes',
  'vodou love call',
  'vol.4:vodou dance',
  'latin jazz, brass band, cajun',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5tbhua2de8oTXMdJodTgze',
  'found',
  71.3,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:21',
  'ray charles',
  'living for the city',
  NULL,
  'soul, soul blues, blues',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6kdwt29QgPNO3lai10CIQL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:28',
  'ellis marsalis',
  'tell me',
  'the ellis marsalis quintet plays the music of ellis marsalis',
  'jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/25T1EwK8yC1yMSjKeZWAqg',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:33',
  'stevie wonder',
  'front line',
  'original musiquarium I',
  'motown, classic soul, soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6CEht6j01t69htAdZRoZhG',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:41',
  'joshua redman',
  'faith',
  'moodswing',
  'jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/6N63X82T4RLjqHiS2FLSw2',
  'found',
  83.4,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:48',
  'poncho sanchez and terence blanchard',
  'chano pozo medley',
  'poncho sanchez and terence blanchard=chano y dizzy',
  'latin jazz, afro-cuban jazz, cha cha cha',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2a0YvbHAxIf9Y3Go9MzPju',
  'found',
  70.8,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '16:55',
  'john coltrane',
  'mr.pc',
  'giant steps',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3SGRfpQKvK8RRLzH3Wk0Uz',
  'found',
  79,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:03',
  'donny hathaway',
  'someday we''ll all be free',
  'extensions of a man',
  'soul, classic soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0iJP3XxZNE8tP7YnB23J1r',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:17',
  'the jazz crusaders',
  'freedom sound',
  'freedom sound',
  'hard bop, soul jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0RCl5heVm78hSWeyeOpAno',
  'found',
  98,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:29',
  'isley brothers',
  'when will there be a harvest for the world?',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:32',
  'sam cooke',
  'a change is gonna come',
  NULL,
  'motown, soul, classic soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0YfOnJWqmAKaUvEL1QcNop',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:33',
  'billy harper',
  'light within',
  'somalia',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '17:52',
  'hank mobley',
  'no room for squares',
  'no room for squares',
  'hard bop, jazz, bebop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/1Z2O6rjA0wSRpI4h16phvL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:14',
  'sounds of blackness',
  'living the blues',
  'africa to america:the journey of the drum',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:18',
  'the chambers brothers',
  'people get ready',
  'the time has come',
  'acid rock, psychedelic rock',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/3mZUL74cVPvMDTOvli0Kmu',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:20',
  'don pullen',
  'reservation blues',
  'sacred common ground',
  'free jazz, avant-garde, hard bop',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/0AbaxwRaZuldmsTjnGJ4jA',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:21',
  'nina simone',
  ',i wish i knew how it would feel to be free',
  NULL,
  'vocal jazz, soul jazz, soul',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/5CKHhg31HcYYhwUeeGqvhq',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:35',
  'gil scott-heron',
  'who''ll pay reparations to my soul',
  NULL,
  'spoken word, jazz funk',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/2FCx7CtCJ5f47EZrQz12NS',
  'found',
  93,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:43',
  'chi-lites',
  'more power to the people',
  NULL,
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:45',
  'quianna lynell',
  'sing out,march on',
  'a little love',
  '',
  'Jazz from Jax Brewery',
  'Al Colón',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:46',
  'max roach',
  'members don''t git weary',
  'members don''t git weary',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/4TqvzHm7fZE2ZmhSwl0tY3',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '18:57',
  'charles jenkins',
  'i will live',
  'the best of both worlds',
  'gospel, worship, traditional gospel',
  'Jazz from Jax Brewery',
  'Al Colón',
  'https://open.spotify.com/track/26RjdSniupy13wQf1QzCRX',
  'found',
  73.7,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '19:04',
  'Lloyd Lambert',
  'Hop & Jump',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '21:58',
  'Dave Bartholomew',
  'Jax Beer Boogie',
  NULL,
  '',
  'R& B Oldies',
  'Rare On The Air',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
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
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:00',
  'Soul Creole',
  'Trois rangs dub',
  'Single',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7fXLuuwv8fVJSVUNzrUl8W',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:02',
  'Professor Longhair',
  'Go To The Mardi Gras',
  'Mardi Gras In New Orleans',
  'cajun, zydeco, classic blues',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1O0nWcqmCj32qmFmiu3nGL',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:05',
  'Hiatus Kaiyote',
  'Get Sun',
  'Mood Valiant',
  'neo soul, indie soul, alternative r&b',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4WdUMgVMYdn1xeu3X2z9Ai',
  'found',
  75.1,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:09',
  'Caddywhompus',
  'Company',
  'Feathering A Nest',
  'math rock, noise rock, indie jazz',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6VU1SG5Tkmf1iiWjBWf8Ti',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:12',
  'The Flaming Lips',
  'When You Smile',
  'Clouds Taste Metallic',
  'neo-psychedelic',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3hUSHfPpDPCGL6evUbIEYt',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:17',
  'Pope',
  'Newboi',
  'BFM',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/3rGufZBCoohiFBS3HHEI6R',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:24',
  'Pope',
  'Make You Feel',
  'BFM',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:33',
  'Pope',
  'Ocean Song',
  'Supersonic',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1d4BtAH6KUx7Rss1JednNz',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:38',
  'Julie Odell',
  'Caterpillar',
  'Autumn Eve',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0hXfaaPKEVCsteJCkBD7ud',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:44',
  'Tyler Childers',
  'Whitehouse Road',
  'Live On Red Barn Radio I & II',
  'country, outlaw country, red dirt',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0fbR95FEaJUxiQYaqZZukv',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:49',
  'Kneecap',
  'Liar''s Tale',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:53',
  'Big Sis and Reggie Watts',
  'Switchplans',
  'Nue Griz',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '22:55',
  'King Louie',
  'Jesus Loves My One Man Band',
  'One Man Band',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:01',
  'Musical Youth',
  'Pass The Dutchie',
  NULL,
  'reggae',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1BkY0N8ChFk2mdLbAUu8ZK',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:03',
  'Tom Waits',
  'Set Right Up',
  'Small Change',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:08',
  'Clifton Chenier',
  'Clifton''s Blues',
  'King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0wSydZ8PboFsSq8vn3YtGH',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:08',
  'Clifton Chenier',
  'Louisana Stomp',
  'King of Louisiana Blues and Zydeco',
  'zydeco, cajun',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/4qHrFhR0HCsZSP2MxjCsF4',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:14',
  'Dr. John',
  'Bon Temps Rouler',
  'Tango Palace',
  'cajun, zydeco',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/7FPVGBK71BREOVljmy1DFV',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:18',
  'Johnny Mastro and Mama''s Boys',
  'Little Freddy Is King',
  'Elmore James For President',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:21',
  'Greazy Alice',
  'Just Another One',
  'As Time Goes By',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/0G6UcQICO9sXR7tDojtAIN',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:26',
  'Sick Thoughts',
  'Me and My Guitar',
  'Another Piece of Plastic',
  'egg punk, punk',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/6f5uiZfiyn2kVs2runFwm3',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:29',
  'Missing Monuments',
  'Super Hero',
  'Missing Monuments',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:32',
  'Quintron',
  'Mouth Of Harahan - The Ballad of King Louie Bankston',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:37',
  'Quintron and Miss Pussycat',
  'Rotten Egg',
  'Chrystal Crunchy',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:42',
  'R. Scully',
  'Fentanyl Folk',
  'What Should I Wear',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:46',
  'Morning 40 Federation',
  'Old Man',
  NULL,
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:50',
  'Morning 40 Federation',
  'St. Ferdinand',
  'Single',
  '',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  NULL,
  'not_found',
  NULL,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:54',
  'Brian Stoltz',
  'Bow Down On Sunday',
  'New World Rising',
  'modern blues',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/2M9y9u4PrUPyknKeDgKr56',
  'found',
  84.5,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-25',
  '23:58',
  'King Lee, Quintron',
  'Tire Shop',
  'Tire Shop',
  'gqom, ndombolo, afro tech',
  'Kitchen Sink',
  'A.J. Rodrigue and A.A.',
  'https://open.spotify.com/track/1xnAgZXcKZrLQK5LvvSlJn',
  'found',
  98,
  '2026-02-26 07:22:38'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-26';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '00:23',
  'Allay Earhart',
  'Fema',
  '2005',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/0dpMxB6OjIqzv5cMbfiGxH',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '00:32',
  'Ray $av',
  'VICTIM',
  'Short for $avage',
  '',
  'Draw Fo',
  'Slangston Hughes & Thelonious Kryptonite',
  'https://open.spotify.com/track/1KeQqfVNxpUeecR17gcNmS',
  'found',
  100,
  '2026-02-26 07:22:38'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:05',
  'Kelan Phil Cochran & Legacy',
  'White Nile',
  'African Skies',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:16',
  'The Stan Tracy Quartet',
  'Starless and Bible Black',
  'Under Milk Wood: Jazz Suite',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:19',
  'Michael White',
  'The Blessing Song',
  'Pneuma',
  'free jazz, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1tO5IV6beNuuSTAVVZuI0N',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:26',
  'Nat Birchall',
  'Mysticism Of Sound',
  'Mysticism Of Sound',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:34',
  'John Coltrane',
  'Ole',
  'Ole Coltrane',
  'jazz, hard bop, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5T2Cft0v1qKSmH0GUDzB2b',
  'found',
  98,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '06:53',
  'George Russell',
  'The Outer View',
  'The Outer View',
  'free jazz, hard bop, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/1dOQayg44ijE1IREXjZGFL',
  'found',
  80.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:06',
  'Jeff Albert/ Ben Lamar Gay/ Matt Lux/ Quin Kirchner',
  'Brain Dance',
  'Live At The Hungry Brain',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:15',
  'Jacob Fred Jazz Odyssey',
  'Grub Ridge Stomp',
  'Telluride Is Acoustic',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:22',
  'Matt Lux Communication Arts Quartet',
  'Israels',
  'Astral Spirits Sampler',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:41',
  'Messthetics w/ James Brandon Lewis',
  '30 Years of Knowing',
  'Deface The Currency',
  'jazz funk, experimental jazz, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/4dbeqJtqE2Vcdo8LLVsXlb',
  'found',
  86,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:42',
  'Lester Bowie''s Brass Fantasy',
  'The Emperor',
  'Avant Pop',
  'free jazz, experimental jazz, brass band',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0RDNQnjcMcmvEYVSEREqkE',
  'found',
  98,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:49',
  'Bobby Hutcherson',
  'NTU',
  'Linger Lane',
  'hard bop, jazz, free jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0Xxl87QnsMfyKl9Lv0B0AN',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '07:57',
  'OkoNski',
  'October',
  'Entrance Music',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/2H5IEbMZnikxlbHki7m3Su',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:03',
  'SML',
  'Taking out the Trash',
  'Taking out the Trash',
  'ambient jazz, indie jazz, experimental jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/3le7tV5MtNCVpBQ1e2ubSD',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:08',
  'Snarky Puppy',
  'Flight',
  'Sylva',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:15',
  'Stereolab',
  'Flashes In The Afternoon',
  'Cloud Land/ Flashes In The Afternoon',
  'art pop, krautrock, post-rock',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/7gPnOSaYRgpoSkAAIQWix9',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:21',
  'Gary Bartz Ntu Troop',
  'Celestial Blues',
  'Harlem Bush Music',
  'jazz funk',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0YEZzOR61QvNc6w8SUFLcg',
  'found',
  98,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:32',
  'Kronos Quartet, Laurie Anderson, Sexmob',
  'Images Suite',
  'Outer Spaceways Incorporated',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:41',
  'Kronos Quartet & Armand Hammer',
  'Blood Running High',
  'Outer Spaceways Incorporated',
  'footwork, experimental hip hop, alternative hip hop',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/5p9z9NvWJ45JzNvJpGLOhg',
  'found',
  73.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:46',
  'Russell Gunn',
  'Love Requiem',
  'Love Stories',
  '',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/0wrtAd5p9VYC7HxBxblDwc',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:51',
  'Noah Young',
  'Nightcrawlers',
  'Noah',
  '',
  'The Morning Set',
  'Scott Borne',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '08:54',
  'Takuya Kuroda',
  'Zigzagger',
  'Zigzagger',
  'indie jazz, nu jazz, jazz',
  'The Morning Set',
  'Scott Borne',
  'https://open.spotify.com/track/59mO0z3XsMmdIWBA8WHTKP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:04',
  'Kermit Ruffins',
  'Good Morning New Orleans',
  NULL,
  'brass band, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/09LHgBX7qtVQtFsZufi6vx',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:06',
  'David & Roselyn',
  'Sweet Georgia Brown',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:10',
  'Catherine Russell',
  'Going Back To New Orleans',
  'Send For Me',
  'vocal jazz, swing music, jazz',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2OVoxN3zfOw57Tg2djnIWX',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:23',
  'Don Vappie',
  'Port Bayou St. John',
  'Blue Book Of Storyville',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:23',
  'New Orleans Joy Makers',
  'What''s The Use',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:28',
  'Chris Barber''s Jazz Band',
  'EllingtoniaDoubleCheckStompStevedoreStomp...',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:33',
  'New Orleans Nightcrawlers',
  'Ursuline Second Line',
  'Atmosphere',
  'brass band, cajun, zydeco',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/2mcndFr75L1DX3wRulX5gi',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:39',
  'Lucien Barbarin',
  'Tishimingo Blues',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:47',
  'Leroy Jones',
  'Baby Won''t You Please Come Home',
  NULL,
  'brass band, ragtime',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3k4NiKfh6Lij2jJUIrjzvn',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:54',
  'Lars Edegran',
  'Aquellos Ojos Verde(Green Eyes)',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '09:54',
  'Mark Braud',
  'Dwight Braud Blues',
  'Hot Sausage Rag',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:02',
  'Wendell Eugene',
  'I Can''t Give You Anything But Love',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:05',
  'Bob French''s Original Tuxedo Jazz Band',
  'You''ve Got The Right Key But The Wrong Key Hole',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:11',
  'Sweet Emma',
  'Fidgety Feet',
  NULL,
  'ragtime, zydeco, cajun',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/5VblXaA0uBaDsihoASC1kx',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:23',
  'George Lewis',
  'Should I',
  NULL,
  'ragtime, free jazz, boogie-woogie',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/1I9iQvDhnW3BizU0J9Ctk0',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:23',
  'Mari Watanabe',
  'Old Rockin Chair',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:30',
  'Gerald French & the original tuxedo jazz band',
  'muskrat ramble',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/3MIoKjjjlOHCadQm9GfhcN',
  'found',
  94.7,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:35',
  'Wycliffe Gordon',
  'Up A Lazy River',
  'Hello Pops!',
  'christian jazz, jazz, big band',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/7DNZHxrQIvjLAmqCrDtkA1',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:39',
  'Ronell Johnson',
  'That''s A Plenty',
  'That Gentilly Swing',
  '',
  'Traditional Jazz',
  'Sally Young',
  'https://open.spotify.com/track/0o6nqIknxFnEtj5aivXhRC',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:45',
  'Danny Barker',
  'Can''t We Be Friends',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:48',
  'Mark Brooks',
  'How Come You Do Me Like You Do',
  'My Little Margie',
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '10:52',
  'Thais Clark & Her Pam Court Serenaders',
  'Bye And Bye',
  NULL,
  '',
  'Traditional Jazz',
  'Sally Young',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:03',
  'CHARLES BROWN',
  'HONEYDRIPPER',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:09',
  'ROOSEVELT SYKES',
  'BLUES BASS',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3tluCX0MxOnFBoY6To59dH',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:09',
  'ROOSEVELT SYKES',
  'ON THE SUNNY SIDE OF THE STREET',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0msnNzDUtHTQh8ODySgalP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:12',
  'ROOSEVELT SYKES',
  'HANGOVER',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4eLOvMKyA4tPO76yeEyijY',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:16',
  'ROOSEVELT SYKES',
  'LONG LONESOME NIGHT',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5q4NXRSTa4fdSWh6cBqGNv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:20',
  'ROOSEVELT SYKES',
  'COMING HOME',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7uNSzL5kLXZKbzHTr7RLhm',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:24',
  'ROOSEVELT SYKES',
  'TOY PIANO BLUES',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1S7IHsM30zwDRSKujXCu8U',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:27',
  'ROOSEVELT SYKES',
  'GREEN ONION TOP',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0YIs4Yqs5BgtNzvCu6J64m',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:32',
  'ROOSEVELT SYKES',
  'SUGAR CUP',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4zUcBV3eiOvzPWLZc7LTuM',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:34',
  'ROOSEVELT SYKES',
  'HOT NUTS',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7lpSMyGby40MsT13JiHtua',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:36',
  'ROOSEVELT SYKES',
  'DRIVING WHEEL',
  NULL,
  'blues, classic blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/60hRi6ZwEKTQ5O9vt8br3s',
  'found',
  88.1,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:52',
  'ANNA MOSS',
  'SLOW DOWN KAMIKAZE',
  'AMNESTY',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0rxpCQEElJCw1jNIIHOglp',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '11:53',
  'JEFF BROUSSARD AND THE NIGHTIME SYNDICATE',
  'HELLO BABY',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:02',
  'PERCY SLEDGE',
  'TAKE TIME TO KNOW HER',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5UgzlDrLBJj9qIjSXdU0Yj',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:02',
  'PERCY SLEDGE',
  'TELL IT LIKE IT IS',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2ClfhEMRWE7LrEwsDIYoXe',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:03',
  'PERCY SLEDGE',
  'YOU DON''T MISS THE WATER',
  NULL,
  'motown, classic soul, soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0NJ4pEnvusFpnJDYzpfoLW',
  'found',
  91.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:08',
  'ROUGH SEVEN',
  'ST. ANTHONY',
  'GIVE UP YOUR DREAMS',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:11',
  'WILLIE TEE',
  'THANK YOU, JOHN',
  NULL,
  'northern soul, cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0BoqOgRYha5xpzy70w7LqQ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:13',
  'WYNTON MARSALIS JAZZ AT LINCOLN CENTER ORCHESTRA',
  'PARKER''S MOOD',
  NULL,
  'latin jazz, big band, jazz',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4PkRPGYwJNnoGD2jz84hi1',
  'found',
  84.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:23',
  'IRMA THOMAS',
  'I NEED YOUR LOVE SO BAD',
  NULL,
  'classic soul',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2ykaQGOB0YE3oF4S5J4E6Q',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:24',
  'JULIE ODELL',
  'APOCAPOLYPSE MAKE OUT TAPE',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:36',
  'Rory Danger And The Danger Dange',
  'Cat Man',
  'The Age of Exploration',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/5lP2lKagYsynChsyHyyV01',
  'found',
  84.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:46',
  'FATS DOMINO',
  'BLUE MONDAY',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7iwQPvyViIkyT0HWnatjnk',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:46',
  'FATS DOMINO',
  'JAMBALAYA',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/6liVZNPddEzxAycwFUYISS',
  'found',
  81.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:46',
  'FATS DOMINO',
  'LET THE FOUR WINDS BLOW',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/1Hw3FmSlDwqhvtNSukbZKB',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:49',
  'ELVIS COSTELLO WITH EARL PALMER',
  'GLITTER GULCH',
  'KING OF AMERICA',
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:52',
  'Dash Rip Rock - PAIN PILLS NEVER',
  'Pain Pills Never Expire',
  'A Song In Everyone',
  'psychobilly, roots rock, rockabilly',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/73t9XvBGcHKDMVxRyUc2cK',
  'found',
  74.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:57',
  'CHAMPION JACK DUPREE',
  'PUFF PUFF',
  NULL,
  'classic blues, blues, boogie-woogie',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2cIYj9AgvEokyatdXzEaCE',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '12:59',
  'DOUG AND RUSTY KERSHAW',
  'DIGGY LIGGY LO',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:02',
  'DR. JOHN',
  'THE FLAMING SWORD',
  'DUKE ELEGANT',
  'cajun, zydeco',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/4xQ1qAjMULTcrUyneSoTFY',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:08',
  'THE DESLONDES',
  'LESS HONKIN'' MORE TONKIN''',
  NULL,
  'americana, alt country',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3w9e0SmPhSv1J19LzOeNUD',
  'found',
  72.6,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:16',
  'DESLONDES',
  'THIS IS NOT A SAD SONG',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:27',
  'Sweet Crude',
  'Mon Esprit',
  'Creatures',
  'cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7p02T2V97WFFSOf7mV3ZZH',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:39',
  'Sweet Crude',
  'Jolie Blonde',
  'Jolie Blonde',
  'cajun',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/0pCENOA4tG52xd8rBxLIki',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:48',
  'DESLONDES',
  'FIVE YEAR PLAN',
  NULL,
  'americana, alt country',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/7cxNEDmtZhl2uB4RseZYXi',
  'found',
  73,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:48',
  'DOC CHEATHAM',
  'NEW ORLEANS',
  NULL,
  'jazz, ragtime',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/3cK9XupQv1EWKPVMMcQxqd',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:48',
  'PAUL BARBARIN WITH DANNHY BARKER',
  'EH LAH BAS',
  NULL,
  '',
  'New Orleans Music Show',
  'Michael Dominici',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '13:55',
  'Bobby Rush',
  'Porcupine Meat',
  'Porcupine Meat',
  'blues, soul blues, classic blues',
  'New Orleans Music Show',
  'Michael Dominici',
  'https://open.spotify.com/track/2eV3zI9y4gKAzh2ZwzRWLX',
  'found',
  70,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
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
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:03',
  'BARRY WHITE',
  'IT''S ECSTACY WHEN YOU LAY DOWN NEXT TO ME',
  'ALL TIME GREATEST HITS',
  'disco, soul, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3QXNBUYJX2aekx6mHQ14GZ',
  'found',
  94.9,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:05',
  'Johnny Guitar Watson',
  'Superman Lover',
  'The Funk Anthology (CD01)',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4uSkp9MFh5VWMvmk6kz91a',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:11',
  'Lenny Williams',
  'She Took My Drawers',
  NULL,
  'quiet storm, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/01HZhFg6vDfSnW6oI9o5Rr',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:14',
  'FRANK MCMOMB',
  'GOTTA FIND A WAY',
  'LOVE STORIES',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:19',
  'Earth, Wind And Fire',
  'Getaway',
  'Spirit',
  'funk, disco',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/67J6NR2Tdl0h2epWHcCBBN',
  'found',
  89.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:25',
  'Betty Wright',
  'Baby Sitter',
  'The Platinum Collection',
  'classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/7GgOJVfchlSVLm1iQIDOt9',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:25',
  'HONEY CONE',
  'WANT ADS',
  'SWEET REPLIES',
  'northern soul, classic soul, motown',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/76lrpneaFuAxiMAbnNc6Hu',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:28',
  'EJ JONES',
  'GAS STATION LOVE',
  'SINGLE',
  '',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/05u9J0N4u9dduKObvvYzFI',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:32',
  'KING GEORGE',
  'FRIDAY NIGHT',
  'SINGLE',
  'zydeco, footwork, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/1Ynv5ahQNdRRgDGcMVa3Y6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:36',
  'Freddie King',
  'Big Legged Woman',
  'The Shelter Records Years',
  'blues, classic blues, blues rock',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/37RtOpFMu0i0wzjtK7c1bn',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:42',
  'LATIMORE',
  'QUALIFIED MAN',
  'STRAITEN IT OUT',
  'blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5bCrFgw4doVSYLQpoJdR4x',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:46',
  'Bobby Blue Bland',
  'Members Only',
  'Members Only',
  'blues, classic blues, soul blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4wvKPOCiOlZh6xwwympC8c',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:50',
  'POKEY BEAR',
  'BUMP BUMP BUMP',
  'SINGLE',
  'zydeco, blues, footwork',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3j8WBBgh0ktSKSdBo2vVPL',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '14:55',
  'ARETHA FRANKLIN',
  'JUMP TO IT',
  'JUMP TO IT',
  'soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3MWoJGrKXOTlEBIZzDoZkx',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:00',
  'Chuck Carbo',
  'Drawers Trouble',
  'Drawers Trouble',
  'doo-wop',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2urKyk4uUq4AhFLit7jVn0',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:10',
  'Marvin Gaye',
  'I Want You (Vocal)',
  'Great Songs and Performances [19',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:19',
  'Betty Wright',
  'Let Me Be Your Lovemaker',
  'The Platinum Collection',
  'classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5lWRWrkDnxWU2WXdXrCaJ4',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:19',
  'GLADYS KNIGHT',
  'LOVE OVERBOARD',
  'ALL OUR LOVE',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/2dykYf0mZG217bYkiREKEh',
  'found',
  76.4,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:24',
  'FUNKADELIC',
  'KNEE DEEP',
  'SINGLE',
  '',
  'Blues',
  'DJ Giant',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:29',
  'SHIRLEY BROWN',
  'WOMAN TO WOMAN',
  NULL,
  'classic soul, soul, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/4vrOAcjaNkGkV2ZswUZHC1',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:32',
  'Rufus Thomas',
  'The Breakdown (Part 1)',
  'Funkiest Man Alive- The Stax Fun',
  'classic soul, soul, northern soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3JsG5lLvDChBIDQjTwsy96',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:35',
  'SOLO',
  'Heaven',
  'SOLO',
  'new jack swing',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5Xv3eesPSCo1YVdU2RePWe',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:39',
  'Etta James',
  'Born Under A Bad Sign',
  'Life, Love & The Blues',
  'soul, soul blues, blues',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/6lbGZSI5ptoB8JXn0wtBC2',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:42',
  'Jon Cleary',
  'Help Me Somebody',
  'Mo Hippa',
  'cajun, jazz funk',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/3h9Cb73AmkpayL5goQoWFS',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:52',
  'Stevie Wonder',
  'You`ve Got It Bad Girl',
  'Talking Book',
  'motown, classic soul, soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/57OXk0inzVWWphdygquXIy',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '15:59',
  'THE SPINNERS',
  'COULD IT BE I''M FALLING IN LOVE',
  'THE VERY BEST OF THE SPINNERS',
  'philly soul, motown, classic soul',
  'Blues',
  'DJ Giant',
  'https://open.spotify.com/track/5i0urffBRKl09GSX2Jhdeh',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '16:46',
  'Ellis Marsalis',
  'Swinging At The Haven',
  'The Classic Ellis Marsalis',
  'jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0DBIYyONtffnfzghtKeOV6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:26',
  'Donald Harrison Jr',
  'The Art Of Passion',
  'The Art Of Passion',
  'brass band, cajun, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4swXwaUKGuuui36qOethwU',
  'found',
  72.6,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:28',
  'Kurt Ellings',
  'tHEY sPEAK No Evil',
  'In The Brass Palace',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:29',
  'James Brown',
  'Sunny',
  'Gettin'' Down To It',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:29',
  'Lonnie Listen Smith',
  'A Garden Of Peace 2025',
  'A Garden Of Peace 2025',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:32',
  'Maerice Brown',
  'Shine',
  'Shine',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:58',
  'Stanley Turrentine',
  'caravan',
  'If I Could',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:59',
  'Audrey LeCrone',
  'Hot Nuts',
  'single',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4xfJJxQPTZgE3hmaaGbltM',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '17:59',
  'Roy Hargrove',
  'Strasbourg/St. Denis',
  'Earfood',
  'jazz, jazz ballads, latin jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/62VWmsNoDmqT0Mj9oHHFVh',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:00',
  'Adonis Rose',
  'Smooth Jazz',
  'The Unity',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:10',
  'Sonny Criss',
  'Out Of Nowhere',
  'Out Of Nowhere',
  'hard bop, bebop, jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/61rcyizfBhKoQtZclQhDFw',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:11',
  'John Dokes',
  'I Will Wait For You',
  'Our Day',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0AGbc98gCsyVHJfjDq91eU',
  'found',
  72.6,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:13',
  'Benny Golson',
  'whisper not',
  'whisper not',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4MQnsFi22wHTzOzod8iYDb',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:17',
  'john coltrane',
  'naima',
  'giant steps',
  'jazz, hard bop, free jazz',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/4jvCXYZwM8pR1p0vvK7PtW',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:30',
  'Dexter Gorden',
  'Three O''Clock In the Morning',
  'Classic Bluenote Recordings',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:39',
  'Eddie Harris',
  'Listen Here',
  'The Electrifying Eddie Harris',
  'soul jazz, jazz funk, hard bop',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/54cxEkH90CHuDMe3dfiWOl',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:40',
  'Oliver Nelson',
  'Blues For Mr. Broardway',
  'More Blues And The Abstract Truth',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:52',
  'Ben E. King',
  'Besame Mucho',
  'Spanish Harlem',
  '',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/28NtAT1qy1k4Z0Lfe3shxZ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '18:53',
  'Wayne Shorter',
  'Black Nile',
  'Night Dreamer',
  'hard bop, jazz, jazz ballads',
  'Jazz from Jax Brewery',
  'Keith Hill',
  'https://open.spotify.com/track/0Dfpbbbwi2MW7o6fGPJnNr',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
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
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:05',
  'fats domino',
  'when the saints go marching in',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0KmbPjTHwZV7lmIwhBeXmV',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:07',
  'johnny guitar watson',
  'cold, cold heart.,',
  NULL,
  'blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5nIEwtPimAJW4byrPkxxw6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:09',
  'memphis minnie and kansas joe',
  'when the levee breaks',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0MOqj6Xt2xJ1L0hkRX1hns',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:13',
  'johnny cash',
  'me and bobby mcgee',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6VDrf0mwqJmGBtn11bWBAM',
  'found',
  74.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:16',
  'i saac hayes',
  'randolph and dearborn',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:19',
  'fats domino',
  'helping hand.',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/21SJiWZAQXVC1JK4KOpDGC',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:22',
  'wilson pickett',
  'teardrops will fall',
  NULL,
  'motown, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1ca3x8sBSYonA9V5rUVAVO',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:24',
  'lee dorsey',
  'work, work, work',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3MpqJujoIWtwENKzyLZveP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:27',
  'johnny cash',
  'satisfied mind',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4i5U0edk7EZFrgbrV5CiZ6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:30',
  'isaac hayes',
  'the red rooster',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/65BsUMwfZiEYMUgzgv1a2Z',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:34',
  'fats domino',
  'trouble in mind...',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6lBgS6zFG9SwtsFG0Og1uV',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:36',
  'nina simone',
  'gin house blues',
  NULL,
  'vocal jazz, soul jazz, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3fvYHuKuvcjBMKTFaVnyGt',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:38',
  'big amos patton',
  'going to vietnam',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5jMHCboQZZPHbps3LhYX73',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:42',
  'isaac hayes',
  'joe bell',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3T5GJhkEZ2dxVEhzVZRAMR',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:42',
  'johnny cash',
  'what is man',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6XkYXfLUaNAKquAHfVdk5a',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:48',
  'fats domino',
  'why don''t you do right',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3ztY1iQFildCCoL9JtIA4N',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:51',
  'johnny adams',
  'in a moment of weakness',
  NULL,
  'soul blues, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4ocDtEuuOpoZhPxG3S9Yqv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:53',
  'little richard',
  'i don''t know what you got',
  NULL,
  'rockabilly, rock and roll, doo-wop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0PkFYFPWz9vfSpN5HCIndR',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '19:57',
  'johnny cash',
  'understand your man',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/13kfQhv7drKlGtbfSz0H0u',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:00',
  'Isaac Hayes',
  'Hung up on my baby',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7wEGeUzpPNnHKfOtSgYjG4',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:01',
  'fats domino',
  'before i grow too old',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/46HWAi2wZzWQaRuSuX7Kdu',
  'found',
  88.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:09',
  'freddie scott',
  'are you lonely for me',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1k4ezzB6K9OjDBs8MYasri',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:12',
  'sugar pie desanto',
  'go go power',
  'in the basement',
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7LAYpsg85AZyNiMXCZFqa6',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:18',
  'isaac hayes',
  'kidnapped',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3jSGlLGtEgtnXdiom2UsAk',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:18',
  'johnny cash',
  'cajun born',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2un5eSriHvrGIZ7iKiyS6z',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:20',
  'fats domino',
  'what a price.',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/66YWZw8kQkt0LZQokgMO89',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:27',
  'billy the kid emerson',
  'if lovin'' is believing',
  NULL,
  'classic blues, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5cuMEAui0BJxHANaEhnXPI',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:27',
  'wynona carr',
  'please mr jailer',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6e8MuYfAwNPOrrNb8HhdzQ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:29',
  'johnny cash',
  'orleans parish prison',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5FvJ83BvPK8cmY5lHmToio',
  'found',
  74.4,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:32',
  'isaac hayes',
  'run fay run',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5mwaa3dQPx9LVEJG5cXqFS',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:33',
  'fats domino',
  'three nights a week',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5l8AvWEzLSiHajzkdQ6WYZ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:36',
  'ruth brown',
  'mama he treats your daughter mean',
  NULL,
  'boogie-woogie, swing music, blues',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2yShRZBSQ7Pa7GPrdQBjhy',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:39',
  'solomon burke',
  'home in your heart',
  NULL,
  'soul, soul blues, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0mtwviFWrTaFjb8EcYDwum',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:41',
  'johnny cash',
  'what is truth',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0snyjt8NMg7Dc7E3xnDH9b',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:45',
  'iaac hayes',
  'buns o'' plenty',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:48',
  'fats domino',
  'my heart is bleeding',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1UAbcX89xwBKoFN7JrsqoC',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:49',
  'the valentinos',
  'it''s all over now.',
  NULL,
  'northern soul, doo-wop',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2tQ0AQqERX1t2S5chq9zBv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:52',
  'faye adams',
  'that''s what makes my baby fat',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0mUPYvsTbFN1f20twdLUrb',
  'found',
  94.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:52',
  'johnny cash',
  'do lord.',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4YVVuc40BBBfVtfKAYMiRT',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '20:55',
  'memphis underground',
  'theme from shaft.',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5lk9kxSl2K0CNHUpihvVT7',
  'found',
  84.8,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:01',
  'Fats Domino',
  'rising sun.',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4AT7dNrKZz7tYhWfKniTc9',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:06',
  'the 5 royales',
  'tears of joy',
  NULL,
  'doo-wop, northern soul, roots rock',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7ifgJqZqvP4VzkVjVSNekd',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:07',
  'bo diddley',
  'i''ve had it hard',
  NULL,
  'blues, classic blues, rock and roll',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/7IgExJzfNioxLp6nQSvxOv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:09',
  'johnny cash',
  'louisiana man.',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/5wOJStS7BHUPk8FlKYNaDk',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:10',
  'iaac hayes',
  'breakthrough',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:13',
  'Fats Domino',
  'the prisoner''s song',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6VlpDROAr1Jy5OpIXoqOst',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:18',
  'vivian reed',
  'i fel the earth move',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:21',
  'shorty long',
  'devil with the blue dress',
  NULL,
  'motown, northern soul, classic soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/3H7tyINgmMveEd3p8WYo0p',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:23',
  'johnny cash',
  'god''s gonna cut you down',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6jXPZid0KLorvgIDP6TiSo',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:26',
  'isaac hayes',
  'the duke',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4Sj8FmVyT2cP3hkfCNcBzs',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:33',
  'Fats Domino',
  'i lived my life',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4MYMABF6EBGxckVsfuDzDT',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:36',
  'clarence carter',
  'set me free.',
  NULL,
  'classic blues, classic soul, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2PJ9r5TFXrTKGgqBnBzAWn',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:36',
  'jean knight',
  'you city slicker',
  NULL,
  'classic soul, motown, soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/0rbtlfPUf239P4cQ9p4PFN',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:36',
  'johnny cash',
  'drive on',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/18G7C4uElv5Be4rpVCUjOZ',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:39',
  'isaac hayes',
  'dorinda''s party',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2JEiclIv6hVZuY3g3EqGjv',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:44',
  'Fats Domino',
  'red sails in the sunset',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/6Y71cMJ51ghNyMawNXDt9J',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:47',
  'james brown and the famous flames',
  'i don''t mind.',
  NULL,
  '',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/2ccAMXmyEIP9JUIWSsTZFA',
  'found',
  91.9,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:50',
  'rhetta hughes',
  'you''re doing it with her when it should be with me',
  NULL,
  'northern soul',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/4nQB6F5IZxw2gtvIxMgNqr',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:52',
  'johnny cash',
  'ain''t no grave.',
  NULL,
  'classic country, outlaw country, country',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/1xADYlM5rjnbJvAW2tc0qF',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:54',
  'Fats Domino',
  'valley of tears',
  'live at UNO',
  'rock and roll, doo-wop, rockabilly',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/07y359wzDBx5eGjKCZn5z5',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '21:54',
  'isaac hayes',
  'end theme',
  NULL,
  'soul, classic soul, funk',
  'R&B',
  'Your Cousin Dimitri',
  'https://open.spotify.com/track/07Fsl68EtWOMbBQzDSbOG3',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:01',
  'KENNY BURRELL',
  'DOWNSTAIRS',
  'GUITAR FORMS',
  'hard bop, jazz, cool jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7zXdMe02Msa2iGQckEMI2e',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:03',
  'LEONARD COHEN',
  'THE GUESTS',
  NULL,
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1MJxEpCcl7V13Z76Nfy6Lp',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:05',
  'LEONARD COHEN',
  'DARKNESS',
  'OLD IDEAS',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0J7o7SK5I9WTyl6u86pMHF',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:13',
  'LEONARD COHEN',
  'DID I EVER LOVE YOU?',
  'POPULAR PROBLEMS',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2QCaIZQkKrDLmpSIcfQsDS',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:25',
  'LEONARD COHEN',
  'ANTHEM',
  'THE FUTURE',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/7aAE5KL20Uycf3dswsaHjp',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:25',
  'LEONARD COHEN',
  'NIGHT COMES ON',
  'VARIOUS POSIITIONS',
  'singer-songwriter',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/2WgnLtwA8WxNuFRz6j0VXB',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:29',
  'Astral Project',
  'Sombras En La Noche',
  'VoodooBop',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1eRwKX1BFhVek2f7RzGxt3',
  'found',
  76.2,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:39',
  'FATS DOMINO',
  'GOING TO THE RIVER',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4UKHl1LeSu7Gci8ONW7g99',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:42',
  'FATS DOMINO',
  'TROUBLE BLUES',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1LEipO50i7GHp7x2A0eQYH',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:45',
  'FATS DOMINO',
  'COQUETTE',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3wVRC7XGgay0BoYiDsA5KP',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:45',
  'FATS DOMINO',
  'SO SWELL',
  NULL,
  'rock and roll, doo-wop, rockabilly',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/5ZWeHOqNZIpo9t5dbQtfAh',
  'found',
  75.9,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:50',
  'JOHN LENNON AND YOKO ONO',
  'STARTING OVER',
  'DOUBLE FANTASY',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '22:55',
  'CHARLES LLOYD & THE MARVELS WITH LUCINDA WILLIAMS',
  'WE''VE COME TO FAR TO TURN AROUND',
  'VANISHED GARDENS',
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:01',
  'CHARLES LLOYD',
  'NE ME QUITTE PAS',
  'JUMPING THE CREEK',
  'free jazz, hard bop, jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1S2Eb6UUcVz4iubHEeG5Bq',
  'found',
  80.5,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:15',
  'CHARLES AZNAVOUR',
  'LA BOHEME',
  NULL,
  'chanson, variété française, french jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1WvvmEowf7hiz5EnyAwtTj',
  'found',
  79,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:19',
  'CHARLES AZNAVOUR',
  'ISABELLE',
  NULL,
  'chanson, variété française, french jazz',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1NZiAlQZeJSW7DNaOSOdzU',
  'found',
  74.1,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:24',
  'FREDDIE SCOTT',
  'ARE YOU LONELY FOR ME, BABY?',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/3gQxrbpK4V3XmKI1kc487J',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:24',
  'FREDDIE SCOTT',
  'JUST LIKE A FLOWER',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6rOJnjdYb1NI4LhwfgYT19',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:30',
  'JOHNNY CASH',
  'ROWBOAT',
  NULL,
  'classic country, outlaw country, country',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6PSQXLJ32A7Ra9kfKP4q3M',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:34',
  'LEE HAZELWOOD',
  'HOUSE SAFE FOR TIGERS PART 1 & 2',
  NULL,
  '',
  'Kitchen Sink',
  'Jennifer Brady',
  NULL,
  'not_found',
  NULL,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:34',
  'LEE HAZELWOOD',
  'THE NIGHT BEFORE',
  NULL,
  'baroque pop',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/0SR9Imu6UcbMoPWI40Vh5P',
  'found',
  72,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:42',
  'LEE HAZELWOOD',
  'YOUR SWEET LOVE',
  NULL,
  'baroque pop',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/6DVyQl6VTvbqNQ0WU7gXIR',
  'found',
  72,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:47',
  'TOWNES VAN ZANDT',
  'FOR THE SAKE OF THE SONG',
  NULL,
  'americana, folk, outlaw country',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4ELGuNlKE0uiD6waM1qWhu',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:49',
  'RY COODER',
  'PARIS, TEXAS',
  NULL,
  'blues, country blues, americana',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/1idiifjTcCoGfBeZiYOdim',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-26',
  '23:57',
  'SHANNON MCNALLY',
  'AFTER MIDNIGHT',
  'MAGNOLIA',
  'americana, alt country',
  'Kitchen Sink',
  'Jennifer Brady',
  'https://open.spotify.com/track/4VHLVYN5bws2MFYhOqXywO',
  'found',
  100,
  '2026-02-27 07:39:37'
);

DELETE FROM wwoz_tracks WHERE date = '2026-02-27';

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '00:00',
  'DUANE EDDY',
  'RAUNCHY',
  NULL,
  'surf rock, rockabilly',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/46mwWUGW6lzD4gLPAwdcMz',
  'found',
  100,
  '2026-02-27 07:39:37'
);

INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  '2026-02-27',
  '00:00',
  'GRACE JONES',
  'LIBERTANGO',
  NULL,
  'art pop',
  'Midnight Music',
  NULL,
  'https://open.spotify.com/track/4QHfFzsVXbLewUmI2UMel5',
  'found',
  71.5,
  '2026-02-27 07:39:37'
);