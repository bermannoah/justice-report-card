FactoryGirl.define do
  factory :issue do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
  end

  factory :category do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
    issue_id 1
  end

  factory :subcategory do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
    score 0
    category_id 1
  end
end
