class CreatePeaks < ActiveRecord::Migration[6.1]
  def change
    create_table :peaks do |t|
      t.float :peak_price

      t.timestamps
    end
  end
end
