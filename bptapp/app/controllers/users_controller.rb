
class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def show
    @user = User.find(params[:id])
  end


  def create 
    @user = User.new(params.require(:user).permit(:first, :last, :email, :password, :latitude, :longitude, :maps_ids => []))
      if @user.save
        log_in(@user)
        redirect_to root_path
      else
        render 'new'
      end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params.require(:user).permit(:latitude => [], :longitude => []))
      redirect_to root_path
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
