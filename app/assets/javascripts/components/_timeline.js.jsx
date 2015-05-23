var Timeline = React.createClass({
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
        this.setState({ posts: data});
      }.bind(this)
    });
  },

  render: function() {
    return (
      <div className="timeline">
        <TimelineHeader name={this.state.timeline.name} />
        <TimelinePostList posts={this.state.posts} />
        <TimelinePostForm form={this.state.form} timelineId={this.state.timeline.id} onPostSubmit={this.handlePostSubmit} />
      </div>
    )
  }
});
