-- Find the number of different products handled by each manager.

select Manager, product,
       count(distinct Product) as unique_products
from sales_data
group by Manager,product order by unique_products asc;

