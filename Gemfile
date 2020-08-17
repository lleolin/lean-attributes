source 'https://rubygems.org'

gemspec

unless ENV['TRAVIS']
  gem 'yard', require: false
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.9',  require: nil
  gem 'pry',                       '~> 0.12.2'
  gem 'simplecov',                 '~> 0.19.0',  require: nil
  gem 'simplecov-html',            '~> 0.9.0',  require: nil
end
