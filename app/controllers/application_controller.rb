class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :current_list

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])

    else
      @current_user = nil
    end
  end

  def current_list
    @current_list ||= User.all.to_a
  end

end
