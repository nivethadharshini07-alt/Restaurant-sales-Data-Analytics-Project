-- Find the managers whose total sales are greater than the average total sales of all managers.

select Manager,
       round(sum(Price * Quantity),4) as total_sales
from sales_data
group by Manager
having sum(Price * Quantity) > (
    select avg(manager_sales)
    from (
        select sum(Price * Quantity) as manager_sales
        from sales_data
        group by Manager
    ) as temp
);