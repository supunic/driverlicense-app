class RemoveFieldToQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :field, :string
  end
end
