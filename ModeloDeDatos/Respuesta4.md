SELECT
courses.`name` AS ramo,
students.`name` AS estudiante,
AVG(exams.grade) AS promedio_nota
FROM
create_join_table_enrollments
JOIN courses
ON create_join_table_enrollments.course_id = courses.id 
JOIN students
ON create_join_table_enrollments.student_id = students.id 
JOIN exams
ON create_join_table_enrollments.student_id = exams.student_id
AND exams.student_id = students.id
AND exams.course_id = courses.id
GROUP BY
students.id, courses.id
