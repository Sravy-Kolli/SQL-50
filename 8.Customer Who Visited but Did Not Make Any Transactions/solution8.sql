SELECT visits.customer_id, COUNT(visits.customer_id) as count_no_trans
FROM visits
left join transactions ON visits.visit_id = transactions.visit_id
WHERE transaction_id is NULL 
GROUP BY visits.customer_id
