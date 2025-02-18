use sakila;
-- titulos de las peliculas delpais canada
select f.title, co.country
from film f inner join inventory i
on f.film_id= i.film_id
inner join store s on s.store_id = i.store_id
inner join address a on s.address_id = a.address_id
inner join city ci on a.city_id = ci.city_id
inner join country co on ci.country_id = co.country_id
where co.country like 'canada';

-- cartesiano
select f.title, co.country
from film f inner join inventory i,store s,address a ,city ci ,country co 
WHERE s.store_id = i.store_id AND s.address_id = a.address_id AND a.city_id = ci.city_id AND ci.country_id = co.country_id
