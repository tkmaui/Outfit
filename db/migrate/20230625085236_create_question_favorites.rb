class CreateQuestionFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :question_favorites do |t|
      t.integer :customer_id
      t.integer :question_id
      t.timestamps
    end
  end
end
