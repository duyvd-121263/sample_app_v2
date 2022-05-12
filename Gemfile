source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

gem "rails", "~> 6.1.6"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "sass-rails", ">= 6"
gem "jbuilder", "~> 2.7"

gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "rack-mini-profiler", "~> 2.0"
  gem "listen", "~> 3.3"
  gem "spring"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", ">= 4.0.0.rc1"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
