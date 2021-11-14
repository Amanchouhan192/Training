class CreateSoftwareEngineers < ActiveRecord::Migration[6.1]
  def change
    create_table :software_engineers do |t|
      t.integer :dev_id
      t.string  :name
      t.timestamps
    end
  end
end
