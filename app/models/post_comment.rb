class PostComment < ApplicationRecord
  #アソシエーション
  belongs_to :post
  belongs_to :customer
end
