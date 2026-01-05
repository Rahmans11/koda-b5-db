-- Get Upcoming Movie
SELECT m.movie_poster, m.movie_name, m.release_date, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.status = 'available'
GROUP BY m.movie_poster, m.movie_name, m.release_date, g.name;