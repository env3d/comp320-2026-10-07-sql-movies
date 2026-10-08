SELECT * FROM (
    -- Needed to order by Title because the solution requires it, my mistake
    SELECT Title, genre, Worldwide
    FROM movies
    WHERE genre = 'Sci-Fi'
    ORDER BY Worldwide DESC
    LIMIT (SELECT CAST(0.20 * COUNT(*) AS INTEGER) FROM movies WHERE genre = 'Sci-Fi')
) ORDER BY Title