SELECT managers.employeenumber, managers.firstname, managers.lastname, managers.jobtitle, COUNT(*) AS number_ppl_reportsTo_manager, total_amount AS sales_by_employees
FROM 
(SELECT mngr.employeenumber, mngr.firstname, mngr.lastname, mngr.jobtitle
FROM employees AS mngr
WHERE jobtitle like '%Manager%') AS managers JOIN 
(SELECT e.reportsto, e.employeenumber, SUM(total) AS total_amount
FROM employees e JOIN 
(SELECT SUM(p.amount) AS total, c.salesRepEmployeeNumber
FROM customers c JOIN payments p On p.customernumber = c.customernumber
GROUP BY c.salesRepEmployeenumber) AS amount_per_employee ON e.employeenumber = amount_per_employee.salesrepemployeenumber
GROUP BY e.employeenumber) AS Employee_details ON managers.employeenumber = employee_details.reportsTo
GROUP BY managers.employeenumber
ORDER BY sales_by_employees DESC;

#For each manager, list their name, job title and the number of employees who report to them
#and the combined sales made by all the employees under their supervision.
