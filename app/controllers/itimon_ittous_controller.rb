class ItimonIttousController < ApplicationController
  protect_from_forgery except: :show
  def index
    @questions = Question.where(field_id: 1..16) + Question.where(field_id: 20..34)
    gon.questions = @questions

    @fields = Field.where(id: 1..16) + Field.where(id: 20..34)
    gon.fields = @fields

    @count = 0
    gon.count = @count

    if user_signed_in?
      @torves = Torf.all.where(user_id: current_user.id)
      gon.torves = @torves
    end

    gon.result = {}
  end

  def show
    if user_signed_in?
      @questions = params[:questions]
      results = params[:result]
      results.each {|key, value|
        answer_record = Torf.where(user_id: current_user.id).where(question_id: key)
        if answer_record.exists?
          answer_record.update(answer_log: value)
        else
          Torf.create(user_id: current_user.id, question_id: key, answer_log: value)
        end
      }
    end
  end

end
