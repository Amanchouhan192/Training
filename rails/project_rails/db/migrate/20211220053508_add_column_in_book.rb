class AddColumnInBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :out_of_print, :boolean, default: false
  end
end
