class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.integer :author_id
      t.integer :category_id
      
      t.timestamps
    end
  end
end
