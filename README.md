# Spotify-Top-Song-Analysis-SQL-

# **ðŸŸ¢ Most Streamed Spotify Songs 2023 - SQL Analysis**

## ðŸ“Š Data Analysis
The SQL queries for data analysis are consolidated in file, [SQL_queries.sql](SQL_queries.sql), providing a granular exploration of the dataset.

## ðŸ“ Project Overview
Dynamic music landscape of 2023 through advanced SQL queries on the "Most Streamed Spotify Songs" dataset. Uncover artist trends, temporal patterns, and the relationship between song attributes and popularity.

## ðŸ—ï¸ Key Findings
1. **Most Listened-to Artists**
   - The Weeknd, Taylor Swift, and Ed Sheeran dominate total streams, showcasing global popularity.

2. **Song Counts Released Annually**
   - Explore the evolving music industry landscape with a detailed breakdown of song releases by year, spanning from the 1950s onwards.

3. **New Songs**
   - Stay current with a curated list of the latest songs in 2023, providing valuable insights for music enthusiasts and industry professionals.

4. **Most Popular Songs on Spotify and Apple Music**
   - Identify current musical trends and preferences across major streaming platforms, including ranks and popularity metrics.

5. **High-Tempo Songs**
   - Catering to energetic listeners, discover a list of high-tempo songs with beats per minute (BPM) over 150.

6. **Songs Found in Most Playlists**
   - Shed light on user playlist preferences with an identification of songs frequently found in Spotify and Apple Music playlists.

7. **Energetic Songs**
   - Explore a curated list of energetic songs with a high energy percentage for dynamic musical experiences.

8. **Acoustic Songs**
   - Discover non-acoustic or minimally acoustic tracks with a low acoustic ratio (acousticness percentage < 10).

9. **Songs with High Lyrical Content**
   - Catering to lyric enthusiasts, identify songs with high lyrical content based on a speechiness percentage > 10.

## â„¹ï¸ Dataset Source
Dataset is downloaded in CSV format from [Kaggle.com](https://www.kaggle.com/). [spotify-2023.csv](MySQL_Schemea_and_Data/spotify-2023.csv)

## ðŸ’¾ Raw Data
To facilitate analysis, the dataset was imported into MySQL. The schema for the MySQL database is defined in [Schemea.sql](MySQL_Schemea_and_Data/Schemea.sql), and the data is loaded into the table using [spotify_2023_spotify_data.sql](MySQL_Schemea_and_Data/spotify_2023_spotify_data.sql).

## ðŸ‘¨â€ðŸ’» Data Import Process
> [!TIP]
> **MySQL Data Import:**
>   - Utilize the "Table Data Import Wizard" for efficient data import process.
>   - After creating the desired schema, right-click on the table.
>   - Select "Table Data Import Wizard," choose the CSV file, set delimiters, and review the data.

 Or use the provided SQL query

```
-- Example SQL import query
LOAD DATA INFILE 'MySQL_Schemea_and_Data\spotify-2023.csv'
INTO TABLE spotify_data
-- Specify field delimiter in CSV
FIELDS TERMINATED BY ','
-- encloser fields containing text
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
-- skips the first row of CSV
IGNORE 1 ROWS;

```


