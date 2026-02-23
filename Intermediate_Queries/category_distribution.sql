---- Aggregating data by category to evaluate pizza distribution patterns

select count(pizza_type_id),category
from pizza_types
group by category