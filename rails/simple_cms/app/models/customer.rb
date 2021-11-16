class Customer < ApplicationRecord
    has_many :pictures, as: :imageable
end
