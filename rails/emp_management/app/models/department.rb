class Department < ApplicationRecord
    has_many :employees, dependent: :destroy
end
