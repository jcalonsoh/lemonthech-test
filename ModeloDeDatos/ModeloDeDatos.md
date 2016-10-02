Base de Datos Mysql

RAILS_ENV=test bundle exec rails g model Students name:string 
RAILS_ENV=test bundle exec rails g model Teachers name:string
RAILS_ENV=test bundle exec rails g model Classrooms name:string
RAILS_ENV=test bundle exec rails g model Courses name:string teacher:belongs_to 
RAILS_ENV=test bundle exec rails g model Exams grade:decimal:default:100 date:datetime student:belongs_to course:belongs_to
RAILS_ENV=test bundle exec rails g model CreateJoinTableEnrollment student:references teacher:references course:references classroom:references

rails db:environment:set RAILS_ENV=test
RAILS_ENV=test bundle exec rails db:drop
RAILS_ENV=test bundle exec rails db:create
RAILS_ENV=test bundle exec rails db:migrate
RAILS_ENV=test bundle exec rails db:seed
RAILS_ENV=test bundle exec erd