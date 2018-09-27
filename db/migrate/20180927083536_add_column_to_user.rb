class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sex, :text
    add_column :users, :age, :text
  end
end
