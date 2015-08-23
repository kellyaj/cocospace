module Services
  module Fitness
    class AuthorizationService

      def self.build_auth_url
        Authorization::BuildsFitbitAuthUrlAction.execute.auth_url
      end

      def self.request_token(state, code)
        if state_is_valid(state)
          Authorization::RequestsToken.for(code).response
        end
      end

      private

      def self.state_is_valid(state)
        state == "zxcv1491"
      end

      def self.creds
        puts ENV["FITBIT_CLIENT_KEY"]
        puts ENV["FITBIT_CLIENT_SECRET"]
        puts ENV["FITBIT_CLIENT_ID"]
        puts ENV["FITBIT_AUTH_URI"]
        puts ENV["FITBIT_TOKEN_URI"]
      end

    end
  end
end
