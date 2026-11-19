class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.expect(question: [:content])
  end

end
