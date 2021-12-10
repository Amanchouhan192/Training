class AccountHistory < ApplicationRecord
    belongs_to :account
    validates :credit_rating,presence: true
end
