class Student < ActiveRecord::Base
    belongs_to :user
    has_many :student_assignments
    has_many :assignments, through: :student_assignments
end
