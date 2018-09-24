class RemoveFieldCodeToFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :fields, :field_code, :string
  end
end
