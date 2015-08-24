module Services
  module Fitness
    class DataService

      def self.get_profile_data(access_token, user_id="-")
        url = "https://api.fitbit.com/1/user/#{user_id}/profile.json"
        Services::Fitness::Data::RetrievesResource.for(url, access_token).response
      end

      def self.get_lifetime_activities(access_token, user_id="-")
        url = "https://api.fitbit.com/1/user/#{user_id}/activities.json"
        Services::Fitness::Data::RetrievesResource.for(url, access_token).response
      end

    end
  end
end
