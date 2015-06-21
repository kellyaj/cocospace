var ChronologicalList = React.createClass({

  sortEvents: function(events) {
    return _.sortBy(events, function(event) { return event.datetime });
  },

  render: function() {
    var sortedEvents = this.sortEvents(this.props.events);
    var eventNodes = sortedEvents.map(function(event) {
      return <Event datetime={event.datetime} title={event.title} description={event.description} />
    });
    return (
      <div className="sorted-event-list">
        {eventNodes}
      </div>
    )
  }
});
