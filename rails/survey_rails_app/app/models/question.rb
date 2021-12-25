class Question < ApplicationRecord
	belongs_to :survey
    has_many :answers
    accepts_nested_attributes_for :answers, allow_destroy: true
end
