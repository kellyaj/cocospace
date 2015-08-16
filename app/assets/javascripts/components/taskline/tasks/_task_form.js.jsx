var TaskForm = React.createClass({
  handleSubmit: function(event) {
    event.preventDefault()
    var formData = $(this.refs.form.getDOMNode()).serialize();
    this.props.onPostSubmit(formData, this.props.form.action);
  },

  render: function() {
    return (
      <form ref="form" className="task-form" action={this.props.form.action} method="post" onSubmit={this.handleSubmit}>
        <div class="task-form-inputs">
          <p><input type="hidden" name="task[space_id]" value={this.props.spaceId} /></p>
          <p><input ref="taskName" name="task[name]" placeholder="task name" /></p>
          <p><button className="" type="submit">Post</button></p>
        </div>
      </form>
    )
  }
});
