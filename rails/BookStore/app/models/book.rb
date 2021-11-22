class Book < ApplicationRecord
    belongs_to :author
    #validates :name, presence: true # book has a name 
end
