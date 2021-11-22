class AddUserRoleRefToRole < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_roles, :role, foreign_key: true
  end
end
