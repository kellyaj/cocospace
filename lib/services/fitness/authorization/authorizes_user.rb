module Services::Fitness::Authorization
  class BuildsFitbitAuthorizationUrl
    extend LightService::Organizer

    def self.for(user, repo, pr_number)
      with({
        :user => user,
        :repo => repo,
        :pr_number => pr_number
      }).reduce(actions)
    end

    def self.actions
      [
      ]
    end
  end
end
