class TagsController < ApplicationController
  def show
    tag = Tag.find_by(name: params[:name])
    @posts = tag.posts
    @tag_name = params[:name]
    render :show
  end
end