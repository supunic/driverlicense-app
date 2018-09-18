class AddFieldIdToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :field_id, :integer
  end
end
