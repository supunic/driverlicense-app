class AddAnswerLogToTorves < ActiveRecord::Migration[5.1]
  def change
    add_column :torves, :answer_log, :boolean, default: false, null: false
  end
end
