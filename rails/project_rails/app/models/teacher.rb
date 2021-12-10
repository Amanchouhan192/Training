class Teacher < ApplicationRecord
    has_and_belongs_to_many :students
    #validations
    validates :name, presence: true
end
