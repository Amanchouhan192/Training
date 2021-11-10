class RemovePartNumberFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :part_number, :string
  end
end
