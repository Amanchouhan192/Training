class Game < ApplicationRecord
    has_one :peak
    has_one :groupe,through: :peak
end
