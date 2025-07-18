SELECT queries.query_name,ROUND( SUM(rating/position)/COUNT(*) ,2) AS quality ,ROUND(count(( CASE when rating<3 THEN 1 END)) * 100 /COUNT(*) ,2) as poor_query_percentage
FROM queries
group by query_name
