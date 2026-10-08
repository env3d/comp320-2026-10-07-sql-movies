SELECT m1.Title, m1.genre, m1.Rating
FROM movies m1
WHERE m1.Rating = (
    SELECT MAX(m2.Rating)
    FROM movies m2
    WHERE m2.genre = m1.genre
);