module Services::PullRequests
  class RetrievesFilesAction
    extend LightService::Action
    expects :user, :repo, :pr_number
    promises :files

    executed do |context|
      context.files = Github.pull_requests.files(context.user, context.repo, context.pr_number)
    end
  end
end
