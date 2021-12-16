class AddRefDepToEmp < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees ,:department , foreign_key: true
  end
end
