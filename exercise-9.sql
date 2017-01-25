--List all of the cities within the countries of Canada, Austria, Isle of Man, Ireland and Japan.
SELECT
    country,
    city
FROM Address
WHERE country IN ("Canada", "Austria", "Isle Of Man", "Japan")
ORDER BY country;