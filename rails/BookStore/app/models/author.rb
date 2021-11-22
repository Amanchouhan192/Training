class Author < ApplicationRecord
    has_many :books
    validates :name, presence: true # author has name if he/she has a book published
    validates_associated :books
end
