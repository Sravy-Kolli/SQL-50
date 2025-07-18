SELECT manager.name from employee as manager 
JOIN employee as emp  ON emp.managerId = manager.id
group by  emp.managerId
HAVING count(emp.managerId)>=5
