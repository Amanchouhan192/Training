class CreateTwitters < ActiveRecord::Migration[6.1]
  def change
    create_table :twitters do |t|
      t.string :body

      t.timestamps
    end
  end
end
