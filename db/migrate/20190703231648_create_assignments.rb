class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :points_earned
      t.integer :points_assigned
      t.integer :student_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
