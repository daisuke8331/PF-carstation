class PostComment < ApplicationRecord
  belongs_to :post
  belongs_to :customer
  
  validates :comment, presence: true #空欄のままコメントを投稿できない設定
end
