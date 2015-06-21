var EventListHeader = React.createClass({

  addEvent: function() {
    this.props.handleAddEvent();
  },

  render: function() {
    return (
      <div className="event-list-header">
        <div className="event-list-name">{ this.props.name }</div>
        <button className="add-event-button" onClick={this.addEvent}>add event</button>
      </div>
    )
  }
});
