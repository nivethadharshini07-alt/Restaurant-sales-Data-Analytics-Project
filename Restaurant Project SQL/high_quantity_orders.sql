-- Find all orders where the quantity is greater than 600.

select `Order ID`,Product,Quantity,Price
from sales_data
where Quantity > 600;

