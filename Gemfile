source "https://rubygems.org"

ruby "3.1.0"

gem "rails", "~> 7.1.4"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "kaminari"
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  gem 'rspec-rails'
end

group :development do
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
end
