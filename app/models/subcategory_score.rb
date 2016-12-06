class SubcategoryScore < ApplicationRecord
  belongs_to :subcategory
  belongs_to :state

  def title
    self.subcategory.title
  end

  def description
    self.subcategory.description
  end
end
