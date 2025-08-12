-- Процент ушедших клиентов по типам карт
SELECT 
    card_type,
    COUNT(*) AS total_clients,
    SUM(CASE WHEN active = FALSE THEN 1 ELSE 0 END) AS churned_clients,
    ROUND(SUM(CASE WHEN active = FALSE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_percentage
FROM clients
GROUP BY card_type
ORDER BY churn_percentage DESC;
