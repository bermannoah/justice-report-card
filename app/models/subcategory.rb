class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :subcategory_scores
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
