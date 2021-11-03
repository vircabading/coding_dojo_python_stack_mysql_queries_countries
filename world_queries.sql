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