var TasklineCalendar = React.createClass({

  render: function() {
    return (
      <div className="taskline-calendar-container">
        <WeekDayTitles />
        <WeekRow />
      </div>
    )
  }
});
