class Account < ApplicationRecord
    belongs_to :supplier
    has_one :account_history

    #validation numericality check
    validates :account_numebr, numericality: true

    validates :account_numebr, presence: true
end
