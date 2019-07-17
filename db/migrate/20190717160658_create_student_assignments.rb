class CreateStudentAssignments < ActiveRecord::Migration
  def change
    create_table :student_assignments do |t|
      t.integer :student_id
      t.integer :user_id
      t.integer :points_earned
      t.timestamps null: false
    end
  end
end
