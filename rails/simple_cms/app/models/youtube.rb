class Youtube < ApplicationRecord
    has_many :comments, as: :commentable
end
