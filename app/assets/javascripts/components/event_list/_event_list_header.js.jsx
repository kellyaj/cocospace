var EventListHeader = React.createClass({
  render: function() {
    return (
      <div className="event-list-header">
        <div className="event-list-name">{ this.props.name }</div>
      </div>
    )
  }
});
