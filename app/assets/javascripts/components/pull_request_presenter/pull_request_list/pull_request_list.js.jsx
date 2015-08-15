var PullRequestList = React.createClass({
  propTypes: {
    pullRequests: React.PropTypes.array
  },

  getInitialState: function() {
    return { pullRequests: {} }
  },

  render: function() {
    var pullRequestListCards = this.props.pullRequests.map(function(pullRequest) {
      return <PullRequestListCard title={pullRequest.title} user={pullRequest.user} created_at={pullRequest.created_at} />
    })
    return (
      <div className="pr-list-container">
        <PullRequestListHeader />
        { pullRequestListCards }
      </div>
    )
  }

});
