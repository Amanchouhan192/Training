class Supplier < ApplicationRecord
    has_one :account
    has_one :account_history, through: :account

    #valid association
    validates_associated :account
    validates_associated :account_history

    # Hard-coded message
    validates :name, presence: { message: "must be given please" }


end
