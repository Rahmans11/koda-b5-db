--Get Schedules
SELECT 
EXTRACT(YEAR FROM s.show_time) = 2025 AS year,
EXTRACT(MONTH FROM s.show_time) = 09 AS month,
EXTRACT(DAY FROM s.show_time) = 10 AS day, -- assume this is input data from filter date
EXTRACT(HOUR FROM s.show_time) = 00 AS hour, 
EXTRACT(MINUTE FROM s.show_time) = 00 AS minute, -- assume this is input data from filter time
s.movie_id, m.movie_name, c.name as cinema, c.address as location, s.show_time
FROM schedules s
JOIN movies m ON s.movie_id = m.id
JOIN cinemas c ON s.cinema_id = c.id
WHERE s.movie_id = 37 -- assume this is input data that user select a movie
AND c.address LIKE '%Straubel%' -- assume this is input data from filter location
GROUP BY s.movie_id, m.movie_name, c.name, c.address, s.show_time