
-- Step 3 / Final
SELECT m1.Title, m1.genre, m1.Budget
FROM movies m1
WHERE m1.Budget > (
    SELECT AVG(m2.Budget)
    FROM movies m2
    WHERE m2.genre = m1.genre
);