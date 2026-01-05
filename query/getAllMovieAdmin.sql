-- get all movie admin
SELECT m.movie_poster AS thumbnail, m.movie_name, g.name AS genre, m.release_date, m.duration
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
GROUP BY m.movie_poster, m.movie_name, g.name, m.release_date, m.duration
LIMIT 5 OFFSET 0; -- this pagination for firstpage