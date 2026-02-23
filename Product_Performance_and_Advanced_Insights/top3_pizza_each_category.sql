-- Determining which 3 pizza types bring in the most revenue per category


-- using subquery
select y.name,y.revenue
FROM
(select x.category,x.name,x.revenue,
rank() over (partition by x.category order by x.revenue desc) as rn
from
(select pt.category,pt.name,
round(sum((od.quantity * p.price)),2) as revenue
from pizza_types as pt 
join pizzas as p on pt.pizza_type_id = p.pizza_type_id
join order_details as od on od.pizza_id = p.pizza_id
group by pt.category,pt.name) x) y 
where rn<=3


--using CTE
WITH pizza_revenue AS (
    SELECT 
        pt.category,
        pt.name,
        ROUND(SUM(od.quantity * p.price), 2) AS revenue
    FROM pizza_types pt
    JOIN pizzas p 
        ON pt.pizza_type_id = p.pizza_type_id
    JOIN order_details od 
        ON od.pizza_id = p.pizza_id
    GROUP BY 
        pt.category, 
        pt.name
),
ranked_pizzas AS (
    SELECT 
        category,
        name,
        revenue,
        RANK() OVER (
            PARTITION BY category 
            ORDER BY revenue DESC
        ) AS rn
    FROM pizza_revenue
)

SELECT 
    name,
    revenue
FROM ranked_pizzas
WHERE rn <= 3;

