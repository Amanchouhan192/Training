class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_data
      t.belongs_to :patient
      t.belongs_to :physician
      t.timestamps
    end
  end
end
