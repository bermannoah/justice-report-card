FactoryGirl.define do
  factory :issue do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Description #{n}" }
  end
end
