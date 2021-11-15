class Peak < ApplicationRecord
    belongs_to :peak
    has_one    :groupe
end
