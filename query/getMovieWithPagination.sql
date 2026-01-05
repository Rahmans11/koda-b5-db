-- Get Movie with pagination
SELECT m.movie_poster, m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
GROUP BY m.movie_poster, m.movie_name, g.name
LIMIT 20 OFFSET 0; -- assume this is input data for first page that each page have 20 list to show

SELECT m.movie_poster, m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
GROUP BY m.movie_poster, m.movie_name, g.name
LIMIT 20 OFFSET 20; -- assume this is input data for second page that each page have 20 list to show