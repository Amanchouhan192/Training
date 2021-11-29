class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.string  :password
      t.integer :age
      t.string  :gender
      t.string  :phone
      t.timestamps
    end
  end
end
