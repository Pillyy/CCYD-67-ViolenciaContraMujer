class CreateAdvances < ActiveRecord::Migration[5.2]
  def change
    create_table :advances do |t|
      t.references :profile, foreign_key: true
      t.references :history, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
