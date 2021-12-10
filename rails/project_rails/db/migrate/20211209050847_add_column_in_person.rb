class AddColumnInPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people ,:address ,:string
  end
end
