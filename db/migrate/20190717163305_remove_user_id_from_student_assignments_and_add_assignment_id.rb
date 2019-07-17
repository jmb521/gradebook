class RemoveUserIdFromStudentAssignmentsAndAddAssignmentId < ActiveRecord::Migration
  def change
    remove_column :student_assignments, :user_id
    add_column :student_assignments, :assignment_id, :integer
  end
end
