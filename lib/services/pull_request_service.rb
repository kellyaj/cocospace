module Services
  class PullRequestService

    def self.test_prs
      [
        {title: "first pr!", user: { login: "kellyaj", avatar_url: "https://avatars.githubusercontent.com/u/2367509?v=3"}, created_at: Time.current.to_s},
        {title: "first pr!", user: { login: "kellyaj", avatar_url: "https://avatars.githubusercontent.com/u/2367509?v=3"}, created_at: Time.current.to_s}
       # Services::PullRequests::PresentsPullRequest.for("kellyaj", "cocospace", 1).data,
       # Services::PullRequests::PresentsPullRequest.for("kellyaj", "cocospace", 2).data
      ]
    end

    private

    def self.retrieve_all
      Github.pull_requests.list(:user => "kellyaj", :repo => "cocospace").response
    end

  end
end
