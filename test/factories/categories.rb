FactoryGirl.define do
  factory :category do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
    issue_id 1
  end
end
