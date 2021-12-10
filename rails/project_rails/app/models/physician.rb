class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, :through => :appointments
    #validations
    validates :name ,presence: true

end
