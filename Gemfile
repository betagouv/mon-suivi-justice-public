source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "7.0.8"

gem "webpacker", "~> 5.4.4"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.5.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.6.7"

# Needed by Spina
gem "sprockets-rails", "~> 3.4.2", ">= 3.4.2"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 1.4.0"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "~> 1.2.2"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.8.1"

gem "rails-i18n", "~> 7.0.8"

gem "spina", "~> 2.16.0"

gem "highline", "~> 2.1.0"

gem "devise", "~> 4.9.3"
gem "devise-i18n", "~> 1.11.0"
gem "devise_invitable", "~> 2.0.9"
gem "devise-security", "~> 0.18.0"

gem "phony_rails", "~> 0.15.0"

gem "sib-api-v3-sdk", "~> 8.1.0"

gem "sidekiq-failures", "~> 1.0.4"
gem "sidekiq", "~> 7.1.4"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "~> 1.2", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.16.0", require: false

gem "sentry-ruby", "~> 5.11.0"
gem "sentry-rails", "~> 5.11.0"

gem "faraday", "~> 2.8.1"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.12.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.8.0", platforms: %i[mri mingw x64_mingw]

  gem "brakeman", "5.4.1"
  gem "standard", "~> 1.31.1"

  gem "rspec-rails", "~> 5.1.2"

  gem "factory_bot_rails", "~> 6.2.0"
  gem "shoulda-matchers", "~> 5.3.0"

  gem "timecop", "~> 0.9.8"

  gem "webmock", "~> 3.19.1"
  gem "vcr", "~> 6.2.0"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", "~> 4.2.1"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", "~> 3.39.2"
  gem "selenium-webdriver", "~> 4.13.1"
  gem "webdrivers", "~> 5.2.0"
end
