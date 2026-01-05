-- Edit Movie

-- edit/update table assosiation
UPDATE movie_genres
SET
genre_id = 2,
WHERE movie_id = 1 AND genre_id = 1;

UPDATE actor_cast
SET
actor_id = 2,
WHERE movie_id = 1 AND actor_id = 1;

-- edit/update table movie
UPDATE movies
SET 
movie_name = 'new name',
movie_poster = 'new poster',
movie_background = 'new background',
release_date = 2025-08-19,
duration = 123,
director_id = 2,
synopsis = 'new synopsis',
rate = 7,
popularity = 1010,
status = 'unavalaibale',
WHERE id = 1 -- assume we was select one of movie