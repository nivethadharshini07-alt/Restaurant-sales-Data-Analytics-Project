-- Calculate the total sales for each city and classify the city as High Sales if total sales is above 100,000, otherwise Low Sales.

select City,
       round(sum(Price * Quantity),4) as total_sales,
       case
           when sum(Price * Quantity) > 200000 then 'High Sales'
           else 'Low Sales'
       end as sales_status
from sales_data
group by City
order by total_sales desc;