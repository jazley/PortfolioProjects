create database if not exists portfolio_proj;

Use portfolio_proj;

-- Displays all columns to examine the dataset
SELECT 
    *
FROM
    spotify_2023
LIMIT 100;
    
    
-- Data Cleaning

-- Modifies the column name 'artist(s)_name' to 'artists_name' to avoid SQL error due to paranthesis() usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `artist(s)_name` `artists_name` TEXT NULL DEFAULT NULL;

-- Modifies the column name 'key' to 'musical_key' to avoid SQL keyword error
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `key` `musical_key` TEXT NULL DEFAULT NULL ;

-- Modifies the column name 'key' to 'musical_key' to avoid SQL keyword error
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `mode` `musical_mode` TEXT NULL DEFAULT NULL ;

-- Modifies the column name 'danceability_%' to 'danceability_pct' to avoid SQL error due to percentage(%) usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `danceability_%` `danceability_pct` TEXT NULL DEFAULT NULL;

-- Modifies the column name 'valence_%' to 'valence_pct' to avoid SQL error due to percentage(%) usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `valence_%` `valence_pct` TEXT NULL DEFAULT NULL;

-- Modifies the column name 'energy_%' to 'energy_pct' to avoid SQL error due to percentage(%) usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `energy_%` `energy_pct` TEXT NULL DEFAULT NULL;

-- Modifies the column name 'acousticness_%' to 'acousticness_pct' to avoid SQL error due to percentage(%) usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `acousticness_%` `acousticness_pct` TEXT NULL DEFAULT NULL;

-- Modifies the column name 'instrumentalness_%' to 'instrumentalness_pct' to avoid SQL error due to percentage(%) usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `instrumentalness_%` `instrumentalness_pct` TEXT NULL DEFAULT NULL;

-- Modifies the column name 'liveness_%' to 'liveness_pct' to avoid SQL error due to percentage(%) usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `liveness_%` `liveness_pct` TEXT NULL DEFAULT NULL;

-- Modifies the column name 'energy_%' to 'energy_pct' to avoid SQL error due to percentage(%) usage
ALTER TABLE `portfolio_proj`.`spotify_2023` 
CHANGE COLUMN `energy_%` `energy_pct` TEXT NULL DEFAULT NULL;

