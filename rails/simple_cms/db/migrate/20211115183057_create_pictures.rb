class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :pic_name
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
