FactoryGirl.define do
  factory :subcategory do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
    score 0
    category_id 1
  end
end
