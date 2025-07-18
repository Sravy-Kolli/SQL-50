SELECT name, bonus FROM Employee 
LEFT JOIN bonus ON employee.empid = bonus.empid
WHERE bonus<1000 OR bonus is NULL;
 
