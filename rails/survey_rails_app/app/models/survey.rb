class Survey < ApplicationRecord
	has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions 
  #validations
  validates :name, presence: true 
  validates :name, uniqueness: true
end
