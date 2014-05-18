class PostsController < ApplicationController
  def index
    @posts = Blog::Post.all
  end

  def show
    @post = Blog::Post.find(params[:id])
  end
end
