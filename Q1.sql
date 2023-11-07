select sales.customer_id, sum(menu.price) as total_sales 
FROM dannys_diner.sales
INNER JOIN dannys_diner.menu ON sales.product_id = menu.product_id 
group by sales.customer_id;