class AddPeakRefToGroup < ActiveRecord::Migration[6.1]
  def change
    add_reference :groupes,:peak ,foreign_key: true
  end
end
