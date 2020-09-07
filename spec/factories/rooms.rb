FactoryBot.define do
  factory :room do
    name {Faker::Team.name}
    content {Faker::Lorem.sentence}
  end
end