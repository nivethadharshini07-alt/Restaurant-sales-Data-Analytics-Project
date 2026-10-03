-- total sales amount for each month.

select date_format(str_to_date(`date`, '%d-%m-%Y'), '%Y-%m') as month,
round(sum(price * quantity),2) as total_sales
from sales_data
group by date_format(str_to_date(`date`, '%d-%m-%Y'), '%Y-%m')
order by month;