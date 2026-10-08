SELECT Title, genre, Rating, MetaCritic
FROM movies
WHERE (MetaCritic / 10.0) > Rating;