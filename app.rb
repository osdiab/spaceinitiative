# encoding: UTF-8

require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'
require 'sass'
require 'tumblr_client'
require 'newrelic_rpm'
require 'json'

# Space initiative application class
class App < Sinatra::Base
  ROOT = File.dirname(__FILE__)
  set :root, ROOT

  # Translates relative path of library to actual path, requires it
  def require_lib(path)
    path = path[1..-1] if path[0] == '/' # remove first letter if slash
    require_relative "#{ROOT}/lib/#{path}"
  end

  #################
  # Configuration #
  #################
  configure do
    set :tumblr_site, 'spaceinitiative.tumblr.com'
  end

  # SCSS
  set :scss, load_paths: ["#{App.root}/assets/css"]

  # Sinatra-assetpack
  register Sinatra::AssetPack
  assets do
    serve '/js', from: 'assets/js'
    serve '/css', from: 'assets/css'
    serve '/images', from: 'assets/images'

    js :app, '/js/app.js', [
      '/js/vendor/required/**/*.js',
      '/js/lib/**/*.js'
    ]

    css :app, [
      '/css/*.css'
    ]

    js_compression  :yui
    css_compression :yui
  end

  # Tumblr
  Tumblr.configure do |config|
    config.consumer_key = ENV['SPACE_INIT_TUMBLR_OAUTH_CONSUMER']
    config.consumer_secret = ENV['SPACE_INIT_TUMBLR_OAUTH_SECRET']
    config.oauth_token = ENV['SPACE_INIT_TUMBLR_OAUTH_TOKEN']
    config.oauth_token_secret = ENV['SPACE_INIT_TUMBLR_OAUTH_TOKEN_SECRET']
  end

  run! if app_file == $PROGRAM_NAME
end

require_relative 'routes/init'
