FactoryBot.define do
  factory :user do
    email { "dani@MyString.com" }
    age { 20 }
    password_digest { "MyString" }
  end
end
