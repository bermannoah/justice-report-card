class State < ApplicationRecord
  has_many :subcategory_scores
  belongs_to :division
  validates :name, presence: true, uniqueness: true
  validates :division_id, presence: true

  def percent_complete(issue)
    scored = self.subcategory_scores
                 .count { |score| score.issue == issue }
    available = Subcategory.joins(:category)
                           .where(:categories => {issue_id:  issue.id})
                           .count
    ((scored.to_f/available.to_f) * 100.0).round(0).to_s + "%"
  end
end
