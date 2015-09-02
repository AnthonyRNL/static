class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :response
	
	before_save { self.upvote = 0 if self.upvote == nil }
end
