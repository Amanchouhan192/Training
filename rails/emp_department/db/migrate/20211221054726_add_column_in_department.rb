class AddColumnInDepartment < ActiveRecord::Migration[6.1]
  def change
    add_column :departments, :dept, :string
  end
end
