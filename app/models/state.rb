class State < ApplicationRecord
  has_many :subcategory_scores
  validates :name, presence: true, uniqueness: true
end
