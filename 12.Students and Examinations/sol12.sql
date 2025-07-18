SELECT students.student_id ,students.student_name, subjects.subject_name, COUNT(EXAMINATIONS.SUBJECT_NAME) as attended_exams FROM Students 
CROSS JOIN Subjects
LEFT JOIN Examinations ON students.student_id = examinations.student_id
AND subjects.subject_name = examinations.subject_name
GROUP BY Subjects.subject_name , students.student_id, students.student_name
ORDER BY students.student_id , subjects.subject_name
