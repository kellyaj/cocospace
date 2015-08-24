module Services::Fitness::Data
  class RetrievesResource
    extend LightService::Organizer

    def self.for(url, access_token)
      with({
        :url          => url,
        :access_token => access_token
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
