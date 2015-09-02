class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, as: :response
  has_secure_password
  validates :password_confirmation, presence: true
end
