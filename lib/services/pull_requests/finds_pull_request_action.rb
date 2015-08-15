module Services::PullRequests
  class FindsPullRequestAction
    extend LightService::Action
    expects :user, :repo, :pr_number
    promises :pull_request

    executed do |context|
      context.pull_request = Github.pull_requests.get(context.user, context.repo, context.pr_number)
    end
  end
end
