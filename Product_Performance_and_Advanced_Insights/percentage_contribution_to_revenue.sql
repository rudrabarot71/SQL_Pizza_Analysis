--Computing each pizza category's share of total revenue as a percentage


WITH RevenuePerCategory AS (
    SELECT 
        pt.category,
        ROUND(SUM(od.quantity * p.price), 2) AS category_revenue
    FROM pizzas AS p
    JOIN pizza_types AS pt 
        ON p.pizza_type_id = pt.pizza_type_id
    JOIN order_details AS od 
        ON od.pizza_id = p.pizza_id
    GROUP BY pt.category
),
TotalRevenue AS (
    SELECT 
        ROUND(SUM(category_revenue), 2) AS total_revenue
    FROM RevenuePerCategory
)
SELECT 
    rc.category,
    ROUND(rc.category_revenue, 2) AS category_revenue,
    ROUND(
        (rc.category_revenue * 100.0) / tr.total_revenue, 
        2
    ) AS revenue_percentage
FROM RevenuePerCategory rc
CROSS JOIN TotalRevenue tr
ORDER BY revenue_percentage DESC