# Write your MySQL query statement below
select contest_id , ROUND(COUNT(register.user_id) / (SELECT COUNT(*)from users)*100 ,2) as percentage 
from users right join register on users.user_id = register.user_id 
group by contest_id 
order by percentage desc , contest_id asc;