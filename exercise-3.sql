SELECT
    LOWER(country),
COUNT(*) AS `Number of Addresses`
FROM Address
    GROUP BY country 
    ORDER BY `Number of Addresses` DESC;
    --249 rows in this table with Mozambique having largest number of addresses of 18