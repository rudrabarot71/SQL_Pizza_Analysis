-- Evaluating hourly order trends to find busiest and slowest periods

SELECT DATEPART(HOUR, time) AS hour,
       COUNT(order_id) AS order_count
FROM orders
GROUP BY DATEPART(HOUR, time)
ORDER BY hour

