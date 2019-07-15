class Student < ActiveRecord::Base
    
    has_many :assignments
    has_many :assignments, through: :user
end
