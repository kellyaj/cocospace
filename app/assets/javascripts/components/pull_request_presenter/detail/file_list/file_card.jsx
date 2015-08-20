var PullRequestFileCard = React.createClass({
  propTypes: {
    filename: React.PropTypes.string,
    patch: React.PropTypes.string,
    sha: React.PropTypes.string,
  },

  getInitialState: function() {
    return {
    filename: "",
    patch: "",
    sha: ""
    }
  },

  presentPatch: function() {
    var rawPatch = this.props.patch;
    return this.props.patch;
  },

  render: function() {
    return (
      <div className="pr-file-card">
        <div className="file-card-header">
          {this.props.filename}
        </div>
        <div className="file-card-patch">
          {this.presentPatch()}
        </div>
      </div>
    )
  }

});
