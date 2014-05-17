class HomeController < ApplicationController
  def index
    @posts = [{:title => "Hello"}, {:title => "World"}]
  end
end
