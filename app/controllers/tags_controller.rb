class TagsController < ApplicationController
  def show
    @tag = Tag.find_by!(name: params[:name])  #will return a record not found if called with ! when data is not found
    @posts = @tag.posts
    #@tag_name = params[:name]
    render :show
  end
end