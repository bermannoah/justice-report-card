class RemoveScoreFromSubcategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :subcategories, :score, :integer
  end
end
