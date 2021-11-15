class AddColumnPeakIdInModelPeaks < ActiveRecord::Migration[6.1]
  def change
    add_column :peaks,:peak_id ,:integer
  end
end
