class RemoveAnswerQuestionFromQuestion < ActiveRecord::Migration[7.1]
  def change
    remove_column :questions, :answer_status, :boolean
  end
end
