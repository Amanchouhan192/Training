class CreateBlogposts < ActiveRecord::Migration[6.1]
  def change
    create_table :blogposts do |t|

      t.timestamps
    end
  end
end
