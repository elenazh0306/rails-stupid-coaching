class Question < ApplicationRecord
  validates :content, presence: true
  before_save :set_answer

  private

  def set_answer
    self.answer =
      if content == "I am going to work"
        "Great!"
      elsif content.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end

end
