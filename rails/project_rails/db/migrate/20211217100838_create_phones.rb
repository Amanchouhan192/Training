class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :model_number
      t.string :company
      t.timestamps
    end
  end
end
