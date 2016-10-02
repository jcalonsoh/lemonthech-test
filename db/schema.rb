# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161002203929) do

  create_table "classrooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_courses_on_teacher_id", using: :btree
  end

  create_table "create_join_table_enrollments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["classroom_id"], name: "index_create_join_table_enrollments_on_classroom_id", using: :btree
    t.index ["course_id"], name: "index_create_join_table_enrollments_on_course_id", using: :btree
    t.index ["student_id"], name: "index_create_join_table_enrollments_on_student_id", using: :btree
    t.index ["teacher_id"], name: "index_create_join_table_enrollments_on_teacher_id", using: :btree
  end

  create_table "exams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.decimal  "grade",      precision: 10, default: 0,                     null: false
    t.datetime "date",                      default: '2016-10-02 21:18:23', null: false
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.index ["course_id"], name: "index_exams_on_course_id", using: :btree
    t.index ["student_id"], name: "index_exams_on_student_id", using: :btree
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "teachers"
  add_foreign_key "create_join_table_enrollments", "classrooms"
  add_foreign_key "create_join_table_enrollments", "courses"
  add_foreign_key "create_join_table_enrollments", "students"
  add_foreign_key "create_join_table_enrollments", "teachers"
  add_foreign_key "exams", "courses"
  add_foreign_key "exams", "students"
end
