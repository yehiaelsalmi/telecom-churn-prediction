SELECT s.InternetService,
       COUNT(*) AS customers,
       SUM(c.Churn = 'Yes') AS churned,
       ROUND(AVG(c.Churn = 'Yes') * 100, 1) AS churn_rate_pct
FROM customers c
JOIN services s ON c.customerID = s.customerID
GROUP BY s.InternetService
ORDER BY churn_rate_pct DESC
