select c.name, count(*) as nbr_rentals
from inventory i join film f join film_category fc on i.film_id = f.film_id = fc.film_id 
	 join rental r on r.inventory_id = i.inventory_id 
     join category c on c.category_id = fc.category_id
group by c.category_id
order by nbr_rentals desc
limit 5