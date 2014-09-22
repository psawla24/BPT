
class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def show
    @user = User.find(params[:id])
  end


  def create 
    @user = User.new(params.require(:user).permit(:first, :last, :email, :password, :avatar, :avatar1, :avatar2, :avatar3, :avatar4, :avatar5, :avatar6))
      if @user.save
#        log_in(@user)
        redirect_to new_session_path
      else
        render 'new'
      end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params.require(:user).permit(:avatar, :avatar1, :avatar2, :avatar3, :avatar4, :avatar5, :avatar6))
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end
end






=begin


class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create 
    @user = User.new(params.require(:user).permit(:first, :last, :email, :password))
      if @user.save
       
       sleep 10

          begin
            user = User.find_by_email!(params[:email])
          end

          if user && true
            log_in(user)
            redirect_to root_path
          else
            nil
          end

      else
        render 'new'
      end
  end
end



=end
