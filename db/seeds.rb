# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student_list = %w(Jose Pablo Denis Javier Daniel)

student_list.each do |student|
  Student.create( name: student )
end

teacher_list = [
    'Ing. Dongo',
    'Profesor Xavier',
    'Economista Luisa'
]

teacher_list.each do |teacher|
  Teacher.create( name: teacher )
end

course_list = [
    [ 'Programación', Teacher.where(:name => 'Ing. Dongo').first.id ],
    [ 'Economia', Teacher.where(:name => 'Economista Luisa').first.id ],
    [ 'Base de Datos', Teacher.where(:name => 'Profesor Xavier').first.id ],
]

course_list.each do |course, professor_id|
  Course.create( name: course, teacher_id: professor_id)
end

enrollment_list = [
    [ Student.where(:name => 'Jose').first.id, Teacher.where(:name => 'Ing. Dongo').first.id, Course.where(:name =>'Programación').first.id ],
    [ Student.where(:name => 'Jose').first.id, Teacher.where(:name => 'Economista Luisa').first.id, Course.where(:name =>'Economia').first.id ],
    [ Student.where(:name => 'Jose').first.id, Teacher.where(:name => 'Profesor Xavier').first.id, Course.where(:name =>'Base de Datos').first.id ],
    [ Student.where(:name => 'Pablo').first.id, Teacher.where(:name => 'Ing. Dongo').first.id, Course.where(:name =>'Programación').first.id ],
    [ Student.where(:name => 'Javier').first.id, Teacher.where(:name => 'Ing. Dongo').first.id, Course.where(:name =>'Programación').first.id ],
    [ Student.where(:name => 'Daniel').first.id, Teacher.where(:name => 'Ing. Dongo').first.id, Course.where(:name =>'Programación').first.id ]
]

enrollment_list.each do |student, professor, course|
  CreateJoinTableEnrollment.create( student_id: student, teacher_id: professor, course_id: course)
end

exam_list = [
    [ 45, Student.where(:name => 'Jose').first.id, Course.where(:name =>'Programación').first.id],
    [ 65, Student.where(:name => 'Pablo').first.id, Course.where(:name =>'Programación').first.id],
    [ 80, Student.where(:name => 'Javier').first.id, Course.where(:name =>'Programación').first.id],
    [ 80, Student.where(:name => 'Daniel').first.id, Course.where(:name =>'Programación').first.id],
    [ 20, Student.where(:name => 'Denis').first.id, Course.where(:name =>'Programación').first.id],
    [ 70, Student.where(:name => 'Jose').first.id, Course.where(:name =>'Economia').first.id],
    [ 32, Student.where(:name => 'Pablo').first.id, Course.where(:name =>'Economia').first.id],
    [ 40, Student.where(:name => 'Javier').first.id, Course.where(:name =>'Economia').first.id],
    [ 80, Student.where(:name => 'Daniel').first.id, Course.where(:name =>'Economia').first.id],
    [ 92, Student.where(:name => 'Denis').first.id, Course.where(:name =>'Economia').first.id],
    [ 70, Student.where(:name => 'Jose').first.id, Course.where(:name =>'Base de Datos').first.id],
    [ 86, Student.where(:name => 'Pablo').first.id, Course.where(:name =>'Base de Datos').first.id],
    [ 65, Student.where(:name => 'Javier').first.id, Course.where(:name =>'Base de Datos').first.id],
    [ 70, Student.where(:name => 'Daniel').first.id, Course.where(:name =>'Base de Datos').first.id],
    [ 90, Student.where(:name => 'Denis').first.id, Course.where(:name =>'Base de Datos').first.id],
]

exam_list.each do |grade, student, course|
  Exam.create(grade: grade, student_id: student, course_id: course)
end
