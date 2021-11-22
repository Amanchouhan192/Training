class Book < ApplicationRecord
    belongs_to :author
    #validates :name, presence: true # book has a name 
    validates_associated :author
    validates :name, length: { minimum: 10}
    validates :name, length: { maximum: 100 }

    validates :published_date, absence: true
    

end
