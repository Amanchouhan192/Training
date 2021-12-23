class Survey < ApplicationRecord
  attr_accessor :name, :questions_attributes
  #attr_accessible :name, :questions_attributes
  has_many :questions
  accepts_nested_attributes_for :questions
end