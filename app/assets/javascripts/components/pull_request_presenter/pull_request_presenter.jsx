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
      </div>
    )
  }
});
