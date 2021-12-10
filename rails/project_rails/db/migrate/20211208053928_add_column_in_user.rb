class AddColumnInUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :agreement, :boolean, default: false
  end
end
