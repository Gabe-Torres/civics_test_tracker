class CreateQuestion < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :answer
      t.boolean :answer_status

      t.timestamps
    end
  end
end
