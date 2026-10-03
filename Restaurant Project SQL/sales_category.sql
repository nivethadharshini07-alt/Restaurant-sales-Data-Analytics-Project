-- Classify each order based on its total sales.

select `order id`,product,price * quantity as total_sales,
case
	when price * quantity > 500 then 'High'
	when price * quantity >= 200 then 'Medium'
	else 'Low'
end as `sales category`
from sales_data;
