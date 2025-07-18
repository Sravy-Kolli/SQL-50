SELECT contest_id,ROUND( (COUNT(DISTINCT register.user_id)/ (SELECT COUNT(*) FROM users) * 100.0 ),2) as percentage 
FROM Register 
GROUP BY contest_id 
ORDER BY percentage  DESC , contest_id  ASC 

