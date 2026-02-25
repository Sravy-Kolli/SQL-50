# Write your MySQL query statement below
select signups.user_id ,ROUND(IFNULL(COUNT(CASE WHEN action='confirmed' THEN '1' END)/COUNT(confirmations.user_id),0),2) as confirmation_rate from signups  
left join confirmations  on Signups.user_id = Confirmations.user_id 
GROUP BY signups.user_id

