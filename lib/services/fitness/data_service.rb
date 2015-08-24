module Services
  module Fitness
    class DataService

      def self.get_profile_data(access_token)
        Services::Fitness::Data::RetrievesProfile.for(access_token).response
      end

    end
  end
end
