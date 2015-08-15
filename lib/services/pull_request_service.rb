module Services
  class PullRequestService

    def self.test_prs
      [
        Services::PullRequests::PresentsPullRequest.for("kellyaj", "cocospace", 1).data,
        Services::PullRequests::PresentsPullRequest.for("kellyaj", "cocospace", 2).data
      ]
    end

    private

    def self.retrieve_all
      Github.pull_requests.list(:user => "kellyaj", :repo => "cocospace").response
    end

  end
end
