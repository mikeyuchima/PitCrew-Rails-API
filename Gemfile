# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'
gem 'pg'
gem 'jwt'
gem 'dotenv-rails'
gem 'bcrypt'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker', '1.9.1'
  gem 'pry-rails'
  gem 'rspec-rails', '3.8.1'
  gem 'rubocop', '0.59.2'
  gem 'simplecov'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'shoulda-matchers', '4.0.0.rc1'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
