class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @fields = Field.all
    @temporary = @fields.where(id: 1..16)
    @temporary_test = @fields.where(id: 17..19)
    @main = @fields.where(id: 20..34)
    @main_test = @fields.where(id: 35..36)
  end

  def devide
    @devide_questions = Question.where(field_id: params[:id]).page(params[:page])
    gon.devide_questions = @devide_questions
  end
end
