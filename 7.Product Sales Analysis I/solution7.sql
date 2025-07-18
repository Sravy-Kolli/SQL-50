SELECT product.product_name , sales.year, sales.price
FROM sales
  JOIN product ON sales.product_id = product.product_id;
