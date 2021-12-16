class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees, :department, :dept
  end
end
