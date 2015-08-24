module Services
  module Fitness
    class DataService

      def self.get_profile_data(access_token, user_id="-")
        make_request("#{base_url}/user/#{user_id}/profile.json", access_token)
      end

      def self.get_lifetime_activities(access_token, user_id="-")
        make_request("#{base_url}/user/#{user_id}/activities.json", access_token)
      end

      def self.todays_activities(access_token, user_id="-")
        formatted_date = format_date(Time.current.in_time_zone("America/Los_Angeles"))
        url = "#{base_url}/user/#{user_id}/activities/date/#{formatted_date}.json"

        make_request(url, access_token)
      end

      def self.activities_for_date(access_token, date, user_id="-")
        make_request("#{base_url}/user/#{user_id}/activities/date/#{format_date(date)}.json", access_token)
      end

      def self.activities_for_range(access_token, start_date, end_date, resource, user_id="-")
        formatted_start_date = format_date(start_date)
        formatted_end_date   = format_date(end_date)
        url = "#{base_url}/user/#{user_id}/activities/#{resource}/date/#{formatted_start_date}/#{formatted_end_date}.json"

        JSON.parse(make_request(url, access_token).body)
      end

      def self.create_log_entry_for(access_token, user, date)
        activities = activities_for_date(access_token, date)["summary"]
        Services::Fitness::Data::CreatesLogEntry.for(user, format_date(date), activities)
      end

      private

      def self.base_url
        "https://api.fitbit.com/1"
      end

      def self.make_request(url, access_token)
        Services::Fitness::Data::RetrievesResource.for(url, access_token).response
      end

      def self.format_date(date)
        date.strftime("%Y-%m-%d")
      end

    end
  end
end
