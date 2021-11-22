class AddUserRefToUserRole < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :user_role, foreign_key: true
  end
end
