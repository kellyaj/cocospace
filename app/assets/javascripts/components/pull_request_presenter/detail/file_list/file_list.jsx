var PullRequestFileList = React.createClass({
  propTypes: {
    files: React.PropTypes.array
  },

  getInitialState: function() {
    return { files: [] }
  },

  render: function() {
    console.log(this.props.files);
    var fileCards = this.props.files.map(function(file) {
      return <PullRequestFileCard filename={file.filename} patch={file.patch} sha={file.sha} />
    });
  // sort fileCards using scheme provided
    return (
      <div className="pr-file-list-container">
        { fileCards }
      </div>
    )
  }

});
