FactoryBot.define do
  factory :convict do
    email { "convict@example.com" }
    password { "example" }
    password_confirmation { "example" }
    msj_id { 1 }
    phone { "+33666666666" }
  end
end
