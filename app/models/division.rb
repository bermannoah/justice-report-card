class Division < ApplicationRecord
  belongs_to :region
  has_many :states
  validates :name, :region, presence: true
  validates :name, uniqueness: true
end
