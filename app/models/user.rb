class User < ApplicationRecord
  has_many :memberships
  has_many :teams, through: :memberships
  has_many :posts
  has_one :user_info
end
