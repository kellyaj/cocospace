module Services::Fitness::Authorization
  class RequestsToken
    extend LightService::Organizer

    def self.for(code)
      with({
        :auth_user     => ENV["SENSU_API_USERNAME"],
        :auth_password => ENV["SENSU_API_PASSWORD"],
      }).reduce(actions)
    end

    def self.actions
      [
        ::Shared::BuildsAuthStringAction,
      ]
    end
  end
end
