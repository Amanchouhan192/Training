class AddColumnTitleInBlogpost < ActiveRecord::Migration[6.1]
  def change
    add_column :blogposts, :title, :string 
  end
end
