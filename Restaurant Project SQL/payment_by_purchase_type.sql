-- Find the number of orders for each combination of purchase type and payment method.

select `purchase type`,
       `payment method`,
       count(*) as total_orders
from sales_data
group by `purchase type`, `payment method`
order by `purchase type`, total_orders desc;