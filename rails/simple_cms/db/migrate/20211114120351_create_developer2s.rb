class CreateDeveloper2s < ActiveRecord::Migration[6.1]
  def change
    create_table :developer2s do |t|
      t.integer :dev_id
      t.string  :name
      t.timestamps
    end
  end
end
