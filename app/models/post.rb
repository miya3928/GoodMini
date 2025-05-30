class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :liked_user, through: :likes, source: :users
end
