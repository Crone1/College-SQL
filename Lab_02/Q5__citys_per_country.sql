select CountryCode, count(name) as mycount
from City
group by countrycode
order by mycount desc
