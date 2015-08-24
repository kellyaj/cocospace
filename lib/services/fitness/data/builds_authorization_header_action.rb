module Services::Fitness::Data
  class BuildsAuthorizationHeaderAction
    extend LightService::Action
    expects :access_token
    promises :authorization_header

    executed do |context|
      context.authorization_header = "Bearer #{context.access_token}"
    end
  end
end
