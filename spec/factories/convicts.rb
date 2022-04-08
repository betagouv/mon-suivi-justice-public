FactoryBot.define do
  factory :convict do
    email { "convict@example.com" }
    password { "exampleE1." }
    password_confirmation { "exampleE1." }
    msj_id { 1 }
    phone { "+33666666666" }
  end
end
