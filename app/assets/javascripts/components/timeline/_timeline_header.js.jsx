var TimelineHeader = React.createClass({
  render: function() {
    return (
      <div className="timeline-header">
        <div className="timeline-name">{ this.props.name }</div>
      </div>
    )
  }
});
