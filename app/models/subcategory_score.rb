class SubcategoryScore < ApplicationRecord
  belongs_to :subcategory
  belongs_to :state
  validates :score, presence: true
  validates :subcategory_id, uniqueness: {scope: :state_id}

  def title
    self.subcategory.title
  end

  def description
    self.subcategory.description
  end
end
