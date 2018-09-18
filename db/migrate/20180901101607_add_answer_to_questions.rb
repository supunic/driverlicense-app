class AddAnswerToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :answer, :boolean, default: false, null: false
  end
end
