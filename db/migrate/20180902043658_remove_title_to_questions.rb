class RemoveTitleToQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :title, :string
  end
end
