FactoryGirl.define do
  factory :event do
    sequence(:name) {|n| "Event #{n}" }
    category
    venue

    trait :in_the_future do
      starts_at { 2.days.from_now }
      ends_at { 3.days.from_now }
    end

    trait :in_the_past do
      starts_at { 2.days.ago }
      ends_at { Time.now }
    end

    trait :published do
      publish true
      published_at { Time.now }
    end
  end
end