FactoryBot.define do
  factory :item do
    sequence(:name) { |i| "Name#{i}" }
  end
end
