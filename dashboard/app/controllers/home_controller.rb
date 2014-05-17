class HomeController < ApplicationController
  def index
    @posts = RecentPosts.list
  end
end
