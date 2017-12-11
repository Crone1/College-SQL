select *
from products
where quantityinstock>(select avg(quantityinstock) from products)