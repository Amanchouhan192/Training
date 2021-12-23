class Question < ApplicationRecord
    belongs_to :survey
    has_many :answers
    attr_accessor :content, :survey_id, :answers_attributes
    accepts_nested_attributes_for :answers, allow_destroy: true
end
