class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.decimal :grade, :default => 100
      t.datetime :date
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
