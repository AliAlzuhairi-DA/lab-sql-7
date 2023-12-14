SELECT last_name
FROM actor
group by last_name
HAVING count(*) = 1;

SELECT last_name
FROM actor
group by last_name
HAVING count(*) > 1;

SELECT staff_id, COUNT(rental_id) AS num_rentals
FROM rental
GROUP BY staff_id;


select release_year, count(*) as num_films
FROM film
group by release_year
order by release_year;


SELECT rating, count(*) as num_films
FROM film
group by rating
order by rating;


SELECT rating, round(avg(length),2) as mean_length
from film
group by rating;


SELECT rating, round(avg(length),2) as mean_duration
from film
group by rating
having mean_duration > 120;