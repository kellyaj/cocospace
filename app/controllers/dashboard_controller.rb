class DashboardController < ApplicationController
  def index
    @profile = Services::Fitness::DataService.get_profile_data(session[:access_token])
    @lifetime_activities = Services::Fitness::DataService.get_lifetime_activities(session[:access_token])
  end
end
