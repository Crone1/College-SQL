SELECT e.firstname, e.lastname, COUNT(o.ordernumber), e.employeenumber, SUM(od.quantityOrdered * od.priceeach) AS tot_amount
FROM employees e JOIN customers c ON e.employeenumber = c.salesrepemployeenumber
				 JOIN orders o ON o.customernumber = c.customernumber
                 JOIN orderdetails od ON o.ordernumber = od.ordernumber
GROUP BY e.employeenumber
ORDER BY tot_amount desc