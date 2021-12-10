class Post < ApplicationRecord
    has_many :comments
    validates_associated :comments
end
