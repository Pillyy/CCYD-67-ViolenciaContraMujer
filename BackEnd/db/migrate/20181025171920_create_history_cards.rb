class CreateHistoryCards < ActiveRecord::Migration[5.2]
  def change
    create_table :history_cards do |t|
      t.references :history, foreign_key: true
      t.text :picture
      t.integer :order

      t.timestamps
    end
  end
end
