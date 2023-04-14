USE world;
-- Retrieve all of the information from table city -- 
Select * FROM City;

-- Retrieve all of the information from table country -- 
Select * FROM Country;

-- How many records city has --
Select count(*) FROM City;

-- How Many Records in country --
Select count(*) FROM Country;
-- Get set of records matching some criteria population more than 7 million --
select * FROM City where Population>7000000;

-- Get Name and head of state name where population more than 5 million and life expectancy 70 -- 
SELECT Name, HeadOfState FROM country 
WHERE Population>5000000 and LifeExpectancy>70;

-- List Name and Population fields from country table that are Caribbean region and population > 8000000 -- 
SELECT Name, Population FROM country
WHERE Region="Caribbean" and Population>8000000;
# Make it descending
SELECT Name, Population FROM country
WHERE Region="Caribbean" and Population>8000000
ORDER BY Population desc;

-- Give the name and the per capita GNP for those countries a population of at least 200 million and having GNPper capota atleast .005 -- 
Select Name, GNP/Population as GNPperCapita FROM country
WHERE Population>=2000000000
Having GNPperCapita>=.005;

# Show the name and population for France, Germany, Italy
Select Name, Population FROM country 
WHERE name IN ("France", "Germany", "Italy");
#A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million. Show the countries that are big by area or big by population. Show name, population and area.
SELECT Name, Population, SurfaceArea FROM country
where SurfaceArea>3000000 or Population>250000000 
Order by population desc;

-- The name of three countries which are least populated among the countries which have at least 40,0000 people
SELECT name, Population FROM country 
WHERE Population>40000
order by Population limit 3;

-- Search for population in the last table where Name contains ‘U.S.’
SELECT Name, Population FROM country 
WHERE Name Like "%U.S.%";

-- Search for records in the Country table where the head of state’s name 'bush'
Select Name, HeadOfState FROM country 
WHERE HeadOfState Like "%bush%";

-- Search for records in the Country table where the head of state’s name end with 'II'
select * from Country where HeadofState like '%II';

-- Search for records in the Country table where the head of state’s name ends with ‘i’,
select * from Country where HeadofState like '%i';
 
-- And the country name starts with a ‘U’.
select * from Country where Name like 'U%';
 
-- Select the country with the minimum population
select min(Population) from Country;

-- Select the city name with the maximum population
select max(Population) from Country;

# Find out the language spoken for the cities started with UZ
select c.Name, l.Language from City c join CountryLanguage l on c.CountryCode=l.CountryCode where c.Name like 'UZ%';