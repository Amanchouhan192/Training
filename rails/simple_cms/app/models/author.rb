class Author < ApplicationRecord
    
    #has_many :posts
    #methods that we get
    #author.post
    #author.posts<<() shovel a new post through author collection
    #author.posts.build

    #has many categories through post
    has_many :Categories,through: :post

    #author.categories
end
