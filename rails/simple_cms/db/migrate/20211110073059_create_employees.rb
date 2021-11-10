class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :occupation 
      t.string :name

      t.timestamps
    end
  end
end
