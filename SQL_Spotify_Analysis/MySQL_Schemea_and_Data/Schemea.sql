-- Createing a new schema
CREATE SCHEMA IF NOT EXISTS Spotify_2023;
USE Spotify_2023;

/*
-- Utilize the "Table Data Import Wizard" for efficient data import process.
-- After creating the desired schema, right-click on the table.
-- Select "Table Data Import Wizard," choose the CSV file, set delimiters, and review the data.
*/


-- Createing table with columns in csf file
CREATE TABLE IF NOT EXISTS spotify_data (
    track_name VARCHAR(255),
    artists_name VARCHAR(255),
    artist_count INT,
    released_year INT,
    released_month INT,
    released_day INT,
    in_spotify_playlists INT,
    in_spotify_charts INT,
    streams INT,
    in_apple_playlists INT,
    in_apple_charts INT,
    in_deezer_playlists INT,
    in_deezer_charts INT,
    in_shazam_charts INT,
    bpm INT,
    key_ VARCHAR(02),
    mode_ VARCHAR(05),
    danceability_percent INT,
    valence_percent INT,
    energy_percent INT,
    acousticness_percent INT,
    instrumentalness_percent INT,
    liveness_percent INT,
    speechiness_percent INT
);

-- Importing data from CSV into the table

LOAD DATA LOCAL INFILE 'spotify-2023.csv'
INTO TABLE spotify_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Skips the header row if it exists


