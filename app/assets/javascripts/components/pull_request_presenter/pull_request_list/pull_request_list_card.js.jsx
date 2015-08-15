var PullRequestListCard = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    user: React.PropTypes.object,
    created_at: React.PropTypes.string
  },

  getInitialState: function() {
    return {
      title: "",
      user: {},
      created_at: ""
    }
  },

  render: function() {
    return (
      <div className="pr-list-card">
        <h2>{this.props.title}</h2>
        <div className="list-user-avatar">
          <img src={this.props.user.avatar_url} />
        </div>
        <p>{this.props.created_at} by {this.props.user.login}</p>
      </div>
    )
  }

});
