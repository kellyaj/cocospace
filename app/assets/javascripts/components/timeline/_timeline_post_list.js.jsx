var TimelinePostList = React.createClass({
  render: function() {
    var postNodes = this.props.posts.map(function(post) {
      return <TimelinePost message={post.message} authorName={post.author_name} key={post.id} createdAt={post.created_at} />
    });
    return (
      <div className="posts-list">
        {postNodes}
      </div>
    )
  }
});
