class AddEmpIdColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :emp_id, :integer
  end
end
