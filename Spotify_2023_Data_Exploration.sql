Use portfolio_proj;

-- Data Exploration

-- Check number of records
SELECT 
    COUNT(*)
FROM
    spotify_2023;

-- Check records for missing/null values
SELECT *
FROM spotify_2023
WHERE 
  track_name IS NULL OR
  artists_name IS NULL OR
  artist_count IS NULL OR
  released_year IS NULL OR
  released_month IS NULL OR
  released_day IS NULL OR
  in_spotify_playlists IS NULL OR
  in_spotify_charts IS NULL OR
  streams IS NULL OR
  bpm IS NULL OR
  musical_key IS NULL OR
  musical_mode IS NULL OR
  danceability_pct IS NULL OR
  valence_pct IS NULL OR
  energy_pct IS NULL OR
  acousticness_pct IS NULL OR
  instrumentalness_pct IS NULL OR
  liveness_pct IS NULL OR
  speechiness_pct IS NULL;

-- Check number of records that has missing/null values
SELECT count(*)
FROM spotify_2023
WHERE 
  track_name IS NULL OR
  artists_name IS NULL OR
  artist_count IS NULL OR
  released_year IS NULL OR
  released_month IS NULL OR
  released_day IS NULL OR
  in_spotify_playlists IS NULL OR
  in_spotify_charts IS NULL OR
  streams IS NULL OR
  bpm IS NULL OR
  musical_key IS NULL OR
  musical_mode IS NULL OR
  danceability_pct IS NULL OR
  valence_pct IS NULL OR
  energy_pct IS NULL OR
  acousticness_pct IS NULL OR
  instrumentalness_pct IS NULL OR
  liveness_pct IS NULL OR
  speechiness_pct IS NULL;

-- musical_key column contains all the null/missing values
SELECT count(*)
FROM spotify_2023
WHERE 
  musical_key IS NULL;

