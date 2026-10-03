-- Find all orders where the product name contains the letter a.

select `order id`,product,price,quantity
from sales_data
where product like '%a%';