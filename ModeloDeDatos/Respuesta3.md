SELECT
students.`name` AS estudiante,
AVG(exams.grade) AS proemdio_nota,
classrooms.`name` AS clase
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
JOIN classrooms
ON create_join_table_enrollments.classroom_id = classrooms.id
GROUP BY
create_join_table_enrollments.classroom_id
