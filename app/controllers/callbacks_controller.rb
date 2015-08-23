class CallbacksController < ApplicationController
  def fitbit
    auth_result = Services::Fitness::AuthorizationService.request_token(params[:state], params[:code])

    session[:access_token]  = auth_result["access_token"]
    session[:refresh_token] = auth_result["refresh_token"]
    session[:user_id]       = auth_result["user_id"]

    # getting tokens, where to go from here?
  end
end
