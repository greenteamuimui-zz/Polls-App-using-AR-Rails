class AnswerChoice < ApplicationRecord
  validates :question_id, :choice_text, presence: true

  belongs_to :question,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question
end
