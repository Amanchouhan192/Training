class AddingColumnInAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors,:name,:string
  end
end
