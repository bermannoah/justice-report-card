class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :subcategory_scores

  def score(state)
    binding.pry
  end
end
