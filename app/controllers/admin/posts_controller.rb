class Admin::PostsController < ApplicationController

  protect_from_forgery

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end
end
