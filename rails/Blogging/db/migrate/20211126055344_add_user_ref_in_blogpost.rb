class AddUserRefInBlogpost < ActiveRecord::Migration[6.1]
  def change
    add_reference :blogposts,:user ,foreign_key: true
  end
end
