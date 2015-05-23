var Timeline = React.createClass({
  getInitialState: function() {
    console.log(this.props.presenter)
    return this.props.presenter
  },

  render: function() {
    return (
      <div className="timeline">
        <TimelineHeader name={this.state.timeline.name} />
        <TimelinePostList posts={this.state.timeline.posts} />
        <TimelinePostForm form={this.state.form} onPostSubmit={this.handlePostSubmit} />
      </div>
    )
  }
});
