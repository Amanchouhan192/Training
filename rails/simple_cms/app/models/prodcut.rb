class Prodcut < ApplicationRecord
    has_many :pictures, as: :imageable
end
