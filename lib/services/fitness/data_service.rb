module Services
  module Fitness
    class DataService

      def self.make_request(url, access_token)
        Services::Fitness::Data::RetrievesResource.for(url, access_token).response
      end

      def self.get_profile_data(access_token, user_id="-")
        url = "https://api.fitbit.com/1/user/#{user_id}/profile.json"

        make_request(url, access_token)
      end

      def self.get_lifetime_activities(access_token, user_id="-")
        url = "https://api.fitbit.com/1/user/#{user_id}/activities.json"

        make_request(url, access_token)
      end

      def self.todays_activities(access_token, user_id="-")
        formatted_date = format_date(Time.current.in_time_zone("America/Los_Angeles"))
        url = "https://api.fitbit.com/1/user/#{user_id}/activities/date/#{formatted_date}.json"

        make_request(url, access_token)
      end

      def self.activities_for_date(access_token, date, user_id="-")
        url = "https://api.fitbit.com/1/user/#{user_id}/activities/date/#{format_date(date)}.json"

        make_request(url, access_token)
      end

      private

      def self.format_date(date)
        date.strftime("%Y-%m-%d")
      end

    end
  end
end
