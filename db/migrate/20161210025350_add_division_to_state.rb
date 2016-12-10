class AddDivisionToState < ActiveRecord::Migration[5.0]
  def change
    add_reference :states, :division, foreign_key: true
  end
end
