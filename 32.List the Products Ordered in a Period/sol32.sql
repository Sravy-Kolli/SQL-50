SELECT product_name ,  SUM(unit) as unit FROM orders 
JOIN products on Products.product_id = Orders.product_id
WHERE YEAR(ORDER_DATE)=2020 AND month(order_date)=2
GROUP BY product_name 
HAVING unit>=100
