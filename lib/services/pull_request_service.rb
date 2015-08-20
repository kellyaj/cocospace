module Services
  class PullRequestService

    def self.test_prs
      [
        {
          title: "first pr!",
          created_at: Time.current.to_s,
          user: {
              login: "kellyaj",
              avatar_url: "https://avatars.githubusercontent.com/u/2367509?v=3"
          },
          files: [
            {
              additions: 2,
              filename: "Gemfile",
              sha: "6b52bc257a892fc8eaf2a681f6a42b1bf4ba0fe9",
              patch: "@@ -14,6 +14,8 @@ gem 'turbolinks'↵ gem 'jbuilder', '~> 2.0'↵ gem 'sdoc', '~> 0.4.0', group: :doc↵ gem 'react-rails'↵+gem 'github_api'↵+gem 'light-service'↵ ↵ gem 'bourbon'↵ gem 'neat'"
            },
            {
              additions: 29,
              filename: "pull_request_list",
              sha: "6b52bc257a892fc8eaf2a681f6a42b1bf4ba0fe9",
              patch: "@@ -0,0 +1,3 @@↵+<div class=\"outer-pr-container\">↵+  <%= react_component('PullRequestPresenter', {:pullRequests => @pull_requests}) %>↵+</div>"
            }
          ]
        },
        {
          title: "my other pr",
          created_at: Time.current.to_s,
          user: {
              login: "someone_else",
              avatar_url: "https://avatars.githubusercontent.com/u/2367509?v=3"
          },
          files: [
            {
              additions: 29,
              filename: "pull_request_list",
              sha: "6b52bc257a892fc8eaf2a681f6a42b1bf4ba0fe9",
              patch: "@@ -0,0 +1,22 @@↵+var PullRequestList = React.createClass({↵+  propTypes: {↵+    pullRequests: React.PropTypes.array↵+  },↵+↵+  getInitialState: function() {↵+    return { pullRequests: {} }↵+  },↵+↵+  render: function() {↵+    var pullRequestListCards = this.props.pullRequests.map(function(pullRequest) {↵+      return <PullRequestListCard title={pullRequest.title} user={pullRequest.user} created_at={pullRequest.created_at} />↵+    })↵+    return (↵+      <div className=\"pr-list-container\">↵+        <PullRequestListHeader />↵+        { pullRequestListCards }↵+      </div>↵+    )↵+  }↵+↵+});\"raw_url: \"https://github.com/kellyaj/cocospace/raw/34ab8e91f57ab7bffd8f5d89e1d5b0d3513e738d/app/assets/javascripts/components/pull_request_presenter/pull_request_list/pull_request_list.jsx\"sha: \"105d99f4d92b023b7270ed3c3eeca5b52f1ff4d0"
            }
          ]
        }
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
