class AddColumnInCommentsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :name, :string
    add_reference :comments, :commentable, polymorphic: true, index: true
  end
end
