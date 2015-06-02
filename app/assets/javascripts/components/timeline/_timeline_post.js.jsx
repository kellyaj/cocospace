var TimelinePost = React.createClass({
  presentDateTime: function(rawDate) {
    var rawDate = new Date(rawDate);
    var minutes = ('0' + rawDate.getMinutes()).slice(-2);
    var date = rawDate.getHours() + ":" + minutes + " on " + (rawDate.getMonth() + 1) + "/" + rawDate.getDate() + "/" + rawDate.getFullYear()
    return date;
  },

  render: function() {
    datetime = this.presentDateTime(this.props.createdAt);
    return (
      <div className="post">
        <p className="post-message">{this.props.message}</p>
        <h4>
          <div className="post-signature">
            <div className="post-author">{this.props.authorName}</div>
            <div className="post-timestamp">{datetime}</div>
          </div>
        </h4>
      </div>
    )
  }
});
