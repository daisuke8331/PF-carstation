class Admin::PostsController < ApplicationController

  protect_from_forgery

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    posts = Post.find(params[:id])
    posts.destroy
    redirect_to '/admin/posts'
  end
end
