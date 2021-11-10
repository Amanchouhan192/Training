class AddPartNumberToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :part_number, :string
    add_index :products, :part_number
  end
end
