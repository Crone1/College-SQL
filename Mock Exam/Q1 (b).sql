SELECT c.first_name, c.last_name, c.email, a.phone
FROM customer c JOIN address a ON c.address_id = a.address_id
WHERE c.store_id = 1
ORDER BY c.first_name;
