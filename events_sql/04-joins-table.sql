
-- SELECT 
--    e.date_planned,
--    e.image,
--    l.street,
--    l.house_number,
--    c.name 
-- FROM events AS e 
-- INNER JOIN locations as l ON location_id = l.id
-- INNER JOIN cities as c ON c.name= l.city_name;

-- SELECT * FROM(
-- SELECT 
--    e.date_planned,
--    e.image,
--    l.street,
--    l.house_number,
--    c.name,
--    u.email 
-- FROM events AS e 
-- INNER JOIN locations as l ON location_id = l.id
-- INNER JOIN cities as c ON c.name= l.city_name
-- INNER JOIN events_users as eu ON eu.event_id=e.id
-- INNER JOIN users as u ON u.id = eu.user_id) AS rs ORDER BY date_planned;

---- LEFT joins and conditions
-- SELECT * FROM cities AS c
-- LEFT JOIN locations AS l ON l.city_name= c.name 
-- LEFT JOIN events AS e ON e.location_id = l.id
-- WHERE c.name = 'Tumpang';

-- SELECT COUNT(*) FROM events; //the number of all events

-- SELECT date_planned , max_participants from events;

--//Get users age by asc order
-- SELECT * FROM(
--     SELECT first_name, last_name,  EXTRACT(YEAR FROM AGE(birthdate)) as age
--     from users) AS sds ORDER BY  age;