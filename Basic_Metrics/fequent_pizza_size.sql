-- Identifying the size of the pizza which is ordered the most

SELECT TOP 1
    p.size,
    COUNT(od.order_details_id) AS order_count
FROM
    pizzas AS p
JOIN
    order_details AS od
        ON p.pizza_id = od.pizza_id
GROUP BY
    p.size
ORDER BY
    order_count DESC