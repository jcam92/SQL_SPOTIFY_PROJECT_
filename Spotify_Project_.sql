-- List the number of tracks made by each artist. Sort the output by the number of tracks (Descending)

SELECT artist, COUNT(*) AS number_of_tracks

FROM tracks

GROUP BY 1

ORDER BY COUNT(*) DESC;

-- Display the average duration of tracks by genre. Sort the output by the average duration (Descending)

SELECT genre, AVG(duration) AS avg_duration

FROM tracks

GROUP BY 1

ORDER BY AVG(duration) DESC;

-- Display the minimum, maximum, and average danceability of tracks made by Queen and The Beatles

SELECT artist, MIN(danceability), MAX(danceability), AVG(danceability)

FROM tracks

WHERE artist IN ('Queen', 'The Beatles')

GROUP BY artist;

-- Pop music consists of different genres, for example: Art Pop, Dance Pop, and Candy Pop are all Pop music genres.
-- How many pop music genres are listed in this dataset ?

SELECT COUNT(*) AS pop_music_genre

FROM tracks

WHERE genre LIKE '%pop%';

-- Display the number of tracks, highest popularity, and lowest popularity each rock music artist has achieved.
-- Sort the output by the number of tracks (descending)

SELECT artist, COUNT(title) AS number_of_tracks, MAX(popularity), MIN(popularity)

FROM tracks

WHERE genre LIKE '%rock%'

GROUP BY 1

ORDER BY COUNT(title) DESC;

-- Tracks by genre

-- a. List the number of tracks by each genre, for tracks released during 2005-2010.

-- b. Further restrict your result to display only genres with more than 10 tracks

SELECT genre, COUNT(*) AS number_of_tracks

FROM tracks

WHERE release_year BETWEEN 2005 AND 2010

GROUP BY genre;


SELECT genre, COUNT(*) AS number_of_tracks

FROM tracks

WHERE release_year BETWEEN 2005 AND 2010

GROUP BY genre

HAVING COUNT(*) > 10;

-- List the number of tracks released by Coldplay each year. Sort the output by release_year (ascending)

SELECT release_year, COUNT(title)

FROM tracks

WHERE artist = 'Coldplay'

GROUP BY 1

ORDER BY 1;
