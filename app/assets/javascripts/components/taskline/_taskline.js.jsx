var Taskline = React.createClass({
  getInitialState: function() {
    return this.props.presenter
  },

  handlePostSubmit: function(formData, action) {
    $.ajax({
      data: formData,
      url: action,
      type: "POST",
      dataType: "json",
      success: function(data) {
        this.setState({ tasks: data});
      }.bind(this)
    });
  },

  render: function() {
    return (
      <div className="taskline-container">
        <div className="taskline">
          <TasklineHeader />
          <TaskForm taskUrl={this.props.taskUrl} spaceId={this.props.spaceId} onPostSubmit={this.handlePostSubmit} />
        </div>
      </div>
    )
  }
});
