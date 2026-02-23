-- Identifying the highest priced pizza

SELECT pt.name,
       ROUND(p.price, 2) AS price
FROM pizza_types AS pt
JOIN pizzas AS p 
    ON pt.pizza_type_id = p.pizza_type_id
WHERE p.price = (
    SELECT MAX(price)
    FROM pizzas
)