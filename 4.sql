SELECT Title
FROM movies
WHERE genre IN ('Romance', 'Sci-Fi')
GROUP BY Movie_id, Title
HAVING COUNT(DISTINCT genre) = 2;