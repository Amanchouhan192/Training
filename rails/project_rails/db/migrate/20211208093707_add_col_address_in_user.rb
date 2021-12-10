class AddColAddressInUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users ,:address ,:string
  end
end
