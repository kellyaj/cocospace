var TimelinePostForm = React.createClass({
  handleSubmit: function(event) {
    event.preventDefault()

    var authorName = this.refs.author_name.getDOMNode().value.trim();
    var message = this.refs.message.getDOMNode().value.trim();

    if (!message || !authorName) {
      return false;
    }

    var formData = $(this.refs.form.getDOMNode()).serialize();
    this.props.onPostSubmit(formData, this.props.form.action);

    this.refs.author_name.getDOMNode().value = authorName;
    this.refs.message.getDOMNode().value = "";
  },

  render: function() {
    return (
      <form ref="form" className="post-form" action={this.props.form.action} accept-charset="UTF-8" method="post" onSubmit={this.handleSubmit}>
        <div class="post-form-inputs">
          <p><input type="hidden" name="post[timeline_id]" value={this.props.timelineId} /></p>
          <p><input ref="author_name" name="post[author_name]" placeholder="Your name"  /></p>
          <p><input ref="message" name="post[message]" placeholder="Enter your message..."  /></p>
          <p><button className="btn-red" type="submit">Post</button></p>
        </div>
      </form>
    )
  }
});
