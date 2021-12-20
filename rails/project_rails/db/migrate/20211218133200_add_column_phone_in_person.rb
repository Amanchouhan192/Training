class AddColumnPhoneInPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :phone, :string
  end
end
