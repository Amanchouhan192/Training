class AddAuthorRefToBook < ActiveRecord::Migration[6.1]
  def change
    add_reference :authors ,:book,foreign_key: true
  end
end
