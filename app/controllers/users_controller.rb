class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    user_validation
    @post_count = @user.posts.count
  end

  def create 
    @user = User.new(params.require(:user).permit(:first, :last, :email, :password))
      if @user.save
        log_in(@user)
        redirect_to user_path(@user)
      else
        render 'new'
      end 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params.require(:user).permit(:first, :last, :email, :avatar))
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  def user_validation
    if @user.id != current_user.id || current_user == nil
      redirect_to root_path
    end
  end
end

