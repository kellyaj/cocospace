class PullRequestsController < ApplicationController

  def index
    @pull_requests = Services::PullRequestService.test_prs
  end

end
