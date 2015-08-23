module Services::Fitness::Authorization
  class BuildsFitbitAuthUrlAction
    extend LightService::Action
    promises :auth_url

    executed do |context|
      context.auth_url = build_fitbit_auth_url
    end

    private

    def self.redirect_uri
      "http://localhost:3000/callbacks/fitbit"
    end

    def self.one_month_expiration
      2592000
    end

    def self.scopes
      "activity"
    end

    def self.generate_state_token
      "zxcv1491"
    end

    def self.auth_params
      {
        :client_id     => ENV["FITBIT_CLIENT_ID"],
        :response_type => "code",
        :scope         => scopes,
        :redirect_uri  => redirect_uri,
        :expires_in    => one_month_expiration,
        :state         => generate_state_token
      }.to_param
    end

    def self.build_fitbit_auth_url
      base_url = ENV["FITBIT_AUTH_URI"]
      "#{base_url}?#{auth_params}"
    end

  end
end
