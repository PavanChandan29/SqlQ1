with cte as (select *, DENSE_RANK() over (order by order_date) as first_item 
from dannys_diner.sales)
select customer_id, product_name from cte 
INNER JOIN dannys_diner.menu ON cte.product_id = menu.product_id 
where first_item = 1 group by customer_id,product_name;