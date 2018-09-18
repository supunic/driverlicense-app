module QuestionsHelper
  def choose_devide
    if action_name == 'show'
      devide_questions_path
    end
  end
end
