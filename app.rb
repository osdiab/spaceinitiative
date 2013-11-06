# encoding: UTF-8

require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'
require 'sass'
require 'tumblr_client'
require 'newrelic_rpm'
require 'json'

# load all libs
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each do |file|
  require file
end

# Space initiative application class
class App < Sinatra::Base
  #################
  # Configuration #
  #################
  configure do
    set :tumblr_site, 'spaceinitiative.tumblr.com'
  end

  # SCSS
  set :scss, { load_paths: ["#{App.root}/assets/css"] }

  # Sinatra-assetpack
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack
  assets do
    serve '/js', from: 'assets/js'
    serve '/css', from: 'assets/css'
    serve '/images', from: 'assets/images'

    js :app, '/js/app.js', [
      '/js/vendor/*.js',
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

  #########
  # Pages #
  #########

  get '/' do
    haml 'pages/index'.to_sym, locals: { page: 'index' }
  end

  get '/learn' do
    haml 'pages/learn'.to_sym, locals: { page: 'learn' }
  end

  get '/discuss' do
    haml 'pages/discuss'.to_sym, locals: { page: 'discuss' }
  end

  get '/events' do
    haml 'pages/events'.to_sym, locals: { page: 'events' }
  end

  get '/act' do
    haml 'pages/act'.to_sym, locals: { page: 'act' }
  end

  get '/about' do
    haml 'pages/about'.to_sym, locals: { page: 'about' }
  end

  get '/mission' do
    haml 'pages/mission'.to_sym, locals: { page: 'mission' }
  end

  get '/contact' do
    haml 'pages/contact'.to_sym, locals: { page: 'contact' }
  end

  get '/about_site' do
    haml 'pages/about_site'.to_sym, locals: { page: 'aboutSite' }
  end

  #######
  # API #
  #######

  get '/api/tumblr/posts.json' do
    content_type :json
    feed = TumblrFeed.new(params[:uri])
    posts = feed.get(params[:num_posts])
    posts.to_json
  end

  run! if app_file == $PROGRAM_NAME
end
