class RemoveAnswerToQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :answer, :string
  end
end
