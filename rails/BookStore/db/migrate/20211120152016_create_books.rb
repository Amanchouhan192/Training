class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.datetime :published_date
      t.timestamps
    end
  end
end
