class CreatingJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :phones, :customers
  end
end
