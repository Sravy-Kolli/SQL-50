# Write your MySQL query statement below
select project_id , ROUND(SUM(experience_years)/COUNT(project.employee_id),2) as average_years from project left join employee ON
project.employee_id = employee.employee_id 
group by project_id  