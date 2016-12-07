FactoryGirl.define do
  factory :legislation do
    sequence(:title) { |n| "State Title #{n}" }
    sequence(:description) { |n| "State Description #{n}" }
    link "http://example.com"
    level "state"
  end
end
