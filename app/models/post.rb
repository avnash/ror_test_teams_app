class Post < ApplicationRecord
  belongs_to :user
  has_many :post_likes
  has_many :users, through: :post_likes
  has_many :comments, as: :commentable
end
