FactoryGirl.define do
  factory :state do
    sequence(:name) { |n| "State Name #{n}" }
  end
end
