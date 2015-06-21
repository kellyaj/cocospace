var EventList = React.createClass({

  getInitialState: function() {
    return this.props.presenter;
  },

  handleEventSubmit: function(formData, url) {
    $.ajax({
      data: formData,
      url: url,
      type: "POST",
      dataType: "json",
      success: function(data) {
        this.setState({ events: data});
      }.bind(this)
    });
  },

  render: function() {
    console.log(this.state.events);
    return (
      <div className="event-list-container">
        <div className="event-list">
          <EventListHeader name={"Events"} />
          <ChronologicalList events={this.state.events} />
        </div>
      </div>
    )
  }
});
