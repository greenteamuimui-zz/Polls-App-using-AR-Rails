class Response < ApplicationRecord
  validates :user_id, :answer_choice_id, presence: true

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

    has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    self.question.responses.where.not("responses.id = ?", self.id)
  end

  def respondent_already_answered?
    id = self.sibling_responses.pluck(:user_id)
    Response.exists?(user_id:id)
  end

  private
  def no_duplicate_response

  end
end
