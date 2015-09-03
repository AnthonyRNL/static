class PostsController < ApplicationController

  layout 'application'
	before_action :logged_in_user, only: [:create, :destroy, :edit, :update]

	def index
			@posts = Post.order('upvote DESC')
	end

	def show
		@post = Post.find(params[:id])
		@user = User.find(@post.user_id)
		@comment = Comment.new
		@comments = Comment.where({post_id: params[:id]}, user_id: params[:user_id], avatar: params[:user_id])
	end

	def create
		user = current_user || User.find(1)
		#fills in the user_id portion of the post_params which is needed.
		@post = user.posts.create(post_params)
		redirect_to '/posts/'+@post[:id].to_s
	end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post[:user_id] == session[:user_id]
      post.update(post_params)
      redirect_to post_path
    else
      flash[:danger] = "YOU ARE NOT THE USER, BEGONE"
      redirect_to post_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post[:user_id] == session[:user_id]
      post.destroy
      redirect_to post_path
    else
      flash[:danger] = "YOU ARE NOT THE USER, BEGONE"
      redirect_to post_path
    end
  end

  def topten
    @posts = Post.order('updated_at DESC').first(10)
  end

	def new
		@post = Post.new
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :youtubefile, :soundcloudfile, :user_id, :upvote, :artist, :genre, :media_selection, :id)
	end

end
