class CreateSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategories do |t|
      t.string :title
      t.text :description
      t.integer :score
      t.references :category
      
      t.timestamps
    end
  end
end
