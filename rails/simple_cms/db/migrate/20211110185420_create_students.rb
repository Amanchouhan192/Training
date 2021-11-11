class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :lname 
      t.string :fname
      t.timestamps
    end
  end
end
