-- Get Movie Detail

-- get the genre first
SELECT m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.id = 11 -- assume this is input data that user select a movie
GROUP BY m.movie_name, g.name

-- then get the cast list
SELECT m.movie_name, a.first_name, a.last_name
FROM actor_cast ac
JOIN movies m ON ac.movie_id = m.id
JOIN actors a ON ac.actor_id = a.id
WHERE m.id = 11 -- assume this is input data that user select a movie
GROUP BY m.movie_name, a.first_name, a.last_name

-- then get movie detail and director name
SELECT m.movie_background, m.movie_poster, m.movie_name, m.duration, d.first_name, d.last_name, m.synopsis
FROM movies m
JOIN directors d ON m.director_id = d.id
WHERE m.id = 11 -- assume this is input data that user select a movie
GROUP BY m.movie_background, m.movie_poster, m.movie_name, m.duration, m.synopsis, d.first_name, d.last_name