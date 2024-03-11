#Task 1 Using count, get the number of cities in the USA

Select count(distinct Name) 
from City 
where CountryCode = 'USA';


#Task 2 Find out what the population and average life expectancy for people in Argentina (ARG) is.

Select Name, Population, LifeExpectancy
from country 
where Code = 'ARG';


#Task 3 Using ORDER BY, LIMIT, what country has the highest life expectancy?

Select Name, Max(LifeExpectancy) 
from country
order by lifeExpectancy
limit 1;


#Task 4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.

Select Distinct Name
from City
where Name like 'f%'
limit 25;


#Task 5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.

Select ID, Name, Population
from city
limit 10;


#Task 6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000.

select name, population
from city
where population > 2000000;


#Task 7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.

Select name
from city
where name like 'Be%';


#Task 8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
select name, population
from city
where population between 500000 and 1000000;


#Task 9 Create a SQL statement to find a city with the lowest population in the city table.

SELECT name, population
FROM city
ORDER BY population
LIMIT 1;


#Task 10 Create a SQL statement to find the capital of Spain (ESP).

select country.code as Country, city.name as Capital
from city
inner join country on city.ID=country.capital
where country.code = 'ESP'
order by country.capital;


#Task 11 Create a SQL statement to list all the languages spoken in the Caribbean region.

select distinct c.region, cl.language
from country as c
inner join countrylanguage as cl
on c.code=cl.CountryCode
where c.region = 'Caribbean'
order by cl.language;


#Task 12 Create a SQL statement to find all cities from the Europe continent.

select city.name as EuropeanCities
from city
inner join country as c
on c.code=city.CountryCode
where c.continent = 'Europe'
order by city.name;
