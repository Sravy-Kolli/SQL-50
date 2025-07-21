SELECT signups.user_id ,
CASE
    WHEN COUNT(confirmations.user_id)=0 THEN 0
    
    ELSE ROUND(COUNT(CASE WHEN action='confirmed' THEN 1 END)/COUNT(confirmations.user_id),2)
   
END as confirmation_rate
FROM signups LEFT JOIN confirmations ON signups.user_id = confirmations.user_id
GROUP BY signups.user_id
