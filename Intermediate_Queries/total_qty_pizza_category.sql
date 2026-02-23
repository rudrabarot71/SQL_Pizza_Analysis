--Combining tables to aggregate total order quantity by pizza category
SELECT
    SUM(od.quantity) AS quantity,
    pt.category      AS category
FROM
    order_details AS od
JOIN
    pizzas AS p
        ON od.pizza_id = p.pizza_id
JOIN
    pizza_types AS pt
        ON p.pizza_type_id = pt.pizza_type_id
GROUP BY
    pt.category
ORDER BY
    quantity DESC