class CreateFields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.string :field_name
      t.string :field_code
      t.boolean :temporary, default: false, null: false
    end
  end
end
