var FitnessDashboard = React.createClass({
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
      <div className="dashboard-container">
        <Overview totalDistance={this.props.totalDistance} />
      </div>
    )
  }
});
