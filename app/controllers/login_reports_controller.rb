class LoginReportsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create
    require 'pry'
    reports = JSON.parse(request.body.read)
    reports.each do |report|
      LoginReport.create(report)
    end
    # return nothing security reasons
    head :ok
  end

end
