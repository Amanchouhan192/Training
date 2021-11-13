class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
     # has_many :books, dependent: :destroy # dependent whenever author destroy all book automaticaly destroy
      t.timestamps
    end
  end
end
