class AddColumnInBlogpost < ActiveRecord::Migration[6.1]
  def change
    add_column :blogposts, :body, :text 
  end
end
