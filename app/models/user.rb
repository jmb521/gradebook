class User < ActiveRecord::Base
    has_secure_password
    
    has_many :assignments
    has_many :students, through: :assignments
    
end
