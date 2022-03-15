FactoryBot.define do
  factory :convict do
    email { "convict@example.com" }
    password { "example" }
    password_confirmation { "example" }
  end
end
