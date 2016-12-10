class Division < ApplicationRecord
  belongs_to :region
  validates :name, :region, presence: true
  validates :name, uniqueness: true
end
