-- Страны, где используются не все типы карт
WITH card_type_stats AS (
    SELECT 
        country,
        COUNT(DISTINCT card_type) AS used_types,
        (SELECT COUNT(DISTINCT card_type) FROM clients) AS total_types
    FROM clients
    GROUP BY country
)
SELECT 
    country,
    used_types,
    total_types
FROM card_type_stats
WHERE used_types < total_types;
