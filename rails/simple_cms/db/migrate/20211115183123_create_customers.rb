class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :cust_name

      t.timestamps
    end
  end
end
