# encoding: UTF-8

require './app'

Tumblr.configure do |config|
  config.consumer_key = ENV['SPACE_INIT_TUMBLR_OAUTH_CONSUMER']
  config.consumer_sercret = ENV['SPACE_INIT_TUMBLR_OAUTH_SECRET']
  # add oauth secrets if posting needed
end

run Sinatra::Application
