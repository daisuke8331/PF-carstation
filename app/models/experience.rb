class Experience < ApplicationRecord
  #アソシエーション
  has_many :customers, dependent: :destroy
end
