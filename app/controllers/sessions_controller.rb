class SessionsController < ApplicationController

  def new
    # flash.clear
  end

  def create
    flash.clear
  	begin
  	  user = User.find_by({email: params[:session][:email]})
    rescue
  	  flash[:error] = "Email Not Found!"
    end

    if user && user.authenticate(params[:session][:password])
  	  log_in(user)
  	  redirect_to user_path(current_user)
    else
  	  flash[:error] ||= "Try Again!"
  	  render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to root_path
  end
  
end
