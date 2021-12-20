class AddColumnInPersonTable < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :agreement ,:boolean ,default: false
  end
end
