class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, through: :user
	
	before_save { self.upvote = 0 if self.upvote == nil }
end
