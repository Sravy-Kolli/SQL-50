SELECT prices.product_id, ROUND(IFNULL(SUM(Prices.price* UnitsSold.units)/SUM(UnitsSold.units) ,0),2) as average_price
FROM Prices LEFT JOIN UnitSSold ON Prices.product_id = UnitsSold.product_id 
AND UnitsSold.purchase_date BETWEEN Prices.start_date AND prices.end_date
GROUP BY prices.product_id
