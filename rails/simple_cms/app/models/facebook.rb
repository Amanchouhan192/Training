class Facebook < ApplicationRecord
    has_many :comments, as: :commentable
end
