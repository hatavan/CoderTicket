FactoryGirl.define do
  factory :venue do
    sequence(:name) {|n| "Venue #{n}" }
    region
  end
end