class AddAccountRefToAccountHistory < ActiveRecord::Migration[6.1]
  def change
    add_reference :account_histories,:account,foreign_key: true
  end
end
