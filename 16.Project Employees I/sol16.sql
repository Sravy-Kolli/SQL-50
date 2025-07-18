SELECT project_id, ROUND(AVG(experience_years),2) AS average_years from Project 
JOIN Employee ON project.employee_id = employee.employee_id
GROUP BY project_id
