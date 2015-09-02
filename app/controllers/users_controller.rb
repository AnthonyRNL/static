class UsersController < ApplicationController
  def create
		@user = User.create(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to posts_path
		else
			render template: "sessions/new"
		end
	end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    puts params
    if @user.update_attributes user_params
      flash[:notice] = "You is succesfully updated"
      redirect_to user_path
    else
      flash[:error] = @user.errors.full_messages[0]
      redirect_to user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :avatar)
  end
  end
