class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :name
      t.text :picture
      t.string :question

      t.timestamps
    end
  end
end
