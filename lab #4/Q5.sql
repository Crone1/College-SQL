SELECT c.customerName, SUM(p.amount), (SUM(p.amount)/(SELECT SUM(p.amount) AS total_amnt
							FROM payments p)) * 100 AS prcnt
FROM customers c JOIN payments p ON c.customerNumber = p.customerNumber
ORDER BY prcnt desc
