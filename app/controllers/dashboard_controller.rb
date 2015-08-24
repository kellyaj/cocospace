class DashboardController < ApplicationController
  def index
    @profile = Services::Fitness::DataService.get_profile_data(session[:access_token])
  end
end
