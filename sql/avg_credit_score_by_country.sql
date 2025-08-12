-- Средний кредитный рейтинг по странам
SELECT 
    country,
    ROUND(AVG(credit_score), 2) AS avg_credit_score
FROM clients
GROUP BY country
ORDER BY avg_credit_score DESC;
