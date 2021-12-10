class AddAuthRefInBook < ActiveRecord::Migration[6.1]
  def change
    add_reference :books ,:author , foreign_key: true
  end
end
