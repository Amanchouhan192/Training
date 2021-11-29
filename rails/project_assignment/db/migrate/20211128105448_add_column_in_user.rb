class AddColumnInUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :age, :string
    add_column :users, :phone, :string
  end
end
