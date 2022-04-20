use sakila;
show tables;
-- describe table_name;
-- 1st query
-- Find out the number of documentaries with deleted scenes.
-- describe film;
-- describe film_category;
-- describe category;
select count(*)
from film f, film_category fctg, category ctg
where f.special_features='deleted scenes'
and fctg.category_id=ctg.category_id and ctg.name='documentary';

-- 2nd query
-- Find out the number of sci-fi movies rented by the store managed by Jon Stephens.
