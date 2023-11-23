class Public::PostsController < ApplicationController

  protect_from_forgery

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @customer = current_customer
    @post_comment = PostComment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.customer_id = current_customer.id
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:customer_id, :title, :image, :body)
  end
end