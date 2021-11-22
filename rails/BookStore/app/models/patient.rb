class Patient < ApplicationRecord
    has_many :appointments
    has_many :physicians, through: :appointments
    # validation 
    validates_associated :appointments
    validates_associated :physicians


end
