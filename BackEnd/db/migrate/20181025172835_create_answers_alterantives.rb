class CreateAnswersAlterantives < ActiveRecord::Migration[5.2]
  def change
    create_table :answers_alterantives do |t|
      t.references :history, foreign_key: true
      t.string :message
      t.integer :score

      t.timestamps
    end
  end
end
