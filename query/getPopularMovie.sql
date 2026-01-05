-- Get Popular Movie
SELECT m.movie_poster, m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.popularity > 1010 AND m.rate > 7
GROUP BY m.movie_poster, m.movie_name, g.name;