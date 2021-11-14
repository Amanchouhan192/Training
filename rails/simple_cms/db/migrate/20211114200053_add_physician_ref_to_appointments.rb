class AddPhysicianRefToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :physician, null: false, foreign_key: true
  end
end
