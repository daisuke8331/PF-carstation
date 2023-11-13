class Public::PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_customer.id
    @post.save
    redirect_to_posts_path
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :body)
  end
end
