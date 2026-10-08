SELECT m1.Title, m1.genre, m1.TotalVotes
FROM movies m1
WHERE m1.TotalVotes = (
    SELECT MAX(m2.TotalVotes)
    FROM movies m2
    WHERE m2.genre = m1.genre
);