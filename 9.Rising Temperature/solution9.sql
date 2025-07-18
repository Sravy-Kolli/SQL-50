SELECT today.id FROM Weather as today
JOIN weather as yesterday
ON DATEDIFF(today.RecordDate, yesterday.RecordDate) =1
where today.temperature > yesterday.temperature
