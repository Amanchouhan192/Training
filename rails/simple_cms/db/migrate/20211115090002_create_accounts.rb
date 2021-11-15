class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :acnt_number

      t.timestamps
    end
  end
end
