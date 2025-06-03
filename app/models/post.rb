class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  has_many :likes, dependent: :destroy
  has_many :liked_user, through: :likes, source: :users
end
