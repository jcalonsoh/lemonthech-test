SELECT
students.`name` AS estudiantes,
courses.`name` AS materia
FROM
create_join_table_enrollments
JOIN students
ON create_join_table_enrollments.student_id = students.id 
JOIN courses
ON create_join_table_enrollments.course_id = courses.id
WHERE
courses.name like '%programacion%'
