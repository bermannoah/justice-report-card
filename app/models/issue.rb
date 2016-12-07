class Issue < ApplicationRecord
  has_many :categories
  has_many :subcategories, through: :categories
  has_many :subcategory_scores, through: :subcategories
  has_many :legislations
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
