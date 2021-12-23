class AddQuestionRefToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :answers, :question, foreign_key: true
  end
end
