var Event = React.createClass({
  presentDateTime: function(rawDate) {
    var rawDate = new Date(rawDate);
    var minutes = ('0' + rawDate.getMinutes()).slice(-2);
    return date = rawDate.getHours() + ":" + minutes + " on " + (rawDate.getMonth() + 1) + "/" + rawDate.getDate() + "/" + rawDate.getFullYear()
    return date;
  },

  render: function() {
    datetime = this.presentDateTime(this.props.datetime);
    return (
      <div className="event">
        <div className="event-icon"></div>
        <div className="event-details">
          <div className="event-header">
            <h3 className="event-title">{this.props.title}</h3>
            <h3 className="event-datetime">{datetime}</h3>
          </div>
          <div className="event-description">{this.props.description}</div>
        </div>
      </div>
    )
  }
});
