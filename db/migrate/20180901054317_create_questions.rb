class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.integer :answer
      t.text :explanation
      t.string :field

      t.timestamps
    end
  end
end
