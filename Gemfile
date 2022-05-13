source "https://rubygems.org"

git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "3.0.2"

gem "bootsnap", ">= 1.4.4", require: false
gem "bootstrap-sass", "3.4.1"
gem "jbuilder", "~> 2.7"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.6"
gem "sass-rails", ">= 6"

group :development, :test do
  gem "pry-rails"
end

group :development do
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", ">= 4.0.0.rc1"
  gem "webdrivers"
end

group :development, :test do
  gem "rubocop", "~> 1.26", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "rubocop-rails", "~> 2.14.0", require: false
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]