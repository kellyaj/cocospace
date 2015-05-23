var TimelinePostForm = React.createClass({
  handleSubmit: function(event) {
    event.preventDefault()

    var authorName = this.refs.authorName.getDOMNode().value.trim();
    var message = this.refs.message.getDOMNode().value.trim();

    if (!message || !authorName) {
      return false;
    }

    var formData = $(this.refs.form.getDOMNode()).serialize();
    this.props.onPostSubmit(formData, this.props.form.action);

    this.refs.authorName.getDOMNode().value = "";
    this.refs.message.getDOMNode().value = "";
  },

  render: function() {
    return (
      <form ref="form" className="post-form" action={this.props.form.action} accept-charset="UTF-8" method="post" onSubmit={this.handleSubmit}>
        <p><input ref="authorName" name="post[author]" placeholder="Your name"  /></p>
        <p><input ref="message" name="post[message]" placeholder="Enter your message..."  /></p>
        <p><button type="submit">Post</button></p>
      </form>
    )
  }
});
