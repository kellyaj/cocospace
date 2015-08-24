module Services::Fitness::Data
  class RetrievesProfile
    extend LightService::Organizer

    def self.for(access_token)
      with({
        :access_token => access_token,
        :url          => "https://api.fitbit.com/1/user/-/profile.json"
      }).reduce(actions)
    end

    def self.actions
      [
        BuildsAuthorizationHeaderAction,
        RequestsDataAction
      ]
    end
  end
end
