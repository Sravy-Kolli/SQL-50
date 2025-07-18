SELECT EmployeeUNI.unique_id, employees.Name
FROM employees
left join employeeUNI 
ON employees. id = employeeUNI.id ;
