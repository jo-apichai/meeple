FactoryBot.define do
  factory :publisher do
    name    { Faker::Company.name }
    website { Faker::Internet.url }
  end
end
