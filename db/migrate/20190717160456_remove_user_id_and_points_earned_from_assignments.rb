class RemoveUserIdAndPointsEarnedFromAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :student_id
    remove_column :assignments, :points_earned
  end
end
