class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      #belongs_to :author   #this is belongs to author author
      t.timestamps
    end
    create_table :publisher do |t|
      t.string :pub_house_name
      t.string :address
      t.timestamps
    end
  end

end
