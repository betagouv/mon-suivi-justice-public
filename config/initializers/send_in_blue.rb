SibApiV3Sdk.configure do |config|
  config.api_key["api-key"] = Rails.application.credentials.dig(:send_in_blue, :api_key)
  config.api_key["partner-key"] = Rails.application.credentials.dig(:send_in_blue, :api_key)
end
