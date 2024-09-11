SELECT co.Name, c.Name, c.Population
FROM city c JOIN country co ON c.CountryCode = co.Code 
            JOIN (SELECT CountryCode, avg(Population) AS Avg_pop
				  FROM city
				  GROUP BY CountryCode) AS ci ON c.CountryCode = ci.CountryCode
WHERE c.Population > ci.Avg_pop;
