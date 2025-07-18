SELECT managers.employee_id, managers.name , COUNT(report.employee_id) as reports_count ,ROUND( AVG(report.age) )as average_age FROM Employees as managers JOIN employees as report
ON managers.employee_id = report.reports_to

GROUP BY managers.employee_id
ORDER BY employee_id

