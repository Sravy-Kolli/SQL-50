# Write your MySQL query statement below
select product_name, year, price  from sales 
left join Product ON sales.product_id = Product.product_id;