class Account < ApplicationRecord
    belongs_to :supplier
    validates :account_num ,presence: true
    validates :account_num ,uniqueness: true
end
