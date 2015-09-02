class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    @post = Post.find(params[:comment][:post_id])
    redirect_to post_path(@post)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(Comment.params)
    redirect_to post_path(@comment)
  end

  def delete
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to post_path
  end

  def show
    @comment = Comment.where({post_id: params[:id]})
    @user = User.find(@comment.user_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end


end
