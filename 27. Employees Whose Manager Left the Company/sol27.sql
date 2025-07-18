SELECT employee_id FROM employees 
WHERE salary <30000
and manager_id IS NOT NULL 
and manager_id NOT IN
(SELECT employee_id FROM employees  )
ORDER BY employee_id
