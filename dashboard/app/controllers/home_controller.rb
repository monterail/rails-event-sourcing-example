class HomeController < ApplicationController
  def index
    @posts = RecentPosts.list
    @page_views = PageViews.stats
  end
end
