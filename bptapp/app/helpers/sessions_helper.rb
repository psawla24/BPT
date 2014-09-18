module SessionsHelper

  def log_in(user)
    cookies.permanent[:cookie_id] = user.id
    @current_user = user
  end

  def log_out
    cookies.delete(:cookie_id)
  end

  def logged_in?
    cookies[:cookie_id] ? true : false
  end

  def current_user
    if logged_in?
      @current_user ||= User.find(cookies[:cookie_id])
    else
      nil
    end
  end

  def current_user=(user)
    @current_user = user 
  end

end
