class Category < ApplicationRecord
  belongs_to :issue
  has_many :subcategories

  def score
    self.subcategories.average(:score).to_f.round(1)
  end
end
