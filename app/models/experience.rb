class Experience < ApplicationRecord
  has_many :customers, dependent: :destroy
end
