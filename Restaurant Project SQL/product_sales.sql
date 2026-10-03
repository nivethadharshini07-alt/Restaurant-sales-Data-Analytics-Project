-- Find the total quantity sold for each product and display the products in descending order of total quantity sold.

select Product , round(sum(Quantity),2) as total_quantity from sales_data
group by Product 
order by total_quantity desc; 