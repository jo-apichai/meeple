FactoryBot.define do
  factory :game do
    name        { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    publisher
  end
end
