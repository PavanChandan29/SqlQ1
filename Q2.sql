SELECT 
  customer_id, 
  COUNT(DISTINCT order_date) AS no_of_visits
FROM dannys_diner.sales
GROUP BY customer_id;
/* USE DISTINCT TO AVOID DUPLICATE DATES COUNT */