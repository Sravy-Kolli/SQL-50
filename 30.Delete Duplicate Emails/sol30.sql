DELETE  from Person 
WHERE id NOT IN 
(
    SELECT min_id FROM (
        SELECT min(id) as min_id FROM person
        GROUP BY email 
        )as temp_table 
)
