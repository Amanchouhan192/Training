class CreateProdcuts < ActiveRecord::Migration[6.1]
  def change
    create_table :prodcuts do |t|
      t.string :prod_name

      t.timestamps
    end
  end
end
