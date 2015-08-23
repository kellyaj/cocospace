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
    return this.props.patch.replace(/[\n\r\↵]/g, "<br />");
  },

  render: function() {
    return (
      <div className="pr-file-card">
        <div className="file-card-header">
          {this.props.filename}
        </div>
        <div className="file-card-patch">
          <div dangerouslySetInnerHTML={{__html: this.presentPatch()}}></div>
        </div>
      </div>
    )
  }

});
