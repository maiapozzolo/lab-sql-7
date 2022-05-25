select distinct(last_name), first_name
from sakila.actor;

select last_name, count(last_name)
from sakila.actor
having count(last_name) > 1;

select distinct(staff_id), count(rental_id) from sakila.rental
group by staff_id;

select distinct(release_year), count(film_id) from sakila.film
group by release_year;

select count(film_id), rating from sakila.film
group by rating;

select round(avg(length),2), rating from sakila.film
group by rating;

select round(avg(length),2) as mean, rating from sakila.film
group by rating
having mean > 120;
