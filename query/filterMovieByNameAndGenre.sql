-- Filter Movie by Name and Genre with pagination
SELECT m.movie_poster, m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.movie_name 
LIKE '%Ninja%' -- assume this is data from filter form filter by name column with value Ninja
AND g.name = 'Comedy' -- assume this is data from filter form filter by genre column with value Comedy
GROUP BY m.movie_poster, m.movie_name, g.name
LIMIT 20 OFFSET 0;

SELECT m.movie_poster, m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.movie_name 
LIKE '%Ninja%'
AND g.name = 'Comedy'
GROUP BY m.movie_poster, m.movie_name, g.name
LIMIT 20 OFFSET 20;

-- Filter Movie only by Name with pagination
SELECT m.movie_poster, m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.movie_name LIKE '%Ninja%'
GROUP BY m.movie_poster, m.movie_name, g.name
LIMIT 20 OFFSET 0;

-- Filter Movie only by Genre with pagination
SELECT m.movie_poster, m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE g.name = 'Comedy'
GROUP BY m.movie_poster, m.movie_name, g.name
LIMIT 20 OFFSET 0;