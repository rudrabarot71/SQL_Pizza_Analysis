-- Identifying the five most frequently ordered pizza types based on quantity sold

SELECT TOP 5
    pt.name,
    SUM(od.quantity) AS quantity
FROM
    pizza_types AS pt
JOIN
    pizzas AS p
        ON pt.pizza_type_id = p.pizza_type_id
JOIN
    order_details AS od
        ON od.pizza_id = p.pizza_id
GROUP BY
    pt.name
ORDER BY
    quantity DESC




















