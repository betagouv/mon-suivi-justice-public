VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.ignore_localhost = true
  config.before_record do |i|
    i.response.body.force_encoding("UTF-8")
  end
  config.filter_sensitive_data("<API_KEY>") do
    Rails.application.credentials.dig(:send_in_blue, :api_key)
  end
end
