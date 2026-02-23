--Calculating cumulative revenue over time

SELECT 
    x.date,
    ROUND(SUM(x.revenue) OVER (ORDER BY x.date), 2) AS cumulative_revenue
FROM (
    SELECT 
        o.date,
        SUM(od.quantity * p.price) AS revenue
    FROM order_details od
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    JOIN orders o ON o.order_id = od.order_id
    GROUP BY o.date
) x
ORDER BY x.date