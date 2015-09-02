class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :post
  has_secure_password
  validates :password_confirmation, presence: true
end
