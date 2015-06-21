var EventForm = React.createClass({

  componentDidMount: function() {
    $('[data-id=datepicker]').datepicker();
  },

  render: function() {
    return (
        <div className="event">
          <div className="event-icon"></div>
          <div className="event-details">
            <div className="event-header">
              <input type="text" className="new-event-title" placeholder="New Event"/>
              <div data-id='datepicker'></div>
            </div>
            <input type="text" className="new-event-description" placeholder="Event description" />
          </div>
        </div>
    )
  }

});
