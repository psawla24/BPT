class SessionsController < ApplicationController

  def new
  end

  def create
    flash[:error] = nil
  	begin
  	  user = User.find_by({email: params[:session][:email]})
    rescue
  	  flash[:error] = "Email Not Found!"
    end

    if user && user.authenticate(params[:session][:password])
  	  log_in(user)
  	  redirect_to root_path
    else
  	  flash[:error] ||= "Try Again!"
  	  render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to sessions_path
  end
  
end
