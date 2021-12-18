class Book < ApplicationRecord
    belongs_to :author
    validates :title , presence: true
    validates :title , uniqueness: { message: "Book Title already exist!"}
    
end
