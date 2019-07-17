class Assignment < ActiveRecord::Base
    belongs_to :user
    has_many :student_assignments
    has_many :students, through: :student_assignments
end
