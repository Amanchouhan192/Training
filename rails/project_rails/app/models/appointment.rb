class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :physician
    #validations
    #validates :patient_id, presence:true
    #validates :physician_id, presence:true
end
