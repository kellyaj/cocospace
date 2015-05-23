var TimelinePost = React.createClass({
  presentDateTime: function(rawDate) {
    var rawDate = new Date(rawDate);
    var minutes = ('0' + rawDate.getMinutes()).slice(-2);
    var date = (rawDate.getMonth() + 1) + "/" + rawDate.getDate() + "/" + rawDate.getFullYear() + " at " + rawDate.getHours() + ":" + minutes
    return date;
  },

  render: function() {
    datetime = this.presentDateTime(this.props.createdAt);
    return (
      <div>
        <p>{this.props.message}</p>
        <h4>{this.props.authorName}, {datetime}</h4>
      </div>
    )
  }
});
