# Write your MySQL query statement below
select customer_id , COUNT(visits.visit_id) as count_no_trans 
from visits left join transactions on visits.visit_id = transactions.visit_id 
where 
transaction_id is null 
GROUP BY customer_id;