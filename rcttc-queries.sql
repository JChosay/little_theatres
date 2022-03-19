-- SELECT DISTINCT s.name, t.date
-- FROM `show` s INNER JOIN ticket t ON s.show_id=t.show_id
-- WHERE t.date >= '2021-10-01' AND t.date <= '2021-12-31';

-- SELECT DISTINCT *
-- FROM customer;

-- SELECT *
-- FROM customer
-- WHERE email LIKE '%.com';

-- SELECT *
-- FROM `show`
-- ORDER BY price ASC
-- LIMIT 3;

-- SELECT DISTINCT concat(c.first_name,' ',c.last_name) AS name, s.name AS show_name
-- FROM customer c INNER JOIN ticket t ON c.cust_id=t.cust_id INNER JOIN `show` s ON s.show_id=t.show_id

-- SELECT concat(c.first_name,' ',c.last_name) AS name, s.name AS `show`, th.name AS theater, ti.seat
-- FROM customer c INNER JOIN ticket ti ON c.cust_id=ti.cust_id INNER JOIN theater th ON th.theater_id=ti.theater_id INNER JOIN `show` s ON s.show_id=ti.show_id;

-- SELECT concat(c.first_name,' ',c.last_name) AS name, c.address
-- FROM customer c
-- WHERE c.address = '';

-- SELECT 
--     c.first_name AS customer_first,
--     c.last_name AS customer_last,
--     c.email AS customer_email,
--     c.phone AS customer_phone,
--     c.address AS customer_address,
--     ti.seat,
--     s.name AS `show`,
--     s.price AS ticket_price,
--     ti.date,
--     th.name AS theater,
--     th.address AS theater_address,
--     th.phone AS theater_phone,
--     th.email AS theater_email
-- FROM
--     customer c
--         INNER JOIN
--     ticket ti ON c.cust_id = ti.cust_id
--         INNER JOIN
--     theater th ON ti.theater_id = th.theater_id
--         INNER JOIN
--     `show` s ON s.show_id = ti.show_id;

-- SELECT concat(c.first_name,' ',c.last_name) AS name, count(ti.cust_id) AS tickets
-- FROM customer c INNER JOIN ticket ti ON c.cust_id=ti.cust_id
-- GROUP BY name
-- ORDER BY tickets DESC;

-- SELECT s.name AS `show`, sum(s.price) AS revenue
-- FROM `show` s INNER JOIN ticket ti ON s.show_id=ti.show_id
-- GROUP BY `show`
-- ORDER BY revenue DESC;

-- SELECT t.name AS theater, sum(s.price) AS revenue
-- FROM theater t INNER JOIN ticket ti ON t.theater_id=ti.theater_id INNER JOIN `show` s ON s.show_id=ti.show_id
-- GROUP BY theater;

-- SELECT concat(c.first_name,' ',c.last_name) AS customer, sum(s.price) AS total_sales
-- FROM customer c INNER JOIN ticket ti ON c.cust_id=ti.cust_id INNER JOIN `show` s ON s.show_id=ti.show_id
-- GROUP BY customer
-- ORDER BY total_sales DESC
-- LIMIT 1;