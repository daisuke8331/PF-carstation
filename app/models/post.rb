class Post < ApplicationRecord
  #アソシエーション
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :customer

  #ActiveStorage
  has_one_attached :image

  def get_image(width, height) #画像投稿用のアクション
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_fill: [width, height]).processed
  end

  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end

  def self.looks(search, word)
    if search == "perfect_match"
      @post = Post.where("title LIKE? OR body LIKE?","#{word}")
    elsif search == "forward_match"
      @post = Post.where("title LIKE? OR body LIKE?","#{word}%")
    elsif search == "backward_match"
      @post = Post.where("title LIKE OR body LIKE??","%#{word}")
    elsif search == "partial_match"
      @post = Post.where("title LIKE? or body LIKE?","%#{word}%","%#{word}%")
    else
      @post = Post.all
    end
  end

end
