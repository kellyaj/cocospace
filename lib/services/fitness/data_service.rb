module Services
  module Fitness
    class DataService

      def self.get_profile_data(access_token)
        url = "https://api.fitbit.com/1/user/-/profile.json"
        Services::Fitness::Data::RetrievesResource.for(url, access_token).response
      end

    end
  end
end
