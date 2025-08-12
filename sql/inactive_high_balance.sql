-- Количество неактивных клиентов с балансом > 100000
SELECT COUNT(*) AS inactive_high_balance_clients
FROM clients
WHERE active = FALSE AND balance > 100000;
