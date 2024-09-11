SELECT c.name, c.population, co.Continent
FROM City c JOIN (SELECT *
                  FROM Country) AS co ON c.countrycode = co.code
WHERE Continent = 'Asia' AND c.name LIKE '%re%';
