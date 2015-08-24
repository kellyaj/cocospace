class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    Services::UserService.find_by_api_id(session[:user_id])
  end
end
