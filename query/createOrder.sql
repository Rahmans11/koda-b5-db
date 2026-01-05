--Create Order

-- insert known data into the order like personal information / payer info, user id, and status payment
insert into orders (user_id, payer_name, payer_email, payer_phone, status) values (100, 'Addison Sokell', 'asokell2r@tripod.com', '489-885-6224', 'PENDING');

-- get movie, genre, and show time schedule
SELECT 
ss.order_id, s.movie_id,
EXTRACT(YEAR FROM s.show_time) AS year,
EXTRACT(MONTH FROM s.show_time) AS month,
EXTRACT(DAY FROM s.show_time) AS day, 
EXTRACT(HOUR FROM s.show_time) AS hour,
EXTRACT(MINUTE FROM s.show_time) AS minute
FROM seat_schedules ss
JOIN schedules s ON ss.schedule_id = s.id
JOIN orders o ON ss.order_id = o.id
WHERE ss.schedule_id = 97
AND ss.order_id = 101
GROUP BY ss.order_id, s.movie_id, s.show_time;

-- get movie name and genre name
SELECT m.movie_name, g.name AS genre
FROM movie_genres mg
JOIN movies m ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.id = 97 -- this data we get from previous query
GROUP BY m.movie_name, g.name;

-- insert order id to seat scheduls record
UPDATE seat_schedules
SET order_id = 101 -- assume the id order
WHERE seat_id = 97 AND schedule_id = 97;

-- assume that in order user select 2 seat
UPDATE seat_schedules
SET order_id = 101 -- assume the id order
WHERE seat_id = 98 AND schedule_id = 97;
--

-- agregate total seat
SELECT COUNT(ss.schedule_id)
FROM seat_schedules ss
WHERE ss.schedule_id = 97 AND ss.order_id = 101;

-- agregate seat list
SELECT ss.order_id, STRING_AGG(s.seat_name, ', ') AS "seat list"
FROM seat_schedules ss
JOIN seats s ON ss.seat_id = s.id
JOIN orders o ON ss.order_id = o.id
WHERE ss.schedule_id = 97
AND ss.order_id = 101
GROUP BY ss.order_id;

-- agrgegate total price
SELECT SUM(s.price)
FROM seat_schedules ss
JOIN schedules s ON ss.schedule_id = s.id
WHERE ss.schedule_id = 97 AND ss.order_id = 101;

-- update (insert total price) order base on the agregate total price, that we was get 80 and the order id is 101
UPDATE orders
SET
total_price = 80
WHERE id = 101;