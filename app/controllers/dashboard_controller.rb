class DashboardController < ApplicationController
  def index
    profile = Services::Fitness::DataService.get_profile_data(session[:access_token])
    lifetime_activities = Services::Fitness::DataService.get_lifetime_activities(session[:access_token])
    todays_activities = Services::Fitness::DataService.todays_activities(session[:access_token])
    @user_name = profile["user"]["fullName"]
    @lifetime_total = lifetime_activities["lifetime"]["total"]["distance"]
    @today_total = todays_activities["summary"]["distances"].detect { |d| d["activity"] == "total" }["distance"]
  end
end
