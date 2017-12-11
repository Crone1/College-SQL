SELECT pl.productline, round(SUM((priceeach - buyprice)*quantityOrdered)) AS total_income
FROM productlines pl JOIN products p ON pl.productline = p.productline 
					 JOIN orderdetails od ON od.productcode = p.productcode
					 
GROUP BY pl.productline
ORDER BY total_income DESC
LIMIT 1;


#List product line and the total income made by that product line (the income for each
#product is buyPrice - priceEach), for the most profitable product line