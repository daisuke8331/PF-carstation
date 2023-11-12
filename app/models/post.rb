class Post < ApplicationRecord
  #アソシエーション
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :customer
  
  #ActiveStorage
  has_one_attached :image
end
