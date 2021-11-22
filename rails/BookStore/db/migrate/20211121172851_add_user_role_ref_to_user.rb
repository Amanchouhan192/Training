class AddUserRoleRefToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_roles, :user, foreign_key: true
  end
end
