with cte as (select sales.customer_id, menu.product_name, count(sales.product_id) as most_bought, 
DENSE_RANK() over (partition by sales.customer_id order by COUNT(sales.customer_id) desc) as item_rank 
from dannys_diner.sales 
inner join dannys_diner.menu on sales.product_id = menu.product_id 
group by menu.product_name, sales.customer_id)
select customer_id, product_name from cte where item_rank=1;