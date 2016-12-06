class AddStateToLegislation < ActiveRecord::Migration[5.0]
  def change
    add_reference :legislations, :state, foreign_key: true
  end
end
