class Student < ApplicationRecord
    has_and_belongs_to_many :teachers
    #validations
    validates :name,presence: true
end
