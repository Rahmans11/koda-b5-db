--Get Seat on Schedule
SELECT 
EXTRACT(YEAR FROM sc.show_time) = 2025 AS year,
EXTRACT(MONTH FROM sc.show_time) = 09 AS month,
EXTRACT(DAY FROM sc.show_time) = 10 AS day, -- assume this is input data from filter date
EXTRACT(HOUR FROM sc.show_time) = 00 AS hour, 
EXTRACT(MINUTE FROM sc.show_time) = 00 AS minute, -- assume this is input data from filter time
sc.movie_id, sc.cinema_id, sc.price, sc.show_time,se.seat_name
FROM seat_schedules ss
JOIN seats se ON ss.seat_id = se.id
JOIN schedules sc ON ss.schedule_id = sc.id
WHERE sc.movie_id = 37  -- assume this is input data that user select a movie
AND sc.cinema_id = 37 -- assume this is input data that user select a cinema
GROUP BY sc.movie_id, sc.cinema_id, sc.price, sc.show_time,se.seat_name

--Get Seat Sold
SELECT
EXTRACT(YEAR FROM sc.show_time) = 2025 AS year,
EXTRACT(MONTH FROM sc.show_time) = 09 AS month,
EXTRACT(DAY FROM sc.show_time) = 10 AS day, 
EXTRACT(HOUR FROM sc.show_time) = 00 AS hour,
EXTRACT(MINUTE FROM sc.show_time) = 00 AS minute,
sc.movie_id, sc.cinema_id, sc.price, sc.show_time,se.seat_name, o.id as "order id"
FROM seat_schedules ss
JOIN seats se ON ss.seat_id = se.id
JOIN schedules sc ON ss.schedule_id = sc.id
JOIN orders o ON ss.order_id = o.id
WHERE sc.movie_id = 37 AND sc.cinema_id = 37
GROUP BY sc.movie_id, sc.cinema_id, sc.price, sc.show_time, se.seat_name, o.id