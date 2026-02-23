-- Identifying the top 3 pizza types generating the highest total revenue

SELECT TOP 3
    pt.name AS Pizza,
    ROUND(SUM(od.quantity * p.price), 2) AS total_revenue_by_pizza_type
FROM pizzas AS p
JOIN pizza_types AS pt
    ON p.pizza_type_id = pt.pizza_type_id
JOIN order_details AS od
    ON od.pizza_id = p.pizza_id
GROUP BY 
    pt.name
ORDER BY 
    total_revenue_by_pizza_type DESC 