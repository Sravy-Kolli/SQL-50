SELECT employee_id, department_id FROM Employee
WHERE employee.primary_flag =  'Y' 
UNION
SELECT employee_id, department_id FROM employee
GROUP BY EMPLOYEE_ID
HAVING COUNT(employee_id )=1 

