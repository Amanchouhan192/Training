class Blogpost < ApplicationRecord
     belongs_to :user
     #polymorphic associations
     has_many :comments, as: :commentable
end
