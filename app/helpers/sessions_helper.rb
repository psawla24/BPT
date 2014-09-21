module SessionsHelper

  def log_in(user)
    cookies.permanent[:user_id] = user.id
    @current_user = user
  end

  def log_out
    cookies.delete(:user_id)
  end

  def logged_in?
    current_user ? true : false
  end

  # def current_user
  #   if logged_in?
  #     @current_user ||= User.find(cookies[:cookie_id])
  #   else
  #     nil
  #   end
  # end

  def current_user
    # Test if cookie exists
    if cookies[:user_id] 
      # Find user in DB only if @current_user does not exist
      @current_user ||= User.find(cookies[:user_id])
    else
      # Set to nil only if @current_user does not exist
      @current_user ||= nil
    end
  end

  def current_user=(user)
    @current_user = user 
  end

end


