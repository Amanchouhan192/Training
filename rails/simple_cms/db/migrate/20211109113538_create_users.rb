class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :last_name 
      t.string :first_name
      t.string :email

      #validates :first_name,:last_name, presence: true

      t.timestamps # generated automatically which tells created_at and updated_at
    end
  end
end
