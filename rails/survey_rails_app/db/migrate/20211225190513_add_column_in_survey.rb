class AddColumnInSurvey < ActiveRecord::Migration[6.1]
  def change
    add_column :surveys, :name, :string
  end
end
