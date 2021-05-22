class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  has_many :posts
  has_many :comments
end
