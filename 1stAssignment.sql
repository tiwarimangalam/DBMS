show databases;
show tables;
use sakila;
-- writing down the quiries;
-- 1st query
-- Find out the PG-13 rated comedy movies. DO NOT use the film_list table.
SELECT f.film_id, f.title
FROM category ctg, film_category fctg, film f
WHERE ctg.category_id = fctg.category_id
	AND ctg.name = 'Comedy' AND fctg.film_id = f.film_id AND f.rating = 'PG-13';
        
 -- 2nd query
 -- Find out the top 3 rented horror movies.
 
SELECT fl.title, COUNT(ALL fl.title)
FROM film_list fl, inventory inv, rental rl
WHERE fl.category = 'Horror' AND fl.FID = inv.film_id AND inv.inventory_id = rl.inventory_id
GROUP BY title
ORDER BY COUNT(ALL fl.title) DESC
LIMIT 3;

-- 3rd query
-- Find out the list of customers from India who have rented sports movies.

SELECT * FROM customer_list
WHERE country = 'India'
        AND ID
        IN (SELECT rl.customer_id
        FROM film_list fl, inventory inv, rental rl
        WHERE fl.category = 'Sports'
			AND fl.FID = inv.film_id AND rl.inventory_id = inv.inventory_id
        GROUP BY rl.customer_id);
        
-- 4th query
--  Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.


SELECT * FROM customer_list cl
WHERE cl.country = 'Canada'
        AND ID IN (SELECT rl.customer_id
        FROM actor act, film_actor fact, inventory inv, rental rl
        WHERE act.first_name = 'NICK'
                AND act.last_name = 'WAHLBERG' AND act.actor_id = fact.actor_id AND fact.film_id = inv.film_id AND inv.inventory_id = rl.inventory_id);  
 
 -- 5th
 -- Find out the number of movies in which “SEAN WILLIAMS” acted.
 
 SELECT COUNT(DISTINCT fact.film_id)
FROM actor act, film_actor fact
WHERE act.first_name = 'SEAN'
	AND act.last_name = 'WILLIAMS' AND fact.actor_id = act.actor_id;
	