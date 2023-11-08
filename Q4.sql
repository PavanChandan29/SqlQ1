select top 1 menu.product_name, count(sales.product_id) as most_bought 
from dannys_diner.sales
inner join dannys_diner.menu on sales.product_id = menu.product_id 
group by menu.product_name order by most_bought desc;