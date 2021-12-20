class Author < ApplicationRecord
    has_many :books , -> { order(created_at: :desc) }
    validates :name , presence: true
    def name
        "I am #{name}"
    end

end
