class Twitter < ApplicationRecord
    has_many :comments, as: :commentable
end
