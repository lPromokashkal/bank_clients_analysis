-- Страны с женским большинством в топ-10 по зарплатам
WITH ranked_clients AS (
    SELECT 
        country,
        gender,
        salary,
        ROW_NUMBER() OVER (PARTITION BY country ORDER BY salary DESC) AS rank
    FROM clients
)
SELECT 
    country
FROM (
    SELECT 
        country,
        gender,
        COUNT(*) AS count
    FROM ranked_clients
    WHERE rank <= 10
    GROUP BY country, gender
) AS gender_counts
GROUP BY country
HAVING SUM(CASE WHEN gender = 'Female' THEN count ELSE 0 END) > 
       SUM(CASE WHEN gender = 'Male' THEN count ELSE 0 END);
