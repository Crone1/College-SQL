SELECT Language
FROM world181.CountryLanguage
group by language
order by count(*) desc