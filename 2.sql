SELECT genre, COUNT(DISTINCT Movie_id) AS movie_count
FROM movies
WHERE Rating > 8.0
GROUP BY genre;