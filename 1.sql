SELECT genre, COUNT(DISTINCT Movie_id) AS movie_count
FROM movies
GROUP BY genre;