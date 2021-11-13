class AddColumnGenderInEmployee < ActiveRecord::Migration[6.1]
  def change
    add_column  :employees,:gender,:string
  end
end
