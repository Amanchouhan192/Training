class User < ApplicationRecord
    has_and_belongs_to_many :roles 
    validates :email, uniqueness: true
end
