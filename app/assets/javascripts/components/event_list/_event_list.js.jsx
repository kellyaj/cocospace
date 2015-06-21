var EventList = React.createClass({
  render: function() {
    var today = new Date();
    var tomorrow = new Date();
    tomorrow.setDate(tomorrow.getDate() + 1);
    var nextWeek = new Date();
    nextWeek.setDate(nextWeek.getDate() + 8);
    var nextMonth = new Date();
    nextMonth.setDate(nextMonth.getDate() + 33);
    var eventToday = {datetime: today, title: "Coco to groomers", description: "some stuff"}
    var eventTomorrow = {datetime: tomorrow, title: "Go To Costco", description: "dont forget towel"}
    var eventNextWeek = {datetime: nextWeek, title: "andrewco interview", description: "front door 11 e jackson"}
    var eventNextMonth = {datetime: nextMonth, title: "brown bear wash", description: "wash the car"}
    return (
      <div className="event-list-container">
        <div className="event-list">
          <EventListHeader name={"Events"} />
          <ChronologicalList events={[eventNextWeek, eventTomorrow, eventNextMonth, eventToday]} />
        </div>
      </div>
    )
  }
});
