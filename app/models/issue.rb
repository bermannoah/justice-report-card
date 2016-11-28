class Issue < ApplicationRecord
  has_many :categories
  has_many :legislations
end
