-- Find the products whose total quantity sold is more than 30000.

select Product,
       round(sum(Quantity),2) as total_quantity
from sales_data
group by Product
having sum(Quantity) > 30000;