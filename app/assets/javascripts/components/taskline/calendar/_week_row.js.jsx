var WeekRow = React.createClass({

  generateWeekRowCards: function() {
  },

  render: function() {
    var weekRowCards = this.generateWeekRowCards();
    return (
      <div className="week-row">
        <WeekRowCard />
      </div>
    )
  }
});
