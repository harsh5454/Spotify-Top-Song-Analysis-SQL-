USE spotify_2023 ;

-- Listing the Most Listened-to Artists From The Database:

SELECT artists_name, SUM(streams) AS total_streams 
FROM spotify_data
GROUP BY artists_name 
ORDER BY total_streams DESC
;

-------------------------------------
-- Counts Of Songs Released Annually:


Select released_year, COUNT(*) AS song_count 
from spotify_data 
group by released_year
;

--------------------------------------------------------------------
-- New Songs: Lists of the newest songs based on their release date:

Select track_name, artists_name , released_year, released_month, released_day 
From spotify_data 
Order By released_year DESC, released_month DESC, released_day DESC 
LIMIT 10
;

-------------------------------------------------
-- Most Popular Songs on Spotify and Apple Music:

Select track_name, artists_name, in_spotify_charts AS spotify_rank, in_apple_charts AS apple_rank 
From spotify_data
Order By released_year DESC, released_month DESC, released_day DESC
LIMIT 10
;

-------------------------------------------------------
-- High-Tempo Songs: Lists high-tempo (high BPM) songs:

Select track_name, artists_name, bpm 
From spotify_data 
where bpm > 150 
order by bpm DESC 
LIMIT 10
;

-----------------------------------------------------------------------------
-- Songs that are most frequently found in Spotify and Apple Music playlists:

Select track_name, artists_name, in_spotify_playlists AS spotify_playlists, in_apple_playlists AS apple_playlists 
From spotify_data
order by in_spotify_playlists + in_apple_playlists DESC 
LIMIT 10
;

-----------------------------------------------------------
-- Energetic Songs: List of songs with a high energy level:

SELECT track_name, artists_name, energy_persent 
FROM spotify_data
WHERE energy_persent > 80 
ORDER BY energy_persent DESC 
LIMIT 10
;

-----------------------------------------------------------
-- Acoustic Songs: List of songs with a low acoustic ratio:

SELECT track_name, artists_name, acousticness_persent 
FROM spotify_data
WHERE acousticness_persent < 10 
ORDER BY acousticness_persent DESC 
LIMIT 10
;

-----------------------------------
-- Songs with High Lyrical Content:

SELECT track_name, artists_name, speechiness_persent 
FROM spotify_data 
WHERE speechiness_persent > 10 
ORDER BY speechiness_persent DESC 
LIMIT 10
;


----END----