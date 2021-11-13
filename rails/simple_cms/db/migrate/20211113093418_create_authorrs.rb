class CreateAuthorrs < ActiveRecord::Migration[6.1]
  def change
    create_table :authorrs do |t|
      t.string :name

      t.timestamps
    end
  end
end
