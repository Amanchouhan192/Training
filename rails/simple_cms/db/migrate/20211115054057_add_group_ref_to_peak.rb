class AddGroupRefToPeak < ActiveRecord::Migration[6.1]
  def change
      add_reference :peaks,:groupe ,foreign_key: true
  end
end
