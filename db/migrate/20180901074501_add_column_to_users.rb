class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :name, :string, default: "Noname"
  end
end
