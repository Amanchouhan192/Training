class AddSurveyRefToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :survey, foreign_key: true
  end
end
