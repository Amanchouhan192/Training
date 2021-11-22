class AddSupplierRefToAccount < ActiveRecord::Migration[6.1]
  def change
    add_reference :accounts,:supplier,foreign_key: true
  end
end
