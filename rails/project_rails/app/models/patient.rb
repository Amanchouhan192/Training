class Patient < ApplicationRecord
    has_many :appointments
    has_many :physicians , :through => :appointments
    #validations
    validates :name,presence: true
    
end
