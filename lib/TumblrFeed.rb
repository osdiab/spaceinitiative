# encoding: utf-8

require 'tumblr_client'

# Methods for fetching posts from a tumblr feed
class TumblrFeed
  def initialize(site)
    @site = site
    @client = Tumblr::Client.new
  end

  def get(numPosts)
    @client.posts @site
  end
end
