class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :account_num
      t.belongs_to :supplier ,foreign_key: true
      t.timestamps
    end
  end
end
