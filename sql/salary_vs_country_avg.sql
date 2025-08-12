-- Сравнение зарплаты со средней по стране
WITH country_avg_salary AS (
    SELECT 
        country,
        AVG(salary) AS avg_salary
    FROM clients
    GROUP BY country
)
SELECT 
    c.client_id,
    c.salary,
    c.country,
    cas.avg_salary,
    c.salary - cas.avg_salary AS difference_from_avg
FROM clients c
JOIN country_avg_salary cas ON c.country = cas.country
ORDER BY difference_from_avg DESC;
