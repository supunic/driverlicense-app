class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @fields = Field.all
    @temporary = @fields.where(temporary: true)
    @main = @fields.where(temporary: false)
  end

  def devide
    @devide_questions = Question.where(field_id: params[:id])
    gon.devide_questions = @devide_questions
  end
end
