class Blogpost < ApplicationRecord
    def change
        create_table :blogpots do |t|
          t.string :title
          t.text :body
          t.timestamps
        end
end
