class Author < ApplicationRecord
    has_many :Categories,through: :post
end
