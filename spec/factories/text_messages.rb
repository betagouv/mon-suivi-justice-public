FactoryBot.define do
  factory :text_message do
    message_id { "123" }
    content { "MyText" }
    phone { "+33666666666" }
  end
end
