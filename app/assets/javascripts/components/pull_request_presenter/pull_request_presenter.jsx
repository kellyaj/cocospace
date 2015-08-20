var PullRequestPresenter = React.createClass({
  propTypes: {
    pullRequests: React.PropTypes.array
  },

  getInitialState: function() {
    return { pullRequests: {} }
  },

  render: function() {
    return (
      <div className="prp-container">
        <PullRequestList pullRequests={this.props.pullRequests} />
        <PullRequestDetail pullRequest={this.props.pullRequests[0]} />
      </div>
    )
  }
});
