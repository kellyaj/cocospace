module Services
  module Fitness
    class DataService

      def self.creds
        #::Authorization::AuthorizesUser.for()
        puts ENV["FITBIT_CLIENT_KEY"]
        puts ENV["FITBIT_CLIENT_SECRET"]
        puts ENV["FITBIT_CLIENT_ID"]
        puts ENV["FITBIT_AUTH_URI"]
        puts ENV["FITBIT_TOKEN_URI"]
      end

    end
  end
end
