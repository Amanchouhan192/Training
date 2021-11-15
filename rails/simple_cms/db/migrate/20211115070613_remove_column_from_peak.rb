class RemoveColumnFromPeak < ActiveRecord::Migration[6.1]
  def change
    remove_column :peaks, :peak_id
  end
end
