select Sum(Population) as mySum, avg(lifeexpectancy), Region
from Country
group by Region
order by avg(lifeexpectancy) desc
