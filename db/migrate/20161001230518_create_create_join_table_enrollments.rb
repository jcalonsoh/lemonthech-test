class CreateCreateJoinTableEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :create_join_table_enrollments do |t|
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
