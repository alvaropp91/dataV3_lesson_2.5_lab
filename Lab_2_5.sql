-- SQL LAB lesson 2.5
-- 1 question
SELECT first_name FROM sakila.actor 
WHERE first_name = "Scarlett";

-- 2 question a)
SELECT count(inventory_id) FROM sakila.inventory;
-- 2 question b)
SELECT count(DISTINCT inventory_id ) FROM sakila.inventory;

-- 3 question
SELECT min(length) AS min_duration, max(length) AS max_curation
FROM sakila.film;

-- 4 question
SELECT sec_to_time(AVG(length)) FROM sakila.film;

-- 5 question
SELECT count(DISTINCT last_name) FROM sakila.actor;

-- 6 question
SELECT DATEDIFF(MAX(DATE(rental_date)),MIN(DATE(rental_date))) AS "days company operating" FROM sakila.rental;

-- 7 question
SELECT *, date_format(last_update, "%m") AS "month", date_format(last_update, "%d") AS "day" from sakila.rental LIMIT 20;

-- 8 question
SELECT *,
CASE
WHEN (date_format(rental_date,'%W') = 'Saturday') or (date_format(rental_date,'%W') = 'Sunday')
THEN 'Weekend' 
ELSE 'Weekday' 
END AS day_type 
FROM sakila.rental;

-- 9 question
SELECT DISTINCT (release_year) from sakila.film;

-- 10 question
SELECT title FROM sakila.film WHERE title LIKE '%ARMAGEDDON%';

-- 11 question
SELECT title FROM sakila.film WHERE title LIKE '%APOLLO';

-- 12 question
SELECT title, length
FROM sakila.film
WHERE (length > 0)
ORDER BY length
LIMIT 10;

-- 13 question
SELECT count(title)
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';