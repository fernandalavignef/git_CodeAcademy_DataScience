



-- How many entries in the countries table are from Africa?

SELECT count(*)
FROM countries
WHERE continent = 'Africa';

-- What was the total population of the continent of Oceania in 2005?

SELECT sum(population)
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE continent = 'Oceania'
	AND year = 2005

-- What is the average population of countries in South America in 2003?

SELECT avg(population)
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE continent = 'South America'
	AND year = 2003

-- What country had the smallest population in 2007?

SELECT name, min(population)
FROM population_years
JOIN countries
	ON	population_years.country_id = countries.id
WHERE year = 2007

-- What is the average population of Poland during the time period covered by this dataset?

SELECT avg(population)
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE name = 'Poland'

-- How many countries have the word �The� in their name?

SELECT count(*)
FROM countries
WHERE name like '%The%'

-- What was the total population of each continent in 2010?

SELECT continent, population
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE year = 2010
GROUP BY continent