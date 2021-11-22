class AddRoleRefToUserRole < ActiveRecord::Migration[6.1]
  def change
    add_reference :roles, :user_role, foreign_key: true
  end
end
