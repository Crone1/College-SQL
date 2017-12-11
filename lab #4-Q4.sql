SELECT a.first_name, a.last_name, COUNT(top_10.filmid) AS no_films
FROM actor a JOIN film_actor fa ON a.actor_id = fa.actor_id 
			 JOIN (SELECT COUNT(r.rental_id), i.film_id as filmid
				   FROM rental r JOIN inventory i ON i.inventory_id = r.inventory_id
                   GROUP BY i.film_id
				   ORDER BY COUNT(r.rental_id) desc
                   limit 10) AS top_10 ON top_10.filmid = fa.film_id
GROUP BY a.actor_id
ORDER BY no_films desc

#List the name of all actors who have acted in the top 10 most rented movies, and
#the number of top 10 films they have acted in.