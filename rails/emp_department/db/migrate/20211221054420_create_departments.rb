class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
      create_table :departments do |t|

      t.timestamps
    end
  end
end
