class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(10)
    render :index
  end
end


