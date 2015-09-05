var Overview = React.createClass({
  propTypes: function() {
    totalDistance: React.PropTypes.string
  },

  getInitialState: function() {
    return {
      totalDistance: ""
    };
  },

  render: function() {
    return (
      <div className="overview-container">
      </div>
    )
  }
});
