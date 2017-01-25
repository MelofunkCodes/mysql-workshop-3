SELECT
    LOWER(country),
COUNT(*) AS `Number of Addresses`
FROM Address
    GROUP BY country 
    ORDER BY `Number of Addresses` DESC;