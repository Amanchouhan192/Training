class CreateGroupes < ActiveRecord::Migration[6.1]
  def change
    create_table :groupes do |t|
      t.string :group_name

      t.timestamps
    end
  end
end
