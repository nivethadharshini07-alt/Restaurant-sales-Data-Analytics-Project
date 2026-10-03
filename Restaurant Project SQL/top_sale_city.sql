-- Find the city with the highest total sales amount.

select city,
sum(price*quantity) as total_sales
from sales_data
group by city order by total_sales desc
limit 1;