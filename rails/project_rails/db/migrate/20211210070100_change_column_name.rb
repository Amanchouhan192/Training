class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :appointments, :appointment_data, :appointment_date
  end
end
