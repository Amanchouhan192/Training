class Instagram < ApplicationRecord
    has_many :comments, as: :commentable

end
