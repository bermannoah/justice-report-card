class Category < ApplicationRecord
  belongs_to :issue
  has_many :subcategories
  has_many :subcategory_scores, through: :subcategories
  validates :title, presence: true, uniqueness: true
  validates :description, :issue_id, presence: true

  def score(state)
    self.subcategory_scores
        .where(state_id: state.id)
        .average(:score)
        .to_f
        .round(1)
  end

  def subcategories_by_state(state)
    self.subcategory_scores.where(state: state)
  end
end
