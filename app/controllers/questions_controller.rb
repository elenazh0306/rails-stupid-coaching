class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].to_s.strip
    @answer = Coach.reply_to(@question)
  end
end
