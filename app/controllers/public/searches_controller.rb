class Public::SearchesController < ApplicationController

  before_action :authenticate_customer!

  def search #キーワード検索する時
    @range = params[:range]

    if @range == "Customer"
      @customers = Customer.looks(params[:search], params[:word])
    else
      @posts = Post.looks(params[:search], params[:word])
    end
  end

  def category_search #カテゴリで並べる時
    @category_id = params[:category_id]
    @posts = Post.where(category_id: @category_id)
    #@categories = Category.all
  end


end
