SELECT cl.Language, ROUND(SUM((cl.Percentage * c.Population)/100)) AS total_ppl_spk_lnguage, COUNT(c.Name) AS num_cuntrys_spk_lnguage
FROM countrylanguage cl JOIN country c ON c.Code = cl.CountryCode
GROUP BY cl.Language
ORDER BY total_ppl_spk_lnguage DESC
LIMIT 10;

#List the top 10 most used languages, the number of countries which speak the language
#and total amount of people who speak this language (not the percent). Order the results
#by the total number of people who speak these languages from highest to lowest.