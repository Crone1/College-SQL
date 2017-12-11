SELECT c.name, c.Population * (cl.Percentage / 100) AS Englsh_spkrs, ((c.Population * (cl.Percentage / 100) / total.Englsh_pop) * 100) AS wrldwide_prcnt
FROM country c JOIN countrylanguage cl ON c.Code = cl.CountryCode, (SELECT SUM((c.Population * (cl.Percentage/100))) AS Englsh_pop
																	From country c JOIN countrylanguage cl ON c.Code = cl.CountryCode
																	WHERE Language = 'English') as total
WHERE cl.Language = 'English';