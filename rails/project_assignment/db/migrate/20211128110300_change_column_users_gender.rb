class ChangeColumnUsersGender < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :age, :integer, using: 'age::integer'
  end
end
