source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'
gem 'sqlite3'

group :development, :test do
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'factory_bot', '4.11.1'
  gem 'faker', '1.9.1'
  gem 'rspec-rails', '3.8.1'
  gem 'rubocop', '0.59.2'
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

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]