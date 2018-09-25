class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id])
    all_questions_count = Question.count
    answers_count = Torf.where(user_id: current_user.id).count
    @answer_valuenow = answers_count.to_f / all_questions_count.to_f * 100
    collect_answers_count = Torf.where(user_id: current_user.id).where(answer_log: true).count
    @collect_answer_valuenow = collect_answers_count.to_f / all_questions_count.to_f * 100
    gon.answer_valuenow = @answer_valuenow
    gon.collect_answer_valuenow = @collect_answer_valuenow
  end
end
