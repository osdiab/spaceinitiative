# encoding: UTF-8

# API routes
class App < Sinatra::Base
  get '/api/tumblr/posts.json' do
    require_lib 'TumblrFeed'

    content_type :json
    feed = TumblrFeed.new(params[:uri])
    posts = feed.get(params[:num_posts])
    posts.to_json
  end
end
