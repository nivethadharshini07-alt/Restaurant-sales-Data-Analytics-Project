-- Find the percentage of orders for each purchase type (Online / Offline).

select `purchase type`, count(*) as total_orders,
round(count(*) * 100.0 / (select count(*) from sales_data), 2) as order_percentage
from sales_data
group by `purchase type`;