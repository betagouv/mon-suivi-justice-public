source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.4"

gem "rails", "~> 7.1"

gem "jsbundling-rails", "~> 1.3"
gem "cssbundling-rails", "~> 1.4"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.5.9"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.4.3"

# Needed by Spina
gem "sprockets-rails", "~> 3.5.2"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 1.5.0"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "~> 1.3.4"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 5.3.0"

gem "rails-i18n", "~> 7.0.8"

gem "spina", "~> 2.18.0"

gem "sidekiq-failures", "~> 1.0.4"
gem "sidekiq", "~> 7.3.2"

gem "highline", "~> 3.1.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "~> 1.2", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.18.4", require: false

gem "sentry-ruby", "~> 5.18.0"
gem "sentry-rails", "~> 5.18.2"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.13.0"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.9.2", platforms: %i[mri mingw x64_mingw]

  gem "brakeman", "6.2.2"
  gem "standard", "~> 1.41.1"

  gem "rspec-rails", "~> 7.0.1"

  gem "factory_bot_rails", "~> 6.4", ">= 6.4.3"
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
  gem "capybara", "~> 3.40.0"
  gem "selenium-webdriver", "~> 4.25.0"
  gem "webdrivers", "~> 5.2.0"
end
