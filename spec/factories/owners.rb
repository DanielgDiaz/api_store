FactoryBot.define do
  factory :owner do
    email { Faker::Internet.email}
    password { Faker::Internet.password(min_length: 10, max_length: 20) }
    age { rand(20..100) }
  end
end
