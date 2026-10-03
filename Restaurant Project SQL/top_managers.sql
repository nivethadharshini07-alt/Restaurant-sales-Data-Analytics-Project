-- Find the top 3 managers based on their total sales amount.

select manager, round(sum(price * quantity),3) as total_sales
from sales_data
group by manager
order by total_sales desc
limit 3;