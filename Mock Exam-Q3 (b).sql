SELECT c.customername, o.ordernumber, o.orderdate, ROUND(SUM(od.quantityOrdered * od.priceEach)) AS total_price
FROM customers c JOIN orders o ON c.customernumber = o.customernumber
				 JOIN orderdetails od ON od.ordernumber = o.ordernumber
                 JOIN products p ON p.productcode = od.productcode
WHERE status = 'shipped' and (2 * p.buyprice) >= od.priceeach
GROUP BY o.ordernumber
ORDER BY total_price DESC;

#List the name of the customer, the order number , order date and the total order
#amount (price) for all orders that have been shipped where the buy price of the product
#is 2x greater or more than the cost price (priceEach). Order your results from the total
#price of the order from highest to lowest.