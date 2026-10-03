-- Find the total number of orders made using each payment method and display the payment method with the highest number of orders first.

select `Payment Method` , count( `Order ID`) as orders_count from sales_data
group by `Payment Method` 
order by orders_count desc limit 1;

