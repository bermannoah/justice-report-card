class CreateSubcategoryScores < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategory_scores do |t|
      t.references :subcategory, foreign_key: true
      t.references :state, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
