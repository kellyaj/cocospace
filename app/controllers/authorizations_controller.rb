class AuthorizationsController < ApplicationController
  def fitbit
    @fitbit_auth_url = Services::Fitness::AuthorizationService.build_auth_url
  end
end
