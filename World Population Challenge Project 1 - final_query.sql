



-- This is the first query:

SELECT DISTINCT year
FROM population_years;

-- Populations of Gabon:

SELECT * FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC;

-- Smallest 2005 countries by population:

SELECT * FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

-- Countries with >100M population in 2010

SELECT DISTINCT country
FROM population_years
WHERE population > 100
AND year = 2010;

-- Countries containing "islands"

SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%Islands%';

-- Difference in population in Indonesia:

SELECT * 
FROM population_years
WHERE country = 'Indonesia' AND year = 2000
OR country = 'Indonesia' AND year = 2010;
