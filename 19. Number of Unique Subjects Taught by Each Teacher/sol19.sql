SELECT teacher_id ,COUNT(distinct subject_id) AS cnt 
FROM  teacher 
group by teacher_id 
