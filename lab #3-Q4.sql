SELECT f.film_id, title, release_year
from film f join film_actor a on f.film_id = a.film_id
where a.film_id = NULL