# encoding: UTF-8

source 'https://rubygems.org'
ruby '2.1.1'

# core
gem 'sinatra', '1.4.3'
gem 'puma'
gem 'rake'
gem 'mongoid'
gem 'foreman'

gem 'therubyracer'

# db
gem 'sequel'
group :production, :test do
  gem 'pg'
end
group :development do
  gem 'sqlite3'
end

# assets
gem 'sinatra-assetpack'
gem 'yui-compressor', require: 'yui/compressor'

# templating
gem 'haml'
gem 'markdown'
gem 'sass'
gem 'json'

# monitoring
gem 'newrelic_rpm'

# apis
gem 'tumblr_client'

group :development, :test do
  gem 'rspec' # unit testing
  gem 'rubocop' # linting
end
