SELECT c.customerName, COUNT(od.ordernumber) AS numb_orders
FROM customers c JOIN orders o ON c.customerNumber = o.customernumber
				 JOIN orderdetails od ON od.ordernumber = o.ordernumber
WHERE o.status = 'shipped' AND (od.priceEach * od.quantityordered) > (SELECT AVG(oda.priceEach * oda.quantityordered)
																	  FROM orderdetails oda)
GROUP BY c.customernumber
ORDER BY numb_orders DESC;


#List the name of all customers who have made successful orders (status = shipped) that have a
#greater price than the average order, and the number of orders they have made.
