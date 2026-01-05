-- delete movie

-- delete record on table asosiation
DELETE FROM movie_genres
WHERE movie_id = 1 AND genre_id = 1;

DELETE FROM actor_cast
WHERE movie_id = 1 AND actor_id = 1;

-- delete record on table movie
DELETE FROM movies
WHERE id = 1;