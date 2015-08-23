module Services::Fitness::Authorization
  class RequestsToken
    extend LightService::Organizer

    def self.for(code)
      with({
        :code         => code,
        :grant_type   => "authorization_code",
        :client_id    => ENV["FITBIT_CLIENT_ID"],
        :token_url    => "https://api.fitbit.com/oauth2/token",
        :redirect_uri => "http://localhost:3000/callbacks/fitbit"
      }).reduce(actions)
    end

    def self.actions
      [
        BuildsTokenRequestBodyAction,
        BuildsAuthStringAction,
        RequestsTokenAction
      ]
    end
  end
end
