-- ////////////////////////////////////////////////////////
-- Subj:    Coding Dojo > Python > MySQL > Queries: Countries
-- By:      Virgilio D. Cabading Jr.    Created: November 02, 2021
-- ////////////////////////////////////////////////////////

-- 1.   get all the countries that speak Slovene 
--          Return the name of the country, language and language percentage
--          Arrange the result by language percentage in descending order

SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;

-- 2.   display the total number of cities for each country
--          return the name of the country and the total number of cities
--          arrange the result by the number of cities in descending order

SELECT countries.name, COUNT(*) FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id
ORDER BY COUNT(*) DESC;

-- 3.   get all the cities in Mexico with a population of greater than 500,000
--           arrange the result by population in descending order

SELECT cities.name, countries.name, cities.population FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Mexico' AND cities.population > 500000
ORDER BY cities.population DESC;

-- 4.   get all languages in each country with a percentage greater than 89%
--          arrange the result by percentage in descending order

SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

-- 5.   get all the countries with Surface Area below 501 
--          get all the countries with Surface Area below 501 

SELECT countries.name, countries.surface_area, countries.population FROM COUNTRIES
WHERE countries.surface_area < 501 and countries.population > 100000;

-- 6.    get countries with only Constitutional Monarchy
--          with a capital greater than 200
--          and a life expectancy greater than 75 years

SELECT countries.name, countries.government_form, countries.capital, 
countries.life_expectancy from countries
WHERE countries.government_form = 'Constitutional Monarchy' 
AND countries.capital > 200
AND countries.life_expectancy > 75
GROUP BY countries.name;

-- 7.    get all the cities of Argentina inside the Buenos Aires district
--           and have the population greater than 500,000

SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Argentina'
AND cities.district = 'Buenos Aires'
AND cities.population > 500000;

-- 8.   summarize the number of countries in each region
--          display the name of the region and the number of countries
--          arrange the result by the number of countries in descending order

SELECT countries.region, COUNT(*)
FROM countries
GROUP BY countries.region
ORDER BY COUNT(*) DESC;