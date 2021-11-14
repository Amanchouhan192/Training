class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      #belongs_to :author   #this is belongs to author author
      t.timestamps
    end

end
