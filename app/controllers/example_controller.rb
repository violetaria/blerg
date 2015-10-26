class ExampleController < ApplicationController
  def hello
    render plain: "Hello, #{params[:name]}!"
  end
end
