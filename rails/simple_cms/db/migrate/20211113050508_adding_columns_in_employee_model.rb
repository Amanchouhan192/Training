class AddingColumnsInEmployeeModel < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees,:name, :fname
    add_column    :employees,:lname,:string
    add_column    :employees,:date_of_birth,:date
    add_column    :employees,:email,:string
    rename_column :employees,:occupation,:dept
    add_column    :employees,:salary,:string
    
  end
end
