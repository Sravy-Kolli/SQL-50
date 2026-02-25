# Write your MySQL query statement below
select prices.product_id , ROUND(IFNULL(SUM(units* price)/SUM(units
),0),2) as average_price from prices 
left join UnitsSold on prices.product_id = UnitsSold.product_id
AND 
UnitsSold.purchase_date BETWEEN prices.start_date and prices.end_date 
group by prices.product_id;