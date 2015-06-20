var Recipe = React.createClass({
  render: function() {
    return (
      <div className="recipe-container">
        <h3>{{this.props.name}}</h3>
        <IngredientList ingredients={this.props.ingredients} />
      </div>
    )
  }
});
