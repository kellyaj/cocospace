var PullRequestDetail = React.createClass({
  propTypes: {
    pullRequest: React.PropTypes.object
  },

  getInitialState: function() {
    return { pullRequest: {} }
  },

  render: function() {
    console.log(this.props.pullRequest);
    return (
      <div className="pr-detail-container">
        <PullRequestFileList files={this.props.pullRequest.files}/>
      </div>
    )
  }

});
