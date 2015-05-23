var TimelinePost = React.createClass({
  render: function() {
    return (
      <div>
        <h4>{this.props.authorName}:</h4>
        <p>{this.props.message}</p>
      </div>
    )
  }
});
