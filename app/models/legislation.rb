class Legislation < ApplicationRecord
  belongs_to :issue
  validates :title, :description, :link, :issue_id, :level, presence: true
  validates :link, url: true
  validates_inclusion_of :level, :in => %w( local state national )
  validates :title, uniqueness: true
end
