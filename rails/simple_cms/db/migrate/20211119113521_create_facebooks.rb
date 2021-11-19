class CreateFacebooks < ActiveRecord::Migration[6.1]
  def change
    create_table :facebooks do |t|
      t.string :body

      t.timestamps
    end
  end
end
