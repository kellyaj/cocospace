var PullRequestPresenter = React.createClass({
  propTypes: {
    pullRequests: React.PropTypes.array
  },

  getInitialState: function() {
    return { pullRequests: {} }
  },

  render: function() {
    console.log(this.props.pullRequests)
    return (
      <div className="prp-container">
        <PullRequestList pullRequests={this.props.pullRequests} />
      </div>
    )
  }
});
