class AddColumnInPersonModel < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :card_number, :string
    add_column :people, :payment_type, :string
  end
end
