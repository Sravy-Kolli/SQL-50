SELECT ROUND(
    COUNT(*) / (SELECT COUNT(DISTINCT player_id) FROM activity),2) AS fraction
FROM( 

SELECT a.player_id, a.device_id, a.event_date, a.games_played FROM Activity as a
JOIN 
(SELECT player_id, MIN(event_date) AS first_date  
FROM Activity 
GROUP BY Player_id )as first_login
ON a.player_id = first_login.player_id
AND 
a.event_date = first_login.first_date + INTERVAL 1 DAY) as next_day_player
