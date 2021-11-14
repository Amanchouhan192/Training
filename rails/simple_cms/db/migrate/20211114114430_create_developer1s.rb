class CreateDeveloper1s < ActiveRecord::Migration[6.1]
  def change
    create_table :developer1s do |t|
        t.integer :dev_id
        t.string  :name
      t.timestamps
    end
  end
end
