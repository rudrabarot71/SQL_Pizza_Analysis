-- Calculating the Average revenue per day
SELECT 
    ROUND(AVG(daily_revenue),-2) AS avg_revenue_per_day
FROM (
    SELECT 
        o.date,
        SUM(od.quantity * p.price) AS daily_revenue
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    GROUP BY o.date
) AS revenue_totals