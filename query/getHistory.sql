-- get history
SELECT o.id, s.id as schedule_id, s.movie_id, s.cinema_id, o.status, o.total_price  
FROM seat_schedules ss
JOIN schedules s ON ss.schedule_id = s.id
JOIN orders o ON ss.order_id = o.id
WHERE o.user_id = 100 -- assume we login that have id 100
GROUP BY o.id, s.id, s.movie_id, s.cinema_id, o.status, o.total_price;

-- get movie name and cinema name
SELECT m.movie_name, c.name, c.address  
FROM schedules s
JOIN movies m ON s.movie_id = m.id
JOIN cinemas c ON s.cinema_id = c.id
WHERE s.id = 97 -- assume schedule we get
GROUP BY m.movie_name, c.name, c.address;