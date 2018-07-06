class RemoveIdFromResponses < ActiveRecord::Migration[5.1]
  def change
    remove_column :responses, :question_id
    add_column :responses, :answer_choice_id, :integer, :null => false, :default => 0
  end
end
