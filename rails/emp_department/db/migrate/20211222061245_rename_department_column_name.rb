class RenameDepartmentColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :departments, :dept, :name
  end
end
