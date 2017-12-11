use sakila;
select f.film_id, f.title, c.name, f.description, count(fa.actor_id) as nmb_actors
from category c join film_category fc on c.category_id = fc.category_id
                join film f on f.film_id = fc.film_id
                join film_actor fa on f.film_id = fa.film_id
				join language l on l.language_id = f.language_id
where l.name='English'
group by f.film_id
having nmb_actors > 3