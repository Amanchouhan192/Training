class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :animal_type 
      t.string :name
      t.string :vaccinated
      t.string :keeper

      #validates :animal_type, presence: true
      
      t.timestamps
    end
  end
end
