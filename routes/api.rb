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

  get '/api/members.json' do
    require_lib 'models/Member'
    content_type :json
    members = Member.all
    payload = []
    members.each do |member|
      payload << { name: member.name,
                   id: member.id,
                   title: member.title,
                   image: member.image,
                   thumb: member.thumb,
                   bio: member.bio }
    end
    payload.to_json
  end
end
