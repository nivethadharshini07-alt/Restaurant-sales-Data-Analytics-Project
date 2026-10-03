-- Find the maximum and minimum price for each product.

select product,max(price) as max_price,min(price) as min_price
from sales_data
group by product;

