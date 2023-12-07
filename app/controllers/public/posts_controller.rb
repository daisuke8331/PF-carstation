class Public::PostsController < ApplicationController

  protect_from_forgery

  def index
    @categories = Category.all
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @customer = current_customer
    @post_comment = PostComment.new
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    tags = Vision.get_image_data(post_params[:image])
    @post.customer_id = current_customer.id
    if @post.save
      tags.each do |tag|
        @post.tags.create(name: tag)
      end
      redirect_to posts_path
    else
      render :new
    end

  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:customer_id, :category_id, :title, :image, :body)
  end
end