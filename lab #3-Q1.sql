SELECT City.name, Country.name
FROM City join Country on City.CountryCode = Country.Code
WHERE City.name like 'A%'