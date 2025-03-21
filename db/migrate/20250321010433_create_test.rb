class CreateTest < ActiveRecord::Migration[7.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.integer :number_correct
      t.integer :number_incorrect

      t.timestamps
    end
  end
end
