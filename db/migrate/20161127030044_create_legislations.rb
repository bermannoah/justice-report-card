class CreateLegislations < ActiveRecord::Migration[5.0]
  def change
    create_table :legislations do |t|
      t.string :title
      t.text :description
      t.text :link
      t.references :issue, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
